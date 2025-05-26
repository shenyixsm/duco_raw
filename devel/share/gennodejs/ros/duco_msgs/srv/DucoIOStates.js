// Auto-generated. Do not edit!

// (in-package duco_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DucoIOStatesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ioOper = null;
      this.type = null;
      this.port = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('ioOper')) {
        this.ioOper = initObj.ioOper
      }
      else {
        this.ioOper = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoIOStatesRequest
    // Serialize message field [ioOper]
    bufferOffset = _serializer.int8(obj.ioOper, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.int8(obj.port, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoIOStatesRequest
    let len;
    let data = new DucoIOStatesRequest(null);
    // Deserialize message field [ioOper]
    data.ioOper = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoIOStatesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '498c67270a90ac0f4a891a5f181ce99e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #IO 操作类型 Get Set
    int8 ioOper
    #IO 类型
    int8 type  # 0:gen io  1:tool io
    #IO 端口
    int8 port  #GEN IO 0--16  TOOL IO 0--1
    #SetIO 值
    bool value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoIOStatesRequest(null);
    if (msg.ioOper !== undefined) {
      resolved.ioOper = msg.ioOper;
    }
    else {
      resolved.ioOper = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

class DucoIOStatesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoIOStatesResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoIOStatesResponse
    let len;
    let data = new DucoIOStatesResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoIOStatesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #获取操作结果
    bool result
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoIOStatesResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: DucoIOStatesRequest,
  Response: DucoIOStatesResponse,
  md5sum() { return 'd73a38548e6ecc94c1d3393d8cbc66ab'; },
  datatype() { return 'duco_msgs/DucoIOStates'; }
};
