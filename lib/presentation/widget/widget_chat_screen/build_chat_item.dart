import 'package:flutter/material.dart';

import '../../screens/chat_screens/open_chat_screen.dart';

class BuildChatItem extends StatelessWidget {
  const BuildChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: ()
      {
        Navigator.push(
            context,
          MaterialPageRoute(builder: (context)=>const OpenChatScreen())
        );
      },
      child: Row(
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
                  'abdo mohamed',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
                ),
                Row(
                  children:
                  [
                    Expanded(
                      child: Text(
                        'hello my name is adam',
                        maxLines: 1,
                        overflow:TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                   const  CircleAvatar(
                      radius: 3.0,
                      backgroundColor: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      '2:28 PM',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w400)
                      ,
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
