import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/const/imagepath.dart';
import 'package:get/get.dart';
import '../controller/rateing_controller.dart';
import '../widget/image_picker.dart';
import '../widget/rateing_star.dart';

class RateService extends StatefulWidget {
  const RateService({super.key});

  @override
  State<RateService> createState() => _RateServiceState();
}

class _RateServiceState extends State<RateService> {
  final RatingController controller = Get.put(RatingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate Service'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Image.asset(Imagepath.image, height: double.maxFinite),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rate Your Service Experience',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0D6EFD),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Your feedback helps us improve and ensure you always get the best car care experience.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                '1.How was your overall experience?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Rateing_Star(controller: controller),
              SizedBox(height: 24),
              Text(
                '2.Service Quality',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Rateing_Star(controller: controller),
              SizedBox(height: 24),
              Text(
                '3.Timeliness',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Rateing_Star(controller: controller),
              SizedBox(height: 24),
              Text(
                '4.Value for Money',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Rateing_Star(controller: controller),
              SizedBox(height: 24),
              Text(
                'Additional Feedback',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Text(
                'Your comments help us improve future experiences.',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(color: Color(0XFFE8F1FD)),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Tell us more about your experience',

                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0XFFE0E0E0)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),

              ImagePickerContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
