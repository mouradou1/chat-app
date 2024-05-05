import 'package:flutter/material.dart';
import 'package:massage/screens/description_media_discussion/widgets/options/Description.dart';
import 'package:massage/screens/description_media_discussion/widgets/options/plus.dart';
import 'package:massage/screens/messages_and_groups/widgets/options/contacts.dart';
import 'package:massage/screens/description_media_discussion/navigation.dart';
import 'package:massage/screens/description_media_discussion/widgets/group_chat_screen.dart';
import 'package:massage/screens/description_media_discussion/widgets/group_media_description_ter.dart';
import 'package:massage/screens/description_media_discussion/widgets/media.dart';
import 'package:massage/screens/messages_and_groups/navigation.dart';
import 'package:massage/screens/description_media_discussion/widgets/options/new_group.dart';
import 'package:massage/screens/description_media_discussion/widgets/options/new_group_detail.dart';
import 'package:massage/screens/messages_and_groups/widgets/options/one_to_one_message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
      routes: {
        'contacts': (context) => const ContactsWidget(),
        'detail': (context) => const NewGroupWidget(),
        'detail2': (context) => const NewGroupDetailWidget(),
        'groupChatScreen': (context) =>  GroupChatScreen(),
        'chatScreen': (context) =>  const OnBoardingScreen(),
        'groupMediaDescriptionWidget': (context) =>  const GroupMediaDescriptionWidget(),
        'groupMediaDescriptionSuit': (context) =>  const GroupMediaDescriptionSuitWidget(),
        'groupMedia': (context) =>  const GroupMediaWidget(),
        'groupChatOptions': (context) =>  const TOnBoardingNavigationBar(),
        'plusOption': (context) =>  const PlusOption(),
        'one-to-one-chat': (context) =>   ChatScreen(),

        // Define the route
      },
    );
  }
}

