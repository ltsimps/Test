import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color textColor = Color(0xff706F6D);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).accentColor
                  ])),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1509635214689-98ef31ec7e82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Lamar  Simpson",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Likes",
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    ShimmerText(
                                      textColor: textColor,
                                      text: "200",
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Funded",
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    ShimmerText(
                                      textColor: textColor,
                                      text: "\$2880.00",
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Mentored",
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    ShimmerText(
                                      textColor: textColor,
                                      text: '400',
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Shimmer.fromColors(
                    baseColor: textColor,
                    highlightColor:
                        Colors.white54, //Theme.of(context).accentColor,
                    period: Duration(seconds: 3),
                    loop: 3,
                    child: Text(
                      "Mantra:",
                      style: TextStyle(
                          //color: Theme.of(context).accentColor,
                          fontStyle: FontStyle.normal,
                          fontSize: 28.0),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'With the tuition costs of education rapidly skyrocketing to higher prices, will families be able to send their children to college?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class ShimmerText extends StatelessWidget {
  const ShimmerText({
    Key key,
    @required this.textColor,
    @required this.text,
    this.textAlign,
    this.loop,
  }) : super(key: key);

  final Color textColor;
  final String text;
  final TextAlign textAlign;
  final int loop;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: textColor,
      highlightColor: Colors.white54, //Theme.of(context).accentColor,
      period: Duration(seconds: 3),
      loop: loop ?? 2,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
          color: textColor,
        ),
        textAlign: textAlign ?? null,
      ),
    );
  }
}
