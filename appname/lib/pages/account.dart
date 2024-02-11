import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _updateController = TextEditingController();
  Box? contactBox;
  @override
  void initState() {
    contactBox = Hive.box('contact-list');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'enter user number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final userInput = _controller.text;
                      await contactBox!.add(userInput);
                      Fluttertoast.showToast(msg: 'Added Successfully');
                      _controller.clear();
                    } catch (e) {
                      Fluttertoast.showToast(
                        msg: e.toString(),
                      );
                    }
                  },
                  child: Text('Add data'),
                ),
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: Hive.box('contact-list').listenable(),
                  builder: (context, box, widget) {
                    return ListView.builder(
                      itemCount: contactBox!.keys.toList().length,
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 5,
                          child: ListTile(
                            trailing: Container(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        builder: (_) {
                                          return Dialog(
                                            child: Container(
                                              height: 200,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: Column(
                                                  children: [
                                                    TextField(
                                                      controller:
                                                          _updateController,
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: () async {
                                                        final updateinput =
                                                            _updateController
                                                                .text;
                                                        contactBox!.putAt(
                                                            index, updateinput);
                                                        _updateController.clear();
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Update'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: Icon(Icons.edit, color: Colors.green),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await contactBox!.deleteAt(index);
                                      Fluttertoast.showToast(
                                          msg: 'Deleted Successfully');
                                    },
                                    icon: Icon(Icons.remove_circle,
                                        color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                            title: Text(
                              contactBox!.getAt(index).toString(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
