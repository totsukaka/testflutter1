import 'package:flutter/material.dart';
import 'package:flutter_app2/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'テストアプリgit',
          ),
          backgroundColor: Colors.green,
          actions: [
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  // TODO
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  // TODO
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                          'https://yt3.ggpht.com/ytc/AAUvwng4tQ0GjNvQN6XMMV8G4ISM5HXt-y2xhvFSMPiD=s88-c-k-c0x00ffffff-no-rj'),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        const Text('テストFlutter大学'),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: () {
                            // TODO
                          },
                        ),
                      ],
                    ),
                    // Image.asset('images/teniti.jpg'),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async{
                        // TODO 画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );

                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.asset('images/teniti.jpg'),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'リストを作る　${items[index]}',
                            // textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '267回再生',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '5日前',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
