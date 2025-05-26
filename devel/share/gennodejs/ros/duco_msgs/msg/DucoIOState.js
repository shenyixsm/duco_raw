// Auto-generated. Do not edit!

// (in-package duco_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DucoDigital = require('./DucoDigital.js');
let DucoAnalog = require('./DucoAnalog.js');

//-----------------------------------------------------------

class DucoIOState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.digital_in_states = null;
      this.digital_out_states = null;
      this.tool_in_states = null;
      this.tool_out_states = null;
      this.analog_in_states = null;
      this.analog_out_states = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = '';
      }
      if (initObj.hasOwnProperty('digital_in_states')) {
        this.digital_in_states = initObj.digital_in_states
      }
      else {
        this.digital_in_states = [];
      }
      if (initObj.hasOwnProperty('digital_out_states')) {
        this.digital_out_states = initObj.digital_out_states
      }
      else {
        this.digital_out_states = [];
      }
      if (initObj.hasOwnProperty('tool_in_states')) {
        this.tool_in_states = initObj.tool_in_states
      }
      else {
        this.tool_in_states = [];
      }
      if (initObj.hasOwnProperty('tool_out_states')) {
        this.tool_out_states = initObj.tool_out_states
      }
      else {
        this.tool_out_states = [];
      }
      if (initObj.hasOwnProperty('analog_in_states')) {
        this.analog_in_states = initObj.analog_in_states
      }
      else {
        this.analog_in_states = [];
      }
      if (initObj.hasOwnProperty('analog_out_states')) {
        this.analog_out_states = initObj.analog_out_states
      }
      else {
        this.analog_out_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoIOState
    // Serialize message field [stamp]
    bufferOffset = _serializer.string(obj.stamp, buffer, bufferOffset);
    // Serialize message field [digital_in_states]
    // Serialize the length for message field [digital_in_states]
    bufferOffset = _serializer.uint32(obj.digital_in_states.length, buffer, bufferOffset);
    obj.digital_in_states.forEach((val) => {
      bufferOffset = DucoDigital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [digital_out_states]
    // Serialize the length for message field [digital_out_states]
    bufferOffset = _serializer.uint32(obj.digital_out_states.length, buffer, bufferOffset);
    obj.digital_out_states.forEach((val) => {
      bufferOffset = DucoDigital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tool_in_states]
    // Serialize the length for message field [tool_in_states]
    bufferOffset = _serializer.uint32(obj.tool_in_states.length, buffer, bufferOffset);
    obj.tool_in_states.forEach((val) => {
      bufferOffset = DucoDigital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tool_out_states]
    // Serialize the length for message field [tool_out_states]
    bufferOffset = _serializer.uint32(obj.tool_out_states.length, buffer, bufferOffset);
    obj.tool_out_states.forEach((val) => {
      bufferOffset = DucoDigital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [analog_in_states]
    // Serialize the length for message field [analog_in_states]
    bufferOffset = _serializer.uint32(obj.analog_in_states.length, buffer, bufferOffset);
    obj.analog_in_states.forEach((val) => {
      bufferOffset = DucoAnalog.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [analog_out_states]
    // Serialize the length for message field [analog_out_states]
    bufferOffset = _serializer.uint32(obj.analog_out_states.length, buffer, bufferOffset);
    obj.analog_out_states.forEach((val) => {
      bufferOffset = DucoAnalog.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoIOState
    let len;
    let data = new DucoIOState(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [digital_in_states]
    // Deserialize array length for message field [digital_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_in_states[i] = DucoDigital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [digital_out_states]
    // Deserialize array length for message field [digital_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_out_states[i] = DucoDigital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tool_in_states]
    // Deserialize array length for message field [tool_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tool_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tool_in_states[i] = DucoDigital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tool_out_states]
    // Deserialize array length for message field [tool_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tool_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tool_out_states[i] = DucoDigital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [analog_in_states]
    // Deserialize array length for message field [analog_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_in_states[i] = DucoAnalog.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [analog_out_states]
    // Deserialize array length for message field [analog_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_out_states[i] = DucoAnalog.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.stamp.length;
    length += 3 * object.digital_in_states.length;
    length += 3 * object.digital_out_states.length;
    length += 3 * object.tool_in_states.length;
    length += 3 * object.tool_out_states.length;
    length += 9 * object.analog_in_states.length;
    length += 9 * object.analog_out_states.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'duco_msgs/DucoIOState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2117ca0370ade6c80af07d396a3ecddd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string stamp 
    DucoDigital[] digital_in_states
    DucoDigital[] digital_out_states
    DucoDigital[] tool_in_states
    DucoDigital[] tool_out_states
    DucoAnalog[] analog_in_states
    DucoAnalog[] analog_out_states
    
    
    
    ================================================================================
    MSG: duco_msgs/DucoDigital
    uint8 pin
    bool flag
    bool state
    
    ================================================================================
    MSG: duco_msgs/DucoAnalog
    uint8 pin
    float64 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoIOState(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = ''
    }

    if (msg.digital_in_states !== undefined) {
      resolved.digital_in_states = new Array(msg.digital_in_states.length);
      for (let i = 0; i < resolved.digital_in_states.length; ++i) {
        resolved.digital_in_states[i] = DucoDigital.Resolve(msg.digital_in_states[i]);
      }
    }
    else {
      resolved.digital_in_states = []
    }

    if (msg.digital_out_states !== undefined) {
      resolved.digital_out_states = new Array(msg.digital_out_states.length);
      for (let i = 0; i < resolved.digital_out_states.length; ++i) {
        resolved.digital_out_states[i] = DucoDigital.Resolve(msg.digital_out_states[i]);
      }
    }
    else {
      resolved.digital_out_states = []
    }

    if (msg.tool_in_states !== undefined) {
      resolved.tool_in_states = new Array(msg.tool_in_states.length);
      for (let i = 0; i < resolved.tool_in_states.length; ++i) {
        resolved.tool_in_states[i] = DucoDigital.Resolve(msg.tool_in_states[i]);
      }
    }
    else {
      resolved.tool_in_states = []
    }

    if (msg.tool_out_states !== undefined) {
      resolved.tool_out_states = new Array(msg.tool_out_states.length);
      for (let i = 0; i < resolved.tool_out_states.length; ++i) {
        resolved.tool_out_states[i] = DucoDigital.Resolve(msg.tool_out_states[i]);
      }
    }
    else {
      resolved.tool_out_states = []
    }

    if (msg.analog_in_states !== undefined) {
      resolved.analog_in_states = new Array(msg.analog_in_states.length);
      for (let i = 0; i < resolved.analog_in_states.length; ++i) {
        resolved.analog_in_states[i] = DucoAnalog.Resolve(msg.analog_in_states[i]);
      }
    }
    else {
      resolved.analog_in_states = []
    }

    if (msg.analog_out_states !== undefined) {
      resolved.analog_out_states = new Array(msg.analog_out_states.length);
      for (let i = 0; i < resolved.analog_out_states.length; ++i) {
        resolved.analog_out_states[i] = DucoAnalog.Resolve(msg.analog_out_states[i]);
      }
    }
    else {
      resolved.analog_out_states = []
    }

    return resolved;
    }
};

module.exports = DucoIOState;
