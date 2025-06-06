// Auto-generated. Do not edit!

// (in-package duco_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DucoDigital {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.flag = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = false;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoDigital
    // Serialize message field [pin]
    bufferOffset = _serializer.uint8(obj.pin, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.bool(obj.flag, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoDigital
    let len;
    let data = new DucoDigital(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'duco_msgs/DucoDigital';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27fea16c33a8e446fcacfee31d199a86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 pin
    bool flag
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoDigital(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = false
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

module.exports = DucoDigital;
