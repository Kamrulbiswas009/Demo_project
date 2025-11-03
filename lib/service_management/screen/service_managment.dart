import 'package:flutter/material.dart';
import 'package:flutter_application_1/service_management/screen/rate_service.dart';
import 'package:flutter_application_1/service_management/widget/text_style.dart';
import 'package:get/get.dart';


class ServiceManagment extends StatefulWidget {
  const ServiceManagment({super.key});

  @override
  State<ServiceManagment> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ServiceManagment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Management', style: AppTextStyles.heading),
        centerTitle: true,
        leading: Image.asset('assets/icon/arrow.png', height: double.maxFinite),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Activities',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0D6EFD),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/img1.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Al Majid Auto Service',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 2),

                          Row(
                            children: const [
                              Icon(Icons.star, size: 16, color: Colors.amber),
                              SizedBox(width: 4),
                              Text('4.8 (127)', style: TextStyle(fontSize: 13)),
                              SizedBox(width: 8),
                              Text('• 0.3 km', style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          const SizedBox(height: 8),

                          const Text(
                            'AC • Engine • Brakes',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            FilledButton(
              onPressed: () => Get.to(() => RateService()),
              child: Text(
                'Write a review',
                style: TextStyle(color: Colors.black),
              ),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 48),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Color(0xFF0D6EFD), width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
