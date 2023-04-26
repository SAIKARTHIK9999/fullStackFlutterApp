import 'package:amazon_clone/artificial_inteligence/screens/ai_screen.dart';
import 'package:amazon_clone/testing/test.dart';
import 'package:flutter/material.dart';

class AiHelp extends StatefulWidget {
  const AiHelp({super.key});


  @override
  State<AiHelp> createState() => _AiHelpState();
}

class _AiHelpState extends State<AiHelp> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToAiPage(context),
      child: const Text('Any Queries, AI can help'),
    );
  }
  
  navigateToAiPage(BuildContext context) {
    Navigator.pushNamed(context, AiScreen.routeName,);
  }
}