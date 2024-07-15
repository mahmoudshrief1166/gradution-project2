import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduitproject/screens/HomePage.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class AbousAus extends StatefulWidget {
  const AbousAus({super.key});

  @override
  State<AbousAus> createState() => _AbousAusState();
}

class _AbousAusState extends State<AbousAus> {
  static const String info =
      "موقع سبل هو منصة إلكترونية تهدف إلى تسهيل عمليات التبرع عبر الإنترنت بطريقة آمنة وموثوقة. يسعى الموقع إلى ربط المتبرعين بالمؤسسات الخيرية والمشاريع الإنسانية التي تحتاج إلى دعم مالي لتحقيق أهدافها. تتنوع المشروعات المتاحة على الموقع لتشمل مختلف المجالات مثل الصحة، والتعليم، والإغاثة، والتنمية الاجتماعية، والمساعدات الإنسانية.الميزات الرئيسية لموقع سبلسهولة الاستخدام تصميم الموقع بسيط ومستخدم بشكل يسهل على المتبرعين تصفح المشروعات واختيار الأنسب لدعمهم.الأمان والموثوقية يضمن الموقع أمان المعاملات المالية وسرية بيانات المستخدمين، كما يتم التحقق من المؤسسات الخيرية المدرجة لضمان مصداقيتها.التنوع في المشروعات: يوفر الموقع مجموعة واسعة من المشروعات التي يمكن للمتبرعين المساهمة فيها، مما يتيح لهم اختيار المجال الذي يرغبون في دعمه.التقارير والشفافية: يقدم الموقع تقارير دورية حول تأثير التبرعات وكيفية استخدامها، مما يعزز من شفافية العمليات وثقة المتبرعين.كيفية التبرع عبر موقع سبلالتسجيل: يجب على المستخدمين إنشاء حساب على الموقع أو تسجيل الدخول إذا كان لديهم حساب بالفعل.استكشاف المشروعات: يمكن للمستخدمين استعراض المشروعات المتاحة على المنصة وتحديد المشروع الذي يرغبون في دعمه.اختيار مبلغ التبرع: يمكن للمستخدم تحديد المبلغ الذي يرغب في التبرع به.إتمام عملية الدفع: يتم إتمام عملية التبرع من خلال وسائل الدفع الإلكترونية المتاحة على الموقع.الفوائد للمؤسسات الخيريةزيادة الوصول: تمكن المؤسسات من الوصول إلى شريحة أوسع من المتبرعين من خلال الإنترنت.تحسين الكفاءة: يساعد الموقع في تقليل التكاليف التشغيلية المرتبطة بجمع التبرعات التقليدية.التقارير التفصيلية توفر المنصة تقارير مفصلة حول التبرعات والمساهمات، مما يساعد المؤسسات في إدارة مواردها بشكل أفضل.موقع سبل يعد حلاً مثالياً للأفراد والمؤسسات الذين يسعون لدعم القضايا الخيرية بشكل سهل وآمن وشفاف، مما يساهم في تعزيز العمل الخيري والتنموي في المجتمع.";
  static const String txt1 =
      "service content: Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe accusantium quasi, sed fuga repellendus a hic at deserunt veniam, exercitationem veritatis odio voluptates ipsa pariatur recusandae dolore mollitia assumenda ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Text(
          'من نحن',
          style: TextStyle(
              fontFamily: "Tajawal",
              color: Color.fromRGBO(145, 104, 58, 1),
              fontSize: 30),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 400,
            child: Image.network(
                "https://charity-proj.netlify.app/images/header-img.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "التعريف بمؤسسة سبل",
                style: TextStyle(
                  color: Color.fromRGBO(145, 104, 58, 1),
                  fontSize: 30,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          const SizedBox(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              elevation: 8,
              borderOnForeground: true,
              shadowColor: Color.fromRGBO(145, 104, 58, 1),
              surfaceTintColor: Color.fromRGBO(145, 104, 58, 1),
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ReadMoreText(
                  info,
                  style: TextStyle(
                    color: Color.fromRGBO(214, 171, 127, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  moreStyle: TextStyle(color: Color.fromRGBO(145, 104, 58, 1)),
                  textDirection: TextDirection.rtl,
                  lessStyle: TextStyle(color: Color.fromRGBO(145, 104, 58, 1)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "احصائيات الموقع",
              style: TextStyle(
                color: Color.fromRGBO(145, 104, 58, 1),
                fontSize: 30,
                fontFamily: "Rubik",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  containerinfo(
                    firstline: "اجمالى التبرعات",
                    secondline: "100",
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  containerinfo(
                    firstline: " عدد المتبرعين",
                    secondline: "100",
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  containerinfo(
                    firstline: "  اجمالى الحالات",
                    secondline: "100",
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  containerinfo(
                    firstline: "  عدد الجمعيات",
                    secondline: "100",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "خدمات الموقع",
            style: TextStyle(
              color: Color.fromRGBO(145, 104, 58, 1),
              fontSize: 30,
              fontFamily: "Rubik",
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ServiceSite(headtitle: "service heading", subtitle: txt1),
                  ServiceSite(headtitle: "service heading", subtitle: txt1),
                  ServiceSite(headtitle: "service heading", subtitle: txt1),
                  ServiceSite(headtitle: "service heading", subtitle: txt1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceSite extends StatelessWidget {
  const ServiceSite({
    super.key,
    required this.headtitle,
    required this.subtitle,
  });

  final String? subtitle;
  final String? headtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 5,
        shadowColor: const Color.fromRGBO(145, 104, 58, 1),
        surfaceTintColor: const Color.fromRGBO(145, 104, 58, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://charity-proj.netlify.app/images/header-img.png"),
              const SizedBox(
                height: 5,
              ),
              Text(
                headtitle!,
                style: const TextStyle(
                  color: Color.fromRGBO(145, 104, 58, 1),
                  fontSize: 30,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ReadMoreText(
                  trimLength: 100,
                  subtitle!,
                  style: const TextStyle(
                    color: const Color.fromRGBO(145, 104, 58, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  moreStyle:
                      const TextStyle(color: Color.fromRGBO(145, 104, 58, 1)),
                  lessStyle:
                      const TextStyle(color: Color.fromRGBO(145, 104, 58, 1)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(145, 104, 58, 1))),
                child: const Text(
                  "المزيد",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class containerinfo extends StatelessWidget {
  containerinfo({
    super.key,
    required String? firstline,
    required String? secondline,
  }) {
    firstlinee = firstline;
    secondlinee = secondline;
  }
  String? firstlinee;
  String? secondlinee;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(145, 104, 58, 1),
          // borderRadius: BorderRadius.circular(200),
          shape: BoxShape.circle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstlinee!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Rabik",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            secondlinee!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: "Rabik",
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
