import 'package:flutter/material.dart';
import 'package:selcuk_topluluk/core/constants/strings/homepage_strings.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/core/init/theme/color/project_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/image/image_constatns.dart';
import '../../../core/constants/strings/authenticate_strings.dart';
import '../../widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../../widgets/card/post_card.dart';
import '../../widgets/text_field/text_field.dart';
import '../model/user_model.dart';
import '../service/user_service.dart';

class DiscoverPage extends StatefulWidget {
  final bool loginContrl;
  const DiscoverPage({super.key, required this.loginContrl});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  UserService _service = UserService();
  bool? isLoading;

  List<UsersModelData?> users = [];

  @override
  void initState() {
    super.initState();
    _service.fetchUsers().then((value) {
      if (value != null && value.data != null) {
        setState(() {
          users = value.data!;
          isLoading = true;
          print("${users[2]!.postText! + users[2]!.postText!}");
          print("${users[2]!.image!}");
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.instance.customBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: context.paddingProjectTop / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      HomePageString.appBarTitle,
                      style: TextStyle(color: CustomColors.instance.buttonBackGroundColor, fontSize: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: context.width * 0.01,
                    left: context.width * 0.05,
                    bottom: context.height * 0.02,
                    top: context.height * 0.02),
                child: Row(
                  children: [
                    Container(
                      height: context.height * 0.08,
                      width: context.width * 0.80,
                      child: CustomTextField(
                        hintTextData: HomePageString.hintTextData,
                      ),
                    ),
                    // SizedBox(
                    //   width: context.width * 0.035,
                    // ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.bell, color: CustomColors.instance.buttonBackGroundColor),
                        ),
                        SizedBox(
                          height: context.height * 0.02,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: context.paddingProject,
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.01,
                      ),
                      PostCard(
                        comImage: ImageConstants.instance.gdg,
                        comName: HomePageString.community,
                        comPostTime: HomePageString.postTime,
                        comPostIamge: ImageConstants.instance.postImage,
                        comPostText: HomePageString.subtitle,
                      ),
                      PostCard(
                        comImage: ImageConstants.instance.gdg,
                        comName: HomePageString.community,
                        comPostTime: HomePageString.postTime,
                        comPostIamge: ImageConstants.instance.onBoardingImage3,
                        comPostText: "Verstehe kein bisschen türkisch trotzdem fühle ich das was er sagt ",
                      ),
                      PostCard(
                        comImage: ImageConstants.instance.gdg,
                        comName: HomePageString.community,
                        comPostTime: HomePageString.postTime,
                        comPostIamge: ImageConstants.instance.postImage,
                        comPostText: HomePageString.subtitle,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(login: widget.loginContrl),
    );
  }
}
