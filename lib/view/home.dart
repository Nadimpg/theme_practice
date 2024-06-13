
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_practice/view/second_page.dart';
import 'package:theme_practice/view/widgets/custom_text.dart';


import '../controller/controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,size: 24,))
        ],
      ),
      body: Obx(() {
        return Column(
          children: [
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Dark theme"),
              trailing: Switch(
                value: themeController.isDark.value,
                onChanged: (value) => themeController.toggleTheme(),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              child: const Text("2nd page"),
            ),


            ///<===================== text field ==================================>
             TextFormField(

             ),
            Text('text 1',style: Theme.of(context).textTheme.headline1,),
            Text('text 2',style: Theme.of(context).textTheme.headline2,),
            Text('text 3',style: Theme.of(context).textTheme.headline3,),
            Text('text 4',style: Theme.of(context).textTheme.headline4,),

            SizedBox(height: 12,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width-100,
              color: Theme.of(context).cardColor,
            ),
            SizedBox(height: 12,),
            ElevatedButton(onPressed: (){}, child: Text('data'),style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).cardColor),),
            SizedBox(height: 12,),

            CustomText(text: 'Nadim Hasan',color: Theme.of(context).hintColor,fontSize: 24,),
            CustomText(text: 'nadimhasannh48@gmail.com',color: Theme.of(context).cardColor,fontSize: 24,),

          ],
        );
      }),
    );
  }
}
