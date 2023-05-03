import 'dart:async';

import 'package:atomsbox/atomsbox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'atomsbox Countdown Widget',
      // theme: ThemeData.light(
      //   useMaterial3: true,
      // ),
      theme: AppTheme.theme,
      home: Scaffold(
        appBar: AppBar(
          // title: Image.asset('assets/images/atomsbox-logo.png', height: 50,),
          title: const SizedBox(
            height: 50,
            child: Text('atomsbox'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppCountdown(
              // useGradient: false,
              deadline: DateTime.now().add(
                const Duration(
                  hours: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AppCountdown extends StatefulWidget {
//   final DateTime deadline;
//   final TextStyle? textStyle;
//   final TextStyle? labelTextStyle;

//   const AppCountdown({
//     super.key,
//     required this.deadline,
//     this.textStyle,
//     this.labelTextStyle,
//   });

//   @override
//   State<AppCountdown> createState() => _AppCountdownState();
// }

// class _AppCountdownState extends State<AppCountdown> {
//   late Timer timer;
//   Duration duration = const Duration();

//   @override
//   void initState() {
//     super.initState();
//     calculateTimeLeft(widget.deadline);

//     timer = Timer.periodic(
//       const Duration(seconds: 1),
//       (_) => calculateTimeLeft(widget.deadline),
//     );
//   }

//   @override
//   void dispose() {
//     timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var textStyle =
//         widget.textStyle ?? Theme.of(context).textTheme.headlineLarge!;
//     var labelTextStyle =
//         widget.labelTextStyle ?? Theme.of(context).textTheme.bodyMedium!;

//     final hours = DefaultTextStyle(
//       style: textStyle,
//       child: Text(
//         duration.inHours.toString().padLeft(2, '0'),
//       ),
//     );

//     final minutes = DefaultTextStyle(
//       style: textStyle,
//       child: Text(
//         duration.inMinutes.remainder(60).toString().padLeft(2, '0'),
//       ),
//     );

//     final seconds = DefaultTextStyle(
//       style: textStyle,
//       child: Text(
//         duration.inSeconds.remainder(60).toString().padLeft(2, '0'),
//       ),
//     );

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ShaderMask(
//               blendMode: BlendMode.srcIn,
//               shaderCallback: (bounds) => const LinearGradient(
//                 colors: [
//                   Color(0xFF192256),
//                   Color(0xFF9c254d),
//                 ],
//               ).createShader(
//                 Rect.fromLTWH(
//                   0,
//                   0,
//                   bounds.width,
//                   bounds.height,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8),
//                 child: hours,
//               ),
//             ),
//             DefaultTextStyle(
//               style: labelTextStyle,
//               child: const Text('Hours'),
//             ),
//           ],
//         ),
//         const SizedBox(width: 16),
//         Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ShaderMask(
//               blendMode: BlendMode.srcIn,
//               shaderCallback: (bounds) => const LinearGradient(
//                 colors: [
//                   Color(0xFF192256),
//                   Color(0xFF9c254d),
//                 ],
//               ).createShader(
//                 Rect.fromLTWH(
//                   0,
//                   0,
//                   bounds.width,
//                   bounds.height,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8),
//                 child: minutes,
//               ),
//             ),
//             DefaultTextStyle(
//               style: labelTextStyle,
//               child: const Text('Minutes'),
//             ),
//           ],
//         ),
//         const SizedBox(width: 16),
//         Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ShaderMask(
//               blendMode: BlendMode.srcIn,
//               shaderCallback: (bounds) => const LinearGradient(
//                 colors: [
//                   Color(0xFF192256),
//                   Color(0xFF9c254d),
//                 ],
//               ).createShader(
//                 Rect.fromLTWH(
//                   0,
//                   0,
//                   bounds.width,
//                   bounds.height,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8),
//                 child: seconds,
//               ),
//             ),
//             DefaultTextStyle(
//               style: labelTextStyle,
//               child: const Text('Seconds'),
//             ),
//           ],
//         ),
//         const SizedBox(width: 16),
//       ],
//     );
//   }

//   void calculateTimeLeft(DateTime deadline) {
//     final seconds = deadline.difference(DateTime.now()).inSeconds;
//     setState(() {
//       duration = Duration(
//         seconds: seconds,
//       );
//     });
//   }
// }
