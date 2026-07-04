import 'package:flutter/material.dart';

class InsuranceScreen1 extends StatelessWidget {
  InsuranceScreen1({super.key});

  // 1. KARTLARIN FƏRQLİ MƏLUMATLARINI SAXLAYAN LİST:
  final List<Map<String, String>> insuranceData = [
    {
      "title": "Family Insurance",
      "subTitle": "Family plans cover two or more members.",
      "image": "assets/cardImage.png"
    },
     {
      "title": "House Insurance",
      "subTitle": "Family plans cover two or more members.",
      "image": "assets/health.png"
    },
    {
      "title": "Health Insurance",
      "subTitle": "Family plans cover two or more members.",
      "image": "assets/house.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffE8E9EB),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        centerTitle: true,
        title: const Text("Insurance"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffE8E9EB),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                icon: Badge.count(
                  count: 4,
                  child: const Icon(Icons.notifications),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: ListView.builder(
          // 2. LİSTİN UZUNLUĞU QƏDƏR KART YARADILIR:
          itemCount: insuranceData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            // Hər bir indeksə uyğun məlumatı götürürük:
            final item = insuranceData[index];
            
            // 3. MƏLUMATLAR KARTA ÖTÜRÜLÜR:
            return InsuranceCard(
              title: item["title"]!,
              subTitle: item["subTitle"]!,
              imagePath: item["image"]!,
            );
          },
        ),
      ),
    );
  }
}

class InsuranceCard extends StatelessWidget {
  // Kənardan gələn məlumatları qəbul etmək üçün dəyişənlər:
  final String title;
  final String subTitle;
  final String imagePath;

  const InsuranceCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Material(
        color: Colors.white,
        elevation: 1.2,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 310,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath),
              
              // FƏRQLİ BAŞLIQ MƏTNİ:
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              
              // FƏRQLİ ALT MƏTN:
              Text(
                subTitle,
                style: const TextStyle(color: Colors.grey),
              ),
              
              Row(
                // Qeyd: Köhnə koddakı .spaceBetween nöqtə xətası düzəldildi
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(
                      text: 'Get ',
                      children: [
                        TextSpan(
                          text: '20% ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                           color: Colors.green),
                        ),
                        TextSpan(text: 'Cashback'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text("Apply"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}