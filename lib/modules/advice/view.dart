import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/app/session_manager.dart';
import 'package:arosa_je/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AdviceView extends ConsumerStatefulWidget {
  const AdviceView({super.key});

  @override
  ConsumerState<AdviceView> createState() => _AdviceViewState();
}

class _AdviceViewState extends ConsumerState<AdviceView> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Test")
      ),
    );
  }
}
