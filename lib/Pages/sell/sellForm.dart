import 'package:ayshe/Pages/sell/image_input_api.dart';
import 'package:ayshe/categoryData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class SellForm extends StatefulWidget {
  const SellForm(Key key) : super(key: key);

  @override
  State<SellForm> createState() => _SellFormState();
}

class _SellFormState extends State<SellForm> {
  final _formKey = GlobalKey<FormState>();
  String? productName;
  String? categoryName;
  String? selectedCategory;
  String? description;
  String? address;
  String? phone;
  int? cost;
  bool accepted = false;
  Map? new_product;
  List? photos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 100,
          height: 60,
          child: SvgPicture.asset('assets/Logo.svg',
              width: 30, fit: BoxFit.contain),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Product Name
                FormBuilderTextField(
                  validator: (value) {
                    if (value == '') {
                      return 'Harydyn gysgacha adyny girizin!';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    productName = value;
                  },
                  decoration: InputDecoration(
                    label: const Text('Harydyň ady'),
                    hintText: 'Harydyň gysgaça ady',
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(132, 132, 132, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  name: 'product_name',
                ),

                const SizedBox(height: 15),

                // Choose Category
                FormBuilderDropdown(
                  items: List.generate(
                    categories.length,
                    (index) => DropdownMenuItem(
                      value: categories[index]['main'],
                      child: Text(categories[index]['main']),
                      onTap: () {
                        selectedCategory = categories[index]['main'].toString();
                      },
                    ),
                  ),
                  onChanged: (value) {
                    categoryName = value.toString();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    filled: true,
                    fillColor: Colors.white,
                    label: const Text('Kategoriýa'),
                  ),
                  name: 'categoryName',
                ),

                const SizedBox(height: 15),

                // Product Description Field
                FormBuilderTextField(
                  validator: (value) {
                    if (value == '') {
                      return 'Harydyn dusundirishini girizin';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    description = value;
                  },
                  decoration: InputDecoration(
                    label: const Text('Düşündiriş'),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    hintText: 'Doly ady, aýratynlygy, ýagdaýy...',
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(132, 132, 132, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  maxLength: 300,
                  maxLines: 8,
                  name: 'description',
                ),

                const SizedBox(height: 15),

                // cost field
                FormBuilderTextField(
                  validator: (value) {
                    if (value == '') {
                      return 'Bahasyny girizin';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    cost = int.parse(value!);
                  },
                  decoration: InputDecoration(
                    label: const Text('Bahasy'),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    hintText: 'Harydyn bahasy',
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(132, 132, 132, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  name: 'cost',
                ),

                const SizedBox(height: 15),

                // Address
                FormBuilderTextField(
                  name: "address",
                  onChanged: (value) {
                    address = value;
                  },
                  validator: (value) {
                    if (value!.trim() == '' || !value.contains(',')) {
                      return 'Adresde hersinin arasyny "," bilen bolmeli!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label: const Text('Address'),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    hintText: 'Welaýat, şäher, etrap',
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(132, 132, 132, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),

                // Image Field
                FormBuilderImagePicker(
                  name: 'photos',
                  displayCustomType: (obj) =>
                      obj is ApiImage ? obj.imageUrl : obj,
                  decoration: const InputDecoration(
                      labelText: 'Surat goş',
                      contentPadding: EdgeInsets.all(8)),
                  maxImages: 5,
                  previewMargin: const EdgeInsets.only(right: 8, top: 8),
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 15),

                // Phone Field
                FormBuilderTextField(
                  name: "phone",
                  onChanged: (value) {
                    phone = value;
                  },
                  validator: (value) {
                    if (value!.trim() == '' || !value.contains(',')) {
                      return 'Adresde hersinin arasyny "," bilen bolmeli!';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    label: const Text('Telefon nomer'),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    prefix: const Text('+993 '),
                    prefixStyle: const TextStyle(
                      color: Color.fromRGBO(16, 24, 40, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),

                // Conditions accepted checkbox field
                FormBuilderCheckbox(
                  name: "accepted",
                  title: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Düzgünnamany ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: 'okadym we kabul etdim',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  onChanged: (val) {
                    accepted = !accepted;
                  },
                  validator: (val) {
                    if (accepted != true) {
                      return 'Dowam etmezden düzgünnamalary kabul etmeli!';
                    } else {
                      return null;
                    }
                  },
                ),

                const SizedBox(height: 15),

                // Buttons
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            debugPrint(_formKey.currentState.toString());
                          } else {
                            new_product!
                                .update("productName", (value) => productName);
                            new_product!.update("cost", (value) => cost);
                            new_product!.update("isNew", (value) => true);
                            new_product!.update("imgs", (value) => photos);
                          }
                        },
                        child: const Text(
                          'Haryt goş',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          productName = '';
                          categoryName = '';
                          description = "";
                          address = "";
                          phone = "";
                          cost = null;
                          accepted = false;
                          _formKey.currentState?.reset();
                        },
                        // color: Theme.of(context).colorScheme.secondary,
                        child: Text(
                          'Reset',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
