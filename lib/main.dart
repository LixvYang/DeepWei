// ignore_for_file: unnecessary_null_comparison

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
      title: "深维",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("深维",
            textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        actions: <Widget>[],
      ),
      body: ListView(
        children: <Widget>[
          _Meditation(),
          _Fire(),
          _HerCity(),
          _Xiayu(),
          _Waves(),
          _Gentle(),
          _Street(),
          _Ice()
        ],
      ),
      endDrawer: DrawerHead(),
    );
  }
}

class _Meditation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Meditation();
  }
}

class _Fire extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Fire();
  }
}

class _HerCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HerCity();
  }
}

class _Xiayu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return XiaYu();
  }
}

class _Waves extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Waves();
  }
}

class _Gentle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Gentle();
  }
}

class _Street extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Street();
  }
}

class _Ice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Ice();
  }
}

class Meditation extends State {
  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: const Color(0xfff4b9ae),
      leading: const Icon(
        const IconData(0xe806, fontFamily: 'MyFlutterApp'),
        size: 6,
        color: Color(0xFFdd7e6b),
      ), // 左侧组件
      title: const Text(
        "冥想",
        style: const TextStyle(
            color: Color(0xFFdd7e6b),
            fontSize: 25,
            decorationStyle: TextDecorationStyle.dashed),
      ), // 标题
      trailing: Container(
        width: 100,
        height: 100,
        child: Image.asset("assets/images/meditation.jpg"),
      ),
      // 副标题
      subtitle: const Text(
        "流逝的不是时间\n是我们",
        style: TextStyle(
            color: Color(0xFFdd7e6b),
            decorationStyle: TextDecorationStyle.dashed),
      ),
      isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
      dense: false, // 是否使用缩小布局
      visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
      contentPadding: const EdgeInsets.all(20), // content 内间距
      enabled: true, // 是否可用，仅改变颜色
      // 点击事件回调
      onTap: _play,
      // 长按事件回调
      onLongPress: _pause,
      // 是否选中
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: Colors.transparent,
          width: 2,
        ),
      ),
      // focusColor: null,
      // hoverColor: Colors.orange[100]
    );
  }

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/meditation.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class Fire extends State {
  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ListTile(
        selectedTileColor: const Color(0xffeb8d8d),
        leading: const Icon(const IconData(0xe803, fontFamily: 'MyFlutterApp'),
            size: 6, color: Color(0xFFbf4141)), // 左侧组件
        title: const Text(
          "火花",
          style: const TextStyle(
              fontSize: 25,
              color: const Color(0xFFbf4141),
              decorationStyle: TextDecorationStyle.dashed),
        ), // 标题
        trailing: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/fire.jpg")),
        // 副标题
        subtitle: const Text(
          "不要温顺地走入\n那个良夜",
          style: TextStyle(
              color: Color(0xFFbf4141),
              decorationStyle: TextDecorationStyle.dashed),
        ),
        isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
        dense: false, // 是否使用缩小布局
        visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
        contentPadding: const EdgeInsets.all(20), // content 内间距
        enabled: true, // 是否可用，仅改变颜色
        // 点击事件回调
        onTap: _play,
        // 长按事件回调
        onLongPress: _pause,
        // 是否选中
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusColor: Colors.black,
        hoverColor: Colors.red[100]);
  }

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/fire.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class HerCity extends State {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        selectedTileColor: const Color(0xFFf4cccc),
        leading: const Icon(
          IconData(0xe807, fontFamily: 'MyFlutterApp'),
          size: 6,
          color: const Color(0xFFea9999),
        ), // 左侧组件
        title: const Text(
          "夜城",
          style: TextStyle(
              fontSize: 25,
              color: Color(0xFFea9999),
              decorationStyle: TextDecorationStyle.dashed),
        ), // 标题
        trailing: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/hercity.jpg")),
        // 副标题
        subtitle: const Text(
          "凝望着夜色中的\n城市",
          style: const TextStyle(
              color: Color(0xFFea9999),
              decorationStyle: TextDecorationStyle.dashed),
        ),
        isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
        dense: false, // 是否使用缩小布局
        visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
        contentPadding: const EdgeInsets.all(20), // content 内间距
        enabled: true, // 是否可用，仅改变颜色
        // 点击事件回调
        onTap: _play,
        // 长按事件回调
        onLongPress: _pause,
        // 是否选中
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusColor: Colors.black,
        hoverColor: Colors.pink[100]);
  }

  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/hercity.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class XiaYu extends State {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        selectedTileColor: const Color(0xFFc4d7a8),
        leading: const Icon(
          const IconData(0xe802, fontFamily: 'MyFlutterApp'),
          size: 6,
          color: const Color(0xff6aa84f),
        ), // 左侧组件
        title: const Text(
          "夏雨",
          style: TextStyle(
              fontSize: 25,
              color: Color(0xff6aa84f),
              decorationStyle: TextDecorationStyle.dashed),
        ), // 标题
        trailing: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/xiayu.jpg")),
        // 副标题
        subtitle: const Text("落在树叶上的\n雨滴",
            style: TextStyle(
                color: Color(0xff6aa84f),
                decorationStyle: TextDecorationStyle.dashed)),
        isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
        dense: false, // 是否使用缩小布局
        visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
        contentPadding: const EdgeInsets.all(20), // content 内间距
        enabled: true, // 是否可用，仅改变颜色
        // 点击事件回调
        onTap: _play,
        // 长按事件回调
        onLongPress: _pause,
        // 是否选中
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusColor: Colors.black,
        hoverColor: Colors.green[100]);
  }

  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/rainsleep.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class Waves extends State {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        selectedTileColor: const Color(0xffcfe2f3),
        leading: const Icon(
          const IconData(0xe801, fontFamily: 'MyFlutterApp'),
          size: 6,
          color: Color(0xFF6fa8dc),
        ), // 左侧组件
        title: const Text("海浪",
            style: const TextStyle(
              fontSize: 25,
              color: Color(0xFF6fa8dc),
            )), // 标题
        trailing: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/waves.jpg")),
        // 副标题
        subtitle: const Text("梦中的那片\n海域",
            style: TextStyle(
              color: const Color(0xFF6fa8dc),
            )),
        isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
        dense: false, // 是否使用缩小布局
        visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
        contentPadding: const EdgeInsets.all(20), // content 内间距
        enabled: true, // 是否可用，仅改变颜色
        // 点击事件回调
        onTap: _play,
        // 长按事件回调
        onLongPress: _pause,
        // 是否选中
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusColor: Colors.black,
        hoverColor: Colors.lightBlue[100]);
  }

  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/waves.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class Ice extends State {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        selectedTileColor: const Color(0xffd0e0e3),
        leading: const Icon(
          const IconData(0xe805, fontFamily: 'MyFlutterApp'),
          size: 6,
          color: Color(0xFF23a2b0),
        ), // 左侧组件
        title: const Text("雪山",
            style: const TextStyle(
              fontSize: 25,
              color: Color(0xFF23a2b0),
            )), // 标题
        trailing: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/ice.jpg")),
        // 副标题
        subtitle: const Text("没有阴影\n没有忧伤",
            style: TextStyle(
              color: const Color(0xFF23a2b0),
            )),
        isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
        dense: false, // 是否使用缩小布局
        visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
        contentPadding: const EdgeInsets.all(20), // content 内间距
        enabled: true, // 是否可用，仅改变颜色
        // 点击事件回调
        onTap: _play,
        // 长按事件回调
        onLongPress: _pause,
        // 是否选中
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusColor: Colors.black,
        hoverColor: Colors.blueGrey[100]);
  }

  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/ice.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class Gentle extends State {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        selectedTileColor: const Color(0xffd5b3eb),
        leading: const Icon(
          const IconData(0xe804, fontFamily: 'MyFlutterApp'),
          size: 6,
          color: Color(0xFFa04cd6),
        ), // 左侧组件
        title: const Text("温柔",
            style: const TextStyle(
              fontSize: 25,
              color: Color(0xFFa04cd6),
            )), // 标题
        trailing: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/gentle.jpg")),
        // 副标题
        subtitle: const Text("仿佛与时光一样\n短暂",
            style: TextStyle(
              color: const Color(0xFFa04cd6),
            )),
        isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
        dense: false, // 是否使用缩小布局
        visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
        contentPadding: const EdgeInsets.all(20), // content 内间距
        enabled: true, // 是否可用，仅改变颜色
        // 点击事件回调
        onTap: _play,
        // 长按事件回调
        onLongPress: _pause,
        // 是否选中
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusColor: Colors.black,
        hoverColor: Colors.orange[100]);
  }

  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/gentle.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class Street extends State {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        selectedTileColor: const Color(0xfff9cb9c),
        leading: const Icon(
          const IconData(0xe800, fontFamily: 'MyFlutterApp'),
          size: 6,
          color: Color(0xFFe69138),
        ), // 左侧组件
        title: const Text("街道",
            style: const TextStyle(
              fontSize: 25,
              color: Color(0xFFe69138),
            )), // 标题
        trailing: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/street.jpg")),
        // 副标题
        subtitle: const Text("当夜幕在门户间垂下\n空气变得温柔",
            style: TextStyle(
              color: const Color(0xFFe69138),
            )),
        isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
        dense: false, // 是否使用缩小布局
        visualDensity: const VisualDensity(horizontal: -4), // 紧凑程度
        contentPadding: const EdgeInsets.all(20), // content 内间距
        enabled: true, // 是否可用，仅改变颜色
        // 点击事件回调
        onTap: _play,
        // 长按事件回调
        onLongPress: _pause,
        // 是否选中
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusColor: Colors.black,
        hoverColor: Colors.deepOrange[100]);
  }

  bool _isSelected = false;
  int play = 1;
  static AudioCache musicCache = AudioCache();
  static AudioPlayer instance = AudioPlayer();

  void _play() async {
    musicCache = AudioCache();
    if (play == 1) {
      instance = await musicCache.loop("sounds/street.mp3");
      play = 0;
    }

    _isSelected = true;
    setState(() {});
  }

  void _pause() {
    if (instance != null) {
      instance.pause();
      play = 1;
    }
    _isSelected = false;
    setState(() {});
  }
}

class DrawerHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // 重要的Drawer组件
      child: ListView(
        // Flutter 可滚动组件
        padding: EdgeInsets.zero, // padding为0
        children: <Widget>[
          UserAccountsDrawerHeader(
            // UserAccountsDrawerHeader 可以设置用户头像、用户名、Email 等信息，显示一个符合纸墨设计规范的 drawer header。
            // 标题
            accountName: const Text('罹心',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87)),
            // 副标题
            accountEmail: const Text(
              'I write \nCode',
              style: TextStyle(color: Colors.black87),
            ),
            // Emails
            currentAccountPicture: const CircleAvatar(
              // 使用网络加载图像
              backgroundImage: AssetImage("assets/images/me.jpg"),
            ),
            // 圆角头像
            decoration: BoxDecoration(
                color: Colors.grey[100],
                image: DecorationImage(
                    image: AssetImage("assets/images/me.jpg"),
                    fit: BoxFit.cover, // 一种图像的布局方式
                    colorFilter: ColorFilter.mode(
                        Colors.grey[400]!.withOpacity(0.9),
                        BlendMode.hardLight))),
            //  BoxDecoration 用于制作背景
          ),
          // ListTile是下方的几个可点按List
          ListTile(
            // List标题
            // ignore: prefer_const_constructors
            title: Text(
              '首页',
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 18),
            ),
            trailing: const Icon(
              Icons.home, // Icon种类
              color: Colors.green, // Icon颜色
              size: 30, // Icon大小
            ),
            // 点按时间，这里可以做你想做的事情，如跳转、判断等等
            // 此处博主只使用了 Navigator.pop(context) 来手动关闭Drawer
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text(
              '简介:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text('支持多音乐播放的APP,\n点击播放\n长按停止\n支持同时播放'),
            trailing: Icon(
              Icons.child_care,
              color: Colors.blueGrey[400],
              size: 30.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text(
              '联系我',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text(
              'Email:yanglixin621@gmail.com\nWechat:y2690688423\nMixin:39427696\n',
              textAlign: TextAlign.left,
            ),
            trailing: const Icon(
              Icons.people_outline,
              color: Colors.purple,
              size: 30,
            ),
            onTap: () => {},
            // onTap: () => showDialog(
            //     context: context,
            //     builder: (context) {
            //       return AlertDialog(
            //         title: const Text('Tip'),
            //         content: const Text('快来联系我吧'),
            //         actions: <Widget>[
            //           FlatButton(
            //             child: const Text('OK'),
            //             onPressed: () => Navigator.of(context).pop(),
            //           ),
            //         ],
            //       );
            //     })
          ),
          ListTile(
            // List标题
            title: const Text(
              '反馈',
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 18),
            ),
            trailing: const Icon(
              Icons.help_outline, // Icon种类
              color: Colors.amber, // Icon颜色
              size: 30, // Icon大小
            ),
            // 点按时间，这里可以做你想做的事情，如跳转、判断等等
            // 此处博主只使用了 Navigator.pop(context) 来手动关闭Drawer
            onTap: () => showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Tip'),
                    content: const Text('快来联系我\n跟我反馈吧'),
                    actions: <Widget>[
                      FlatButton(
                        child: const Text('OK'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
