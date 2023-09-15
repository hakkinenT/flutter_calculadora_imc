import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final VoidCallback onPressed;

  final String label;

  @override
  Widget build(BuildContext context) {
    return _CustomElevatedButtonBody(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}

class _CustomElevatedButtonBody extends StatelessWidget {
  const _CustomElevatedButtonBody({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 52,
      child: child,
    );
  }
}
