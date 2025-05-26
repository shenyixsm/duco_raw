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

class DucoGetFKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoGetFKRequest
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoGetFKRequest
    let len;
    let data = new DucoGetFKRequest(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoGetFKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edecb4b6fff50f927a908742515e167a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoGetFKRequest(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
    }

    return resolved;
    }
};

class DucoGetFKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
      this.rpy = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoGetFKResponse
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [rpy]
    bufferOffset = _arraySerializer.float32(obj.rpy, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoGetFKResponse
    let len;
    let data = new DucoGetFKResponse(null);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rpy]
    data.rpy = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pos.length;
    length += 4 * object.rpy.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoGetFKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9368ebb797527bfe0c6a0351f90a2ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pos
    float32[] rpy
    bool success
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoGetFKResponse(null);
    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = msg.rpy;
    }
    else {
      resolved.rpy = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: DucoGetFKRequest,
  Response: DucoGetFKResponse,
  md5sum() { return '2c07157d0fbbe168e2662645c6ac7844'; },
  datatype() { return 'duco_msgs/DucoGetFK'; }
};
