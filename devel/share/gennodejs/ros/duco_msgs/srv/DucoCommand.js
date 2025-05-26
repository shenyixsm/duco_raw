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

class DucoCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.commandType = null;
      this.operateType = null;
      this.script = null;
      this.program = null;
      this.col_on = null;
      this.sensitivity = null;
    }
    else {
      if (initObj.hasOwnProperty('commandType')) {
        this.commandType = initObj.commandType
      }
      else {
        this.commandType = 0;
      }
      if (initObj.hasOwnProperty('operateType')) {
        this.operateType = initObj.operateType
      }
      else {
        this.operateType = 0;
      }
      if (initObj.hasOwnProperty('script')) {
        this.script = initObj.script
      }
      else {
        this.script = '';
      }
      if (initObj.hasOwnProperty('program')) {
        this.program = initObj.program
      }
      else {
        this.program = '';
      }
      if (initObj.hasOwnProperty('col_on')) {
        this.col_on = initObj.col_on
      }
      else {
        this.col_on = false;
      }
      if (initObj.hasOwnProperty('sensitivity')) {
        this.sensitivity = initObj.sensitivity
      }
      else {
        this.sensitivity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoCommandRequest
    // Serialize message field [commandType]
    bufferOffset = _serializer.int8(obj.commandType, buffer, bufferOffset);
    // Serialize message field [operateType]
    bufferOffset = _serializer.int8(obj.operateType, buffer, bufferOffset);
    // Serialize message field [script]
    bufferOffset = _serializer.string(obj.script, buffer, bufferOffset);
    // Serialize message field [program]
    bufferOffset = _serializer.string(obj.program, buffer, bufferOffset);
    // Serialize message field [col_on]
    bufferOffset = _serializer.bool(obj.col_on, buffer, bufferOffset);
    // Serialize message field [sensitivity]
    bufferOffset = _serializer.int8(obj.sensitivity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoCommandRequest
    let len;
    let data = new DucoCommandRequest(null);
    // Deserialize message field [commandType]
    data.commandType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [operateType]
    data.operateType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [script]
    data.script = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [program]
    data.program = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [col_on]
    data.col_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sensitivity]
    data.sensitivity = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.script.length;
    length += object.program.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa463fb7a35726e52ee3b1e6139d69b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #command type
    int8 commandType
    int8 operateType
    
    #script
    string script
    
    #program name
    string program
    
    #col_control
    bool col_on
    int8 sensitivity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoCommandRequest(null);
    if (msg.commandType !== undefined) {
      resolved.commandType = msg.commandType;
    }
    else {
      resolved.commandType = 0
    }

    if (msg.operateType !== undefined) {
      resolved.operateType = msg.operateType;
    }
    else {
      resolved.operateType = 0
    }

    if (msg.script !== undefined) {
      resolved.script = msg.script;
    }
    else {
      resolved.script = ''
    }

    if (msg.program !== undefined) {
      resolved.program = msg.program;
    }
    else {
      resolved.program = ''
    }

    if (msg.col_on !== undefined) {
      resolved.col_on = msg.col_on;
    }
    else {
      resolved.col_on = false
    }

    if (msg.sensitivity !== undefined) {
      resolved.sensitivity = msg.sensitivity;
    }
    else {
      resolved.sensitivity = 0
    }

    return resolved;
    }
};

class DucoCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoCommandResponse
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoCommandResponse
    let len;
    let data = new DucoCommandResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a2f37ef2ba405f0c7a15cc72663d6f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #true:finish false:error
    int32 state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoCommandResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: DucoCommandRequest,
  Response: DucoCommandResponse,
  md5sum() { return '8413a3d40877c7c622b23a57cfe681a7'; },
  datatype() { return 'duco_msgs/DucoCommand'; }
};
