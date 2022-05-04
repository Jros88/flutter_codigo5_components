import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String name = '';
  TextEditingController _nameController =
      TextEditingController(text: 'Raon juan');
  // Vaolor inicial que queremos
  TextEditingController _dateTimeController = TextEditingController();

  List<String> superheroes = ['Superman', 'Wonder Woman', 'Batman', 'Aquaman'];
  String valueAux = 'Superman';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputPage'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                textAlign: TextAlign.start,
                maxLength: 20,
                cursorColor: Colors.deepPurpleAccent,
                style: const TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  label: const Text('Corre electronico'),
                  hintText: 'Ingresa tu correo electronico',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                  icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.alternate_email),
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar producto',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 4.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 4.0,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mail),
                  prefixIcon: const Icon(Icons.check_circle_outline),
                  label: const Text('Buscar'),
                  hintText: 'Ingresa el producto a buscar...',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.deepPurpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 12,
                    offset: const Offset(4, 4),
                  )
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Buscar producto...',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black.withOpacity(0.37),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pinkAccent.withOpacity(0.4),
                              offset: const Offset(4, 4),
                              blurRadius: 7.0,
                            ),
                          ]),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                obscureText: isInvisible,
                decoration: InputDecoration(
                  hintText: 'Ingrese su contraseña',
                  suffixIcon: IconButton(
                    icon: isInvisible
                        ? const Icon(Icons.remove_red_eye)
                        : const Icon(
                            Icons.remove_red_eye_outlined,
                          ),
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: _nameController,
                //teclado olo numeros
                //keyboardType: TextInputType.number,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  label: Text(
                    'Ingresa tu nombre',
                  ),
                ),
                // onChanged: (String value) {
                //   name = value;
                // },
                // onTap: () {
                //   print('On TAP!');
                // },
              ),
              ElevatedButton(
                onPressed: () {
                  // print(name);
                  // print(_nameController.text);
                  getNameData();
                  _nameController.text = 'Juan';
                  setState(() {});
                },
                child: const Text('Mostrar valor!'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                //para dar estas funciones
                controller: _dateTimeController,
                toolbarOptions: const ToolbarOptions(
                  copy: false,
                  cut: false,
                  paste: false,
                  selectAll: false,
                ),
                // Solo Permite Leer/ no modificarlo
                readOnly: true,
                decoration: const InputDecoration(
                  hintText: 'Fecha de nacimiento',
                  suffixIcon: Icon(Icons.date_range),
                ),
                onTap: () {
                  print('Hola');
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              DropdownButton(
                value: valueAux,
                items: superheroes
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  valueAux = value!;
                  setState(() {});
                },
                // items: getDataSuperheroe(),
                // onChanged: (value) {
                // },
              ),
              // DropdownButton<String>(
              //   value: 'adm',
              //   items: const [
              //     DropdownMenuItem(value: '', child: Text('adm')),
              //     DropdownMenuItem(value: 'super', child: Text('Batman')),
              //     DropdownMenuItem(
              //         value: 'spiderman', child: Text('spiderman')),
              //     DropdownMenuItem(value: 'guason', child: Text('guason')),
              //   ],
              //   onChanged: (value) {
              //     print(value);
              //   },
              // ),
              // DropdownButton(
              //   value: valueAux,
              //   items: const [
              //     DropdownMenuItem(
              //       value: 'A',
              //       child: Text(
              //         'Hola',
              //       ),
              //     ),
              //     DropdownMenuItem(
              //       value: 'B',
              //       child: Text(
              //         'Buenos dias',
              //       ),
              //     ),
              //     DropdownMenuItem(
              //       value: 'C',
              //       child: Text(
              //         'Buenos noches',
              //       ),
              //     ),
              //   ],
              //   onChanged: (value) {
              //     valueAux = value.toString();
              //     setState(() {
              //       superheroes;
              //     });
              //   },
              // ),
              const SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }

  void getNameData() {
    print(_nameController.text);
  }

  selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      // a la espera: await
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (dateSelected != null) {
      _dateTimeController.text = dateSelected.toString().substring(0, 10);
      setState(() {});
    }
  }

  List<DropdownMenuItem<String>> getDataSuperheroe() {
    List<DropdownMenuItem<String>> items = [];
    superheroes.forEach((element) {
      items.add(
        DropdownMenuItem(
          child: Text(element),
          value: element,
        ),
      );
    });
    return items;
  }
}
