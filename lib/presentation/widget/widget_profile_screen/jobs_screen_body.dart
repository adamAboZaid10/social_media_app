import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';

class JobsScreenBody extends StatelessWidget {
  const JobsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>const CustomListViewJobs(),
                separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                itemCount: 17),
          ],
        ),
      ),
    );
  }
}



class CustomListViewJobs extends StatelessWidget {
  const CustomListViewJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1615744455875-7ad33653e8c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const  SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(
                'Mobile Developer',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17,color: defaultGoldColor),
              ),
              Text(
                'Flutter',
                maxLines: 1,
                overflow:TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13,color: defaultGoldColor,fontWeight: FontWeight.w400),
              ),
              Text(
                'London, UK (Remote)',
                maxLines: 1,
                overflow:TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


