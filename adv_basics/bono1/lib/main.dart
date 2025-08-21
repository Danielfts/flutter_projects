import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Hello world 123!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  changeView(Widget widget) {
    setState(() {
      currentWidget = widget;
    });
  }

  Widget? currentWidget;

  @override
  void initState() {
    currentWidget = ButtonsView(changeView: changeView);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: currentWidget,
      ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key, required this.changeView});

  final void Function(Widget widget) changeView;

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton(onPressed: (){changeView(EmpathyMapView(changeView: changeView,));}, child: Text("Empathy Map")),
            FilledButton(onPressed: (){changeView(PersonaView(changeView: changeView,));}, child: Text("Persona"))
          ],
        );
  }
}

class EmpathyMapView extends StatelessWidget {
  const EmpathyMapView({super.key, required this.changeView});

  final void Function(Widget widget) changeView;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("An empathy map is a collaborative tool used in design thinking, business strategy, and product development that helps to better understand and visualize a users perspectiva. Its purpose is to go beyond demographics and capture deeper insights including the sees, thinks, feels and does."),
        FilledButton(onPressed: (){changeView(ButtonsView(changeView: changeView));}, child: Text("Go back"))
      ],
    );
  }

}

class PersonaView extends StatelessWidget {
  const PersonaView({super.key, required this.changeView});

  final void Function(Widget widget) changeView;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("A persona is a fictional profile that represents a particular audience segment (i.e., a user group). It is a way to personify your users with the purpose of promoting collaborative work in your team around a given persona"),
        FilledButton(onPressed: (){changeView(ButtonsView(changeView: changeView));}, child: Text("Go back"))
      ],
    );
  }

}