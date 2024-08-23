import 'package:flutter/material.dart';
import 'package:instagram/widgets/button.dart';

// Scaffold
// Column
// Text
// Image
// Text

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// El column debe estar envuelto en un center
      body: Center(
        child: Column(
          // Y debe ocupar el tamaño mínimo
          mainAxisSize: MainAxisSize.min,
          // Son los hijos del column que son Widgets
          children: [
            /// Widget 1
            /// Text -> nos sirve para renderizar un texto
            const Text(
              "Instagram",

              /// style es la propiedad que nos permite actualizar
              style: TextStyle(
                /// fontSize: tamaño del texto
                fontSize: 50,

                /// fontWeight: peso de la fuente
                fontWeight: FontWeight.w500,

                /// color: color del texto
                color: Colors.black,
              ),
            ),

            /// Widget 2
            /// SizedBox -> solamente crea una caja vacia
            /// Limitar espacios -> del hijo
            const SizedBox(height: 40),

            /// Widget 3
            /// Colocar una imagen
            /// 1. Imagen
            /// 2. Colocar la imagen dentro del proyecto
            /// 3. Referenciar la imagen pubspec
            /// 4. Utilizar con los widgets
            /// Renderizar la Imagen
            /// 1. Image
            ///   assets - imagenes en los assets
            /// network - url

// Forma 0: Usando container...
            // Container(
            //   width: 85,
            //   height: 85,
            //   decoration: const BoxDecoration(
            //     shape: BoxShape.circle,
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/post.png'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),

// Forma 1: ClipOval
            const ClipOval(
              child: Image(
                image: AssetImage('assets/avatars/5.png'),
                height: 85,
                width: 85,
                fit: BoxFit.cover,
              ),
            ),

// Forma 2: ClipRRect
            // ClipRRect(
            //   // Solo en el top izquierdo se coloca un radio
            //   // border
            //   borderRadius:
            //       BorderRadius.circular(100), // La mitad del ancho y alto
            //   child: const Image(
            //     image: AssetImage('assets/images/post.png'),
            //     height: 85,
            //     width: 85,
            //     fit: BoxFit.cover,
            //   ),
            // ),

// Forma 3: Avatar
            // const CircleAvatar(
            //   radius:42.5,
            //   backgroundImage: AssetImage('assets/images/post.png'),
            // ),

            /// Widget 4
            /// SizedBox

            const SizedBox(height: 10),

            /// Widget 5
            /// Text

            const Text(
              'MarcoJrSilva_95',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// Widget 6
            /// SizedBox

            const SizedBox(height: 10),

            /// Widget 7
            /// Botones
            /// FilledButton -> es un boton con relleno
            SizedBox(
              width: 300,
              height: 44,
              child: Button(
                text: "Log in",
                onPressed: () {},
              ),
            ),

            /// Widget 8
            /// TextButton
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Switch accounts',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),

      /// BottonnavigationNav
      ///
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account? ",
                style: TextStyle(color: Colors.grey),
              ),
              GestureDetector(
                onTap: () {
                  print("Sign Up");
                },
                child: const Text(
                  "Sign up.",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
