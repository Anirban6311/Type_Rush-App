import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient{

  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal(){
    socket = IO.io('http://172.20.40.153:3000' ,<String ,dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });

    socket!.connect();
  }

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}