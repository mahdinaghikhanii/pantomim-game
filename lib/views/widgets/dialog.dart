import 'package:flutter/material.dart';
import 'package:pantomim/model/pantomim_data.dart';
import 'package:pantomim/theme/constant.dart';

import '../../constants.dart';

class DialogShow extends StatelessWidget {
  final PantomimData pantomimData;
  const DialogShow({Key? key, required this.pantomimData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(Constants.padding),
                child: Container(
                  width: 90,
                  height: 90,
                  child: CircleAvatar(
                      backgroundColor: kpink,
                      backgroundImage: AssetImage(pantomimData.image)),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pantomimData.name,
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  Text(
                    'name group',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
