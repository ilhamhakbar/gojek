import 'package:flutter/material.dart';
import 'package:sampleproject/pages/gofood.dart';

class Layanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(top: 20.0),
        width: 400,
        height: 180,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {},
                                shape: CircleBorder(),
                                color: Colors.green,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoJek")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {},
                                shape: CircleBorder(),
                                color: Colors.green,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoCar")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GoFood()));
                                },
                                shape: CircleBorder(),
                                color: Colors.redAccent,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoFood")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {},
                                shape: CircleBorder(),
                                color: Colors.green,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoBluebird")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {},
                                shape: CircleBorder(),
                                color: Colors.green,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoJek")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {},
                                shape: CircleBorder(),
                                color: Colors.green,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoCar")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {},
                                shape: CircleBorder(),
                                color: Colors.green,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoFood")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {},
                                shape: CircleBorder(),
                                color: Colors.green,
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("GoBluebird")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
