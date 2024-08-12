import 'package:flutter/material.dart';

main() => runApp (const MainApp());





class MainApp extends StatelessWidget {
       const  MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Push y Pop Ejemplo',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
     const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir a la Segunda Pantalla'),
          onPressed: () {
            // Navegar a la segunda pantalla usando push
            Navigator.push(
              context,
               MaterialPageRoute (builder: (context) => const SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
   const SecondScreen({super.key});
//main() => runApp (const MainApp());

//class MainApp extends StatelessWidget {
 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Regresar a la Primera Pantalla'),
          onPressed: () {
            // Regresar a la primera pantalla usando pop
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
