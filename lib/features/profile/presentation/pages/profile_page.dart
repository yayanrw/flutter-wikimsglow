import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/features/profile/presentation/widgets/personal_informations.dart';
import 'package:wikimsglow/features/profile/presentation/widgets/profile_picture_section.dart';
import 'package:wikimsglow/features/profile/presentation/widgets/statuses_row.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            AppBar(
              title:
                  Text('Profile', style: TextStyle(color: MyColors.textBlack)),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: MyColors.textBlack,
                  ),
                )
              ],
            ),

            /// Profile Picture
            ProfilePictureSection(size: size),

            Text(
              'Alex Nikiforov',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Text('alex@msn.com'),
            const SizedBox(height: 10),

            /// Statuses
            const StatusesRow(),
            const SizedBox(height: 10),

            /// Personal Information
            const PeronalInformations()
          ],
        ),
      ),
    );
  }
}
