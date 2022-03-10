import 'dart:io';

import 'package:flutter/material.dart';

Future<void> testWebSocket() async {
  // WebSocket サーバーを立てる
  final HttpServer server = await HttpServer.bind('127.0.0.1', 8080);
  server
      .where((request) => request.uri.path == '/ws')
      .transform(WebSocketTransformer())
      .listen((WebSocket ws) => wsHandler(ws));
  debugPrint("Casino+ Center started");

  // サーバーに接続してみる
  testConnect();

  // 5秒まつ
  await Future.delayed(const Duration(seconds: 5), () {});
}

// サーバー側で イベントをコントロールする関数
wsHandler(WebSocket ws) {
  // WebSocketオブジェクトの ハッシュ を使うと クライアント を識別できる
  debugPrint('Center received open connection : ${ws.hashCode}');
  ws.listen(
    (message) {
      debugPrint('Center received message: $message');
      debugPrint('Center will send message');
      ws.add('hello this is Center');
    },
    onError: (error) {
      debugPrint('Center received error: $error');
    },
    onDone: (() {
      // 一つのクライアントとの接続がきれる毎に呼ばれる
      debugPrint(
          'Center received close connection ${ws.hashCode} closed with ${ws.closeCode} for ${ws.closeReason}');
    }),
  );
}

testConnect() async {
  debugPrint('App will open connection');
  WebSocket socket = await WebSocket.connect('ws://127.0.0.1:8080/ws');

  socket.listen(
    (message) {
      debugPrint('App received message: $message');
    },
    onError: (error) {
      debugPrint('App received error: $error');
    },
    onDone: () {
      debugPrint('App received close connection.');
    },
    cancelOnError: true,
  );

  debugPrint('App will send message');
  socket.add('hello this is App');

  try {
    debugPrint('App will close connection');
    await socket.close();
    //
    // await socket.done;
    //
    debugPrint('App did close connection');
  } catch (error) {
    debugPrint('App error $error');
  }
}
