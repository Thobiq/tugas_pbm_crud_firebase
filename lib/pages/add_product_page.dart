import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import '../models/product.dart';
import '../services/product_service.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AddProductPage extends StatefulWidget {
  
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();
  File? _image;

  void _saveProduct() async {
  if (_formKey.currentState!.validate()) {
    // String imageUrl = '';

    // if (_image != null) {
    //   imageUrl = await _uploadImage(_image!);
    // }

    final product = Product(
      id: '',
      name: _nameController.text,
      price: double.parse(_priceController.text),
      stock: int.parse(_stockController.text)
      // imageUrl: imageUrl,
    );

    await ProductService().addProduct(product);
    Navigator.pop(context);
  }
}


  

  Future<void> _pickImage() async {
  final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (picked != null) {
    setState(() {
      _image = File(picked.path);
    });
  }
}

Future<String> _uploadImage(File image) async {
  final fileName = p.basename(image.path);
  final ref = FirebaseStorage.instance.ref().child('product_images/$fileName');
  await ref.putFile(image);
  return await ref.getDownloadURL();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama Produk'),
                validator: (value) => value!.isEmpty ? 'Wajib diisi' : null,
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: 'Harga'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Wajib diisi' : null,
              ),
              TextFormField(
                controller: _stockController,
                decoration: const InputDecoration(labelText: 'stok'),
                keyboardType: TextInputType.number,
                validator: (value)=> value!.isEmpty ? 'Wajib diisi' : null,
              ),
              const SizedBox(height: 20),
              if (_image != null)
                Image.file(_image!, height: 150),

              ElevatedButton.icon(
                onPressed: _pickImage,
                icon: const Icon(Icons.image),
                label: const Text('Pilih Gambar'),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: _saveProduct,
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}