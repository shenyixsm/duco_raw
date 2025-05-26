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

class DucoGetIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ref_joint = null;
      this.pos = null;
      this.rpy = null;
    }
    else {
      if (initObj.hasOwnProperty('ref_joint')) {
        this.ref_joint = initObj.ref_joint
      }
      else {
        this.ref_joint = [];
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoGetIKRequest
    // Serialize message field [ref_joint]
    bufferOffset = _arraySerializer.float32(obj.ref_joint, buffer, bufferOffset, null);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [rpy]
    bufferOffset = _arraySerializer.float32(obj.rpy, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoGetIKRequest
    let len;
    let data = new DucoGetIKRequest(null);
    // Deserialize message field [ref_joint]
    data.ref_joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rpy]
    data.rpy = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ref_joint.length;
    length += 4 * object.pos.length;
    length += 4 * object.rpy.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoGetIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '558f1d9d17046e2e1df9c03f2d2b2cb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] ref_joint
    float32[] pos
    float32[] rpy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoGetIKRequest(null);
    if (msg.ref_joint !== undefined) {
      resolved.ref_joint = msg.ref_joint;
    }
    else {
      resolved.ref_joint = []
    }

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

    return resolved;
    }
};

class DucoGetIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
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
    // Serializes a message object of type DucoGetIKResponse
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoGetIKResponse
    let len;
    let data = new DucoGetIKResponse(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoGetIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83f900751b71a68c79ce570ca0d2e109';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoGetIKResponse(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
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
  Request: DucoGetIKRequest,
  Response: DucoGetIKResponse,
  md5sum() { return '733c3eca96e1291b2ee883e81a04df06'; },
  datatype() { return 'duco_msgs/DucoGetIK'; }
};
