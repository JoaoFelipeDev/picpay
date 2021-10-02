import 'package:flutter/material.dart';
import 'package:picpay/widgets/button_tab.widget.dart';

class PicPay extends StatefulWidget {
  // Costumização da AppBar
  @override
  _PicPayState createState() => _PicPayState();
}

class _PicPayState extends State<PicPay> {
  Widget biuldAppBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Row(children: [
            IconButton(
                icon: Icon(
                  Icons.qr_code_outlined,
                  color: Color(0xFF1B5E20),
                ),
                onPressed: () => {}),
            IconButton(
                icon: Icon(
                  Icons.settings_outlined,
                  color: Color(0xFF1B5E20),
                ),
                onPressed: () => {}),
            Spacer(),
            Column(children: [
              Text("Meu saldo", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "R\$ 4800,00",
                style: Theme.of(context).textTheme.headline6,
              )
            ]),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.card_giftcard_outlined,
                  color: Color(0xFF1B5E20),
                ),
                onPressed: () => {}),
            IconButton(
                icon: Icon(
                  Icons.question_answer_outlined,
                  color: Color(0xFF1B5E20),
                ),
                onPressed: () => {})
          ]),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () => {print("Clicado")},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black38,
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text("O que você quer pagar?", style: TextStyle(fontSize: 18))
                ],
              ),
            ),
          ),
        ]));
  }

  Widget biuldStory() {
    return Column(children: [
      Row(children: [
        ButtonTab(isSelected: true, text: "Sugestôes"),
        ButtonTab(isSelected: false, text: "Favoritos"),
      ]),
      Container(
          height: 110,
          margin: EdgeInsets.only(left: 5, top: 15),
          //desabilitar animação do scrol horizontal
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowGlow();
              return true;
            },
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return Container(
                  width: 90,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black26)),
                        child: FlutterLogo(),
                      ),
                      SizedBox(height: 5),
                      Flexible(
                        child: Text("Use maquininha",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                );
              },
            ),
          ))
    ]);
  }

  Widget biuldCard() {
    return Card(
        elevation: 3,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {},
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Icon(Icons.receipt_long_outlined,
                    color: Color(0xFF1B5E20), size: 30),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Seleção especial"),
                    Text("Promoções disponiveis",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_outlined,
                    size: 15, color: Color(0xFF1B5E20))
              ])),
        ));
  }

  Widget biuldAtividades() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: [
        Text("Atividades",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        Spacer(),
        ButtonTab(
          isSelected: false,
          text: "Todos",
          color: Colors.black,
        ),
        ButtonTab(
          isSelected: true,
          text: "Minhas",
          color: Color(0xFF1B5E20),
        )
      ]),
    );
  }

  Widget biuldCardAtividades1() {
    return Card(
      child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: FlutterLogo(),
                  ),
                  SizedBox(width: 10),
                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        text: 'Você ',
                        children: [
                          TextSpan(
                            text: 'enviou um',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(text: ' Pix'),
                        ]),
                  )
                ],
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text('Pagamento leitor de cartão sd com leitor de usb')),
              SizedBox(height: 100),
              Row(children: [
                Text('R\$ 50,00',
                    style: TextStyle(color: Colors.red, fontSize: 13)),
                SizedBox(width: 5),
                Text('|  7 dias atás', style: TextStyle(fontSize: 15)),
                SizedBox(width: 5),
                Icon(Icons.lock_outline_rounded, size: 15),
                Spacer(),
                Icon(Icons.chat_bubble_outline),
                Text("0"),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: _clicHeart(Colors.red),
                    child: Icon(Icons.favorite_border_outlined,
                        color: colorHeart)),
                Text('$favorite'),
              ])
            ],
          )),
    );
  }

  Widget biuldCardAtividades2() {
    return Card(
      child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: FlutterLogo(),
                  ),
                  SizedBox(width: 10),
                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        text: 'Você ',
                        children: [
                          TextSpan(
                            text: 'enviou um',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(text: ' Pix'),
                        ]),
                  )
                ],
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text('Pagamento leitor de cartão sd com leitor de usb')),
              SizedBox(height: 100),
              Row(children: [
                Text('R\$ 180,00',
                    style: TextStyle(color: Colors.red, fontSize: 13)),
                SizedBox(width: 5),
                Text('|  10 dias atás', style: TextStyle(fontSize: 15)),
                SizedBox(width: 5),
                Icon(Icons.lock_outline_rounded, size: 15),
                Spacer(),
                Icon(Icons.chat_bubble_outline),
                Text("0"),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: _clicHeart1,
                    child: Icon(Icons.favorite_border_outlined,
                        color: colorHeart1)),
                Text('$favorite1'),
              ])
            ],
          )),
    );
  }

  Color colorHeart;
  Color colorHeart1;

  int favorite = 0;
  int favorite1 = 0;

  _clicHeart(Color color) {
    setState(() {
      colorHeart = color;
      favorite = 1;
    });
  }

  _clicHeart1() {
    setState(() {
      colorHeart1 = Colors.red;
      favorite1 = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              biuldAppBar(context),
              SizedBox(height: 10),
              biuldStory(),
              SizedBox(height: 10),
              biuldCard(),
              SizedBox(height: 10),
              biuldAtividades(),
              biuldCardAtividades1(),
              SizedBox(height: 10),
              biuldCardAtividades2(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: 60,
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(width: 25),
                  Column(children: [
                    Icon(Icons.home, size: 35, color: Color(0xFF1B5E20)),
                  ]),
                  SizedBox(width: 40),
                  Column(children: [
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 35,
                    ),
                  ]),
                  SizedBox(width: 40),
                  Column(children: [
                    Icon(Icons.attach_money,
                        size: 35, color: Color(0xFF1B5E20)),
                  ]),
                  SizedBox(width: 40),
                  Column(children: [
                    Icon(
                      Icons.notifications_outlined,
                      size: 35,
                    ),
                  ]),
                  SizedBox(width: 40),
                  Column(children: [
                    Icon(
                      Icons.store_mall_directory_outlined,
                      size: 35,
                    ),
                  ]),
                ],
              )
            ],
          )),
    );
  }
}
