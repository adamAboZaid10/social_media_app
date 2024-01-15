import 'package:flutter/material.dart';

class BuildStoryItemChat extends StatelessWidget {
  const BuildStoryItemChat({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: MediaQuery.of(context).size.width*.17,
      child:  Column(
        children:
        [
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
          const SizedBox(
            height: 10,
          ),
          Text(
            'Adam mohamed',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

