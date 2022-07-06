import 'package:flutter/material.dart';

import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../authentication/presentation/controllers/session_controller.dart';
import '../controllers/home_controller.dart';
import '../widgets/book_suggestion_list_widget.dart';
import '../widgets/bottom_navigation_bar_widget.dart';
import '../widgets/categories_widgets.dart';
import '../widgets/filter_applicator_widget.dart';
import '../widgets/heaading_widget.dart';
import '../widgets/new_arrivals_list_widget.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: PlatinumPadding.xvi,
              ),
              child: HeaadingWidget(
                name: sessionUser.loggedUser()
                    ? firstName(
                        fullName: sessionUser.getUser()!.name,
                      )
                    : HomeSentences.defaultName,
              ),
            ),
            const SizedBox(
              height: PlatinumPadding.xvi,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: PlatinumPadding.xvi,
              ),
              child: FilterApplicatorWidget(),
            ),
            const SizedBox(
              height: PlatinumPadding.xxxii,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: PlatinumPadding.xvi,
              ),
              child: CategoriesWidget(),
            ),
            const SizedBox(
              height: PlatinumPadding.xvi,
            ),
            BookSuggestionListWidget(
              bookSuggestionController:
                  widget.homeController.bookSuggestionController,
            ),
            const SizedBox(
              height: PlatinumPadding.xvi,
            ),
            const NewArrivalsListWidget(),
            const SizedBox(
              height: PlatinumPadding.xvi,
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
