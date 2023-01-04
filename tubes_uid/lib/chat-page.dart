import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/ChatModel.dart';
import 'package:tubes_uid/chat-detail-page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        chatPhoto: "assets/chat/catK.png",
        name: "Cat Keeper",
        chat:
            "Hai, terima kasih sudah mengunjungi penangkaran kami.. \nAnda dapat mengambil hewan peliharaan anda pada lokasi penangkaran kami di Jl. Cibogo No. 19, Bandung. \nJika terdapat kendala, anda dapat berkonsultasi pada kami melalui chat.",
        status: "online",
        time: "16.25",
        day: "Today"),
    ChatModel(
        chatPhoto: "assets/chat/birdK.png",
        name: "Bird Keeper",
        chat:
            "Hai, terima kasih sudah mengunjungi penangkaran kami.. \nAnda dapat mengambil hewan peliharaan anda pada lokasi penangkaran kami di Jl. Cibogo No. 19, Bandung. \nJika terdapat kendala, anda dapat berkonsultasi pada kami melalui chat.",
        status: "Last seen 10 minutes ago",
        time: "21.28",
        day: "25 Mei"),
    ChatModel(
        chatPhoto: "assets/chat/rabbitK.png",
        name: "Rabbit Keeper",
        chat:
            "Hai, terima kasih sudah mengunjungi penangkaran kami.. \nAnda dapat mengambil hewan peliharaan anda pada lokasi penangkaran kami di Jl. Cibogo No. 19, Bandung. \nJika terdapat kendala, anda dapat berkonsultasi pada kami melalui chat.",
        status: "Last seen 20 minutes ago",
        time: "08.46 ",
        day: "19 Mei"),
    ChatModel(
        chatPhoto: "assets/chat/dogK.png",
        name: "Dog Keeper",
        chat:
            "Hai, terima kasih sudah mengunjungi penangkaran kami.. \nAnda dapat mengambil hewan peliharaan anda pada lokasi penangkaran kami di Jl. Cibogo No. 19, Bandung. \nJika terdapat kendala, anda dapat berkonsultasi pada kami melalui chat.",
        status: "online",
        time: "10.23",
        day: "15 Mei"),
  ];

  // List<String> chatPhotos = [
  //   "assets/chat/catK.png",
  //   "assets/chat/birdK.png",
  //   "assets/chat/rabbitK.png",
  //   "assets/chat/dogK.png"
  // ];

  // List<String> chatTittle = [
  //   "Cat Keeper",
  //   "Bird Keeper",
  //   "Rabbit Keeper",
  //   "Dog Keeper",
  // ];

  List<String> chatDate = [
    "16.25",
    "25/05",
    "19/05",
    "15/05",
  ];

  List<String> chatDesc = [
    "Hai, terima kasih sudah mengun...",
    "Hai, terima kasih sudah mengun...",
    "Hai, terima kasih sudah mengun...",
    "Hai, terima kasih sudah mengun...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFEFC7),
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 20,
        title: Text(
          "Chat",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color(0xFFF1F1F1)),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFBB9457),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/doodle.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(18, 17, 18, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height - 185,
                        width: 380,
                        child: Expanded(
                          child: Container(
                              height: 122,
                              width: 380,
                              child: MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                removeBottom: true,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: 4,
                                    itemBuilder: (context, i) {
                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChatDetailPage(
                                                          chatPhoto: chats[i]
                                                              .chatPhoto,
                                                          name: chats[i].name,
                                                          chat: chats[i].chat,
                                                          status:
                                                              chats[i].status,
                                                          time: chats[i].time,
                                                          day: chats[i].day,
                                                        )));
                                          },
                                          child: Container(
                                              height: 82,
                                              width: 392,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFBB9457),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    13, 9, 0, 9),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 64,
                                                      width: 64,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              '${chats[i].chatPhoto.toString()}'),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 225,
                                                              child: Text(
                                                                '${chats[i].name.toString()}',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color(
                                                                        0xFFEFEFEF)),
                                                              ),
                                                            ),
                                                            Text(
                                                              chatDate[i],
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color(
                                                                      0xFFEFEFEF)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          height: 21,
                                                          width: 245,
                                                          child: Text(
                                                            chatDesc[i],
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xFFEFEFEF),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )),
                                        ),
                                      );
                                    }),
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
