import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Description.dart';

class PlusOption extends StatelessWidget {
  const PlusOption({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Color(0xFF2A343D)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Nom de group', style: TextStyle(color: Color(0xFF2A343D))),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Action based on selection
              print(result); // This prints the selected option to the console
              handleMenuSelection(context, result); // Replace or expand this function based on your needs
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Modifier le groupe',
                child: Text('Modifier le groupe'),
              ),
              const PopupMenuItem<String>(
                value: 'Supprimer le groupe',
                child: Text('Supprimer le groupe'),
              ),
              const PopupMenuItem<String>(
                value: 'Fremer le groupe',
                child: Text('Fremer le groupe'),
              ),
              const PopupMenuItem<String>(
                value: 'Plus',
                child: Text('Plus'),
              ),
            ],
            icon: const Icon(Icons.more_vert, color: Color(0xFF2A343D)),
          ),
        ],
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/user.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Group name',
                textAlign: TextAlign.center,
                style: theme.textTheme.headline6,
              ),
            ),
            Text(
              'Group- 3 members',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyText1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.person_add),
                    onPressed: () {
                      // Add person action
                    },
                  ),
                  Text(
                    'Ajouter',
                    style: theme.textTheme.bodyText2,
                  ),
                  IconButton(
                    icon: const Icon(Icons.person_search),
                    onPressed: () {
                      // Search person action
                    },
                  ),
                  Text(
                    'Rechercher',
                    style: theme.textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: Text(
                'description :',
                textAlign: TextAlign.left,
                style: theme.textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
              child: Text(
                'Ce groupe a été créé pour faciliter la communication et le partage d\'informations entre les membres de notre équipe',
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: Text(
                'Les membres :',
                textAlign: TextAlign.left,
                style: theme.textTheme.headline6,
              ),
            ),
            ...List.generate(10, (index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                title: Text('Nom d’utilisateur ${index + 1}'),
              );
            }),
          ],
        ),
      ),
    );
  }


  void handleMenuSelection(BuildContext context,String choice) {
    // This function can handle various actions based on the menu choice
    // Example of navigating or displaying a message
    switch (choice) {
      case 'Modifier le groupe':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const GroupMediaDescriptionWidget(),
        ));
        break;
      case 'Supprimer le groupe':
        showDialog<void>(
          context: context,
          barrierDismissible: false, // User must tap button!
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: const Text('Attention !', style: TextStyle(color: Colors.redAccent),),
              content: const Text('Vous êtes sur le point de supprimer ce groupe de messages. Cette action est irréversible. Voulez-vous continuer ?'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Oui'),
                  onPressed: () {
                    Navigator.of(dialogContext).pop(); // Dismiss dialog
                  },
                ),
                TextButton(
                  child: const Text('Annuler'),
                  onPressed: () {
                    Navigator.of(dialogContext).pop(); // Dismiss dialog
                    // You can perform other actions here after
                  },
                ),
              ],
            );
          },
        );
        break;
      case 'Fremer le groupe':
        showDialog<void>(
          context: context,
          barrierDismissible: false, // User must tap button!
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: const Text('Confirmation !', style: TextStyle(color: CupertinoColors.systemYellow),),
              content: const Text(' Veuillez mettre à jour le statut du groupe et fournir une brève description du sujet de discussion et un résumé '),
              actions: <Widget>[
                TextButton(
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const GroupMediaDescriptionWidget(),
                    )); // Dismiss dialog
                  },
                ),
                TextButton(
                  child: const Text('Annuler'),
                  onPressed: () {
                    Navigator.of(dialogContext).pop(); // Dismiss dialog
                    // You can perform other actions here after 'Yes' is tapped
                  },
                ),
              ],
            );
          },
        );
        break;
      case 'Plus':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const PlusOption(),
        ));
        break;
      default:
        print('Unknown option: $choice');
    }
  }

}
