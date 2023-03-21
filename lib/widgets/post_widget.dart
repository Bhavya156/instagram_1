import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget scrollablePost(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: ListView.separated(
      // physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, i) => const likeWidget(),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: 10,
    ),
  );
}

// ignore: camel_case_types
class likeWidget extends StatefulWidget {
  const likeWidget({super.key});

  @override
  State<likeWidget> createState() => _likeWidgetState();
}

// ignore: camel_case_types
class _likeWidgetState extends State<likeWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 650,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: const ListTile(
                leading: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.deepOrangeAccent,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/002.png'),
                      radius: 20,
                    )),
                title: Text(
                  'gdsc_charusat',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'default',
                      fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.settings)),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 450,
            child: Image.asset(
              'assets/images/001.jpg',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => _incrementCounter(),
                        icon: const Icon(CupertinoIcons.heart),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.chat_bubble,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.paperplane)),
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.bookmark),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Liked by $_counter people',
                          style: const TextStyle(fontFamily: 'default'),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children:const [
                            Text(
                              'gdsc_charusat',
                              style: TextStyle(fontFamily: 'default', fontWeight: FontWeight.w600),
                            ),
                            Text(' My first post on Instagram Clone', style: TextStyle(fontFamily: 'default', fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 25,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                                hintText: 'Add a comment...', hintStyle: TextStyle(fontFamily: 'default')),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
