

class Message {
  String? doc_id;
  String? token;
  String? name;
  String? avatar;
  String? last_msg;
  int? msg_num;
  int? online;

  Message({
    this.doc_id,
    this.token,
    this.name,
    this.avatar,
    this.last_msg,
    this.msg_num,
    this.online,
  });
}

class CallMessage {
  String? doc_id;
  String? token;
  String? name;
  String? avatar;
  String? call_time;
  String? type;


  CallMessage({
    this.doc_id,
    this.token,
    this.name,
    this.avatar,
    this.call_time,
    this.type,

  });
}
