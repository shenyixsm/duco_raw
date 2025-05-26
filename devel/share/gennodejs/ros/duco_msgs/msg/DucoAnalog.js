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

class DucoAnalog {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoAnalog
    // Serialize message field [pin]
    bufferOffset = _serializer.uint8(obj.pin, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.float64(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoAnalog
    let len;
    let data = new DucoAnalog(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'duco_msgs/DucoAnalog';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4fdd0f2fe59ae5f40617c11fc52844a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 pin
    float64 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoAnalog(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0.0
    }

    return resolved;
    }
};

module.exports = DucoAnalog;
