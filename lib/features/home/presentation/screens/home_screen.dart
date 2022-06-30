import 'package:bookstore/features/home/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:bookstore/features/home/presentation/widgets/categories_widgets.dart';
import 'package:bookstore/features/home/presentation/widgets/filter_applicator_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../authentication/presentation/controllers/session_controller.dart';
import '../controllers/home_controller.dart';
import '../widgets/heaading_widget.dart';
import 'home_sentences.dart';

class HomeScreen extends StatefulWidget {
  final HomeController homeController;

  const HomeScreen({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SessionController sessionUser;

  @override
  void initState() {
    super.initState();
    sessionUser = widget.homeController.sesseionController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: PlatinumPadding.viii,
                vertical: PlatinumPadding.iv,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                  sessionUser.loggedUser()
                      ? sessionUser.getUser()!.urlPhoto
                      : HomeSentences.defaultImage,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: PlatinumPadding.xx,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaadingWidget(
              name: sessionUser.loggedUser()
                  ? firstName(
                      fullName: sessionUser.getUser()!.name,
                    )
                  : HomeSentences.defaultName,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: PlatinumPadding.xvi,
              ),
              child: FilterApplicatorWidget(),
            ),
            const CategoriesWidget(),
            Container(
              height: 300,
              color: Colors.red,
            ),
            Container(
              height: 300,
              color: Colors.yellow,
            ),
            Container(
              height: 300,
              color: Colors.cyan,
            ),
            Container(
              height: 300,
              color: Colors.green,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }

  String firstName({
    required String fullName,
  }) {
    final names = fullName.split(' ');

    return names[0];
  }
}
