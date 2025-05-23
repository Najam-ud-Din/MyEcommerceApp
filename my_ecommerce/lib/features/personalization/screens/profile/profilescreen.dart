import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/common/widgets/images/t_circularimage.dart';
import 'package:my_ecommerce/common/widgets/sectionheading.dart';
import 'package:my_ecommerce/features/personalization/screens/profile/Widgets/profile_menu.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showbackarrow: true,
        title: Text('Profile'),
      ),

      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpacing),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularimage(
                      image: Timages.user,
                      isNetworkimage: false,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('Change Profile Picture')),
                  ],
                ),
              ),

              ///Details
              SizedBox(
                height: Sizes.spacebtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),
              TSectionHeading(
                title: "profile information",
                showActionbutton: false,
              ),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),

              Tprofile_menu(
                title: 'Name',
                value: 'Najamuddin',
                onpressed: () {},
              ),
              Tprofile_menu(
                title: 'Username',
                value: 'Najamuddin432',
                onpressed: () {},
              ),
              SizedBox(
                height: Sizes.spacebtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),
              TSectionHeading(
                title: "Personal information",
                showActionbutton: false,
              ),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),

              Tprofile_menu(
                title: 'User ID',
                value: '545678',
                onpressed: () {},
                icon: Iconsax.copy,
              ),
              Tprofile_menu(
                title: 'Email',
                value: 'najamuddin9823@gmail.com',
                onpressed: () {},
              ),
              Tprofile_menu(
                title: 'Phone No',
                value: '+92 345 832345',
                onpressed: () {},
              ),
              Tprofile_menu(
                title: 'Gender',
                value: 'Male',
                onpressed: () {},
              ),
              Tprofile_menu(
                title: 'Date of Birth',
                value: '12 OCt 2004',
                onpressed: () {},
              ),
              Divider(),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),

              Center(
                child: Troundedcontainer(
                  backgroundcolor: Colors.red,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Close Account',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
