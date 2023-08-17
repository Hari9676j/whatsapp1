import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp1/home_screen.dart';

class Homescreem extends StatefulWidget {
  static const String id = 'home_screen';
  const Homescreem({Key? key}) : super(key: key);

  @override
  State<Homescreem> createState() => _HomescreemState();
}

class _HomescreemState extends State<Homescreem> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child:Scaffold(
         appBar: AppBar (
           centerTitle: false,
          title: Text('Whats app'),
           bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
            Tab(
              child: Text('chats'),
            ),
              Tab(
                  child: Text('status'),
              ),Tab(
                  child: Text('Calls'),
              ),

             ]
           ),


           actions: [
                const Icon(Icons.search),
             const SizedBox(width: 10,),
           PopupMenuButton(
               icon: const Icon(Icons.more_vert_outlined),
             itemBuilder: (context,) => const [
               PopupMenuItem(
               value: '1',
               child: Text('New Group')
           ),
             PopupMenuItem(
                 value: '2',
                 child: Text('settings')
             ),
               PopupMenuItem(
                   value: '3',
                   child: Text('Logout')
               )
             ]
                ),
             SizedBox(width: 10,)
           ],
        ),
             body: TabBarView(
            children: [
              Text('camera'),
             ListView.builder(
               itemCount: 10,
                 itemBuilder: (context, index){
                   return const ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                     ),
                     title: Text('srihari'),
                     subtitle: Text('he is a good boy!'),
                     trailing: Text('9:00AM'),
                   );
                 }
             ),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                      ),
                      title: Text('srihari'),
                      subtitle: Text(index /2 == 0? 'you have audio call': 'call times is 12:22'),
                      trailing: Icon(index /2== 0 ? Icons.phone : Icons.video_call),

                    );
                  }
              ),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                      ),
                      title: Text('srihari'),
                      subtitle: Text(index /2 == 0? 'you have audio call': 'call times is 12:22'),
                      trailing: Icon(index /2== 0 ? Icons.phone : Icons.video_call),

                    );
                  }
              ),

             ]
             ),
       ),
    );
  }
}
