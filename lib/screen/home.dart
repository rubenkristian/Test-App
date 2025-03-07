import 'package:app/components/page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int pagePosition = 0;
  int length = 3;

  List<String> listButtonLabel = <String>["Get Started", "Next Step", "Finish"];

  final PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  final String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 8,
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (BuildContext context, int position) {
                    return PageSlide(
                      description: description,
                      title: "Let's meet our summer coffee drinks",
                    );
                  },
                  itemCount: length,
                  onPageChanged: (value) {
                    setState(() {
                      pagePosition = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(length, (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: pagePosition == index ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                            pagePosition == index ? Colors.black : Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  }),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),

                  onPressed: () {
                    if (pagePosition == length - 1) {
                      context.go('/detail');
                      return;
                    }
                    pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  child: Text(
                    listButtonLabel[pagePosition],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
