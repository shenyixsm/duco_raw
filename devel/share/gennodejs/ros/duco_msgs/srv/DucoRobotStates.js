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

let DucoRobotState = require('../msg/DucoRobotState.js');

//-----------------------------------------------------------

class DucoRobotStatesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoRobotStatesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoRobotStatesRequest
    let len;
    let data = new DucoRobotStatesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoRobotStatesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoRobotStatesRequest(null);
    return resolved;
    }
};

class DucoRobotStatesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_states = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_states')) {
        this.robot_states = initObj.robot_states
      }
      else {
        this.robot_states = new DucoRobotState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoRobotStatesResponse
    // Serialize message field [robot_states]
    bufferOffset = DucoRobotState.serialize(obj.robot_states, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoRobotStatesResponse
    let len;
    let data = new DucoRobotStatesResponse(null);
    // Deserialize message field [robot_states]
    data.robot_states = DucoRobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 855;
  }

  static datatype() {
    // Returns string type for a service object
    return 'duco_msgs/DucoRobotStatesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b889afd34d7cc1017eae13c8627bb97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    duco_msgs/DucoRobotState robot_states
    
    
    ================================================================================
    MSG: duco_msgs/DucoRobotState
    float64[7]  joint_expect_position
    float64[7]  joint_expect_velocity
    float64[7]  joint_expect_accelera
    float64[7]  joint_actual_position
    float64[7]  joint_actual_velocity
    float64[7]  joint_actual_accelera
    float64[7]  joint_actual_current
    float64[7]  joint_temperature
    float64[7] driver_temperature
    float64[7] cart_expect_position
    float64[7] cart_expect_velocity
    float64[7] cart_expect_accelera
    float64[7] cart_actual_position
    float64[7] cart_actual_velocity
    float64[7] cart_actual_accelera
    bool[7]   slave_ready
    bool collision
    int8 collision_axis
    bool emc_stop_signal
    int8 robot_state
    int32 robot_error
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DucoRobotStatesResponse(null);
    if (msg.robot_states !== undefined) {
      resolved.robot_states = DucoRobotState.Resolve(msg.robot_states)
    }
    else {
      resolved.robot_states = new DucoRobotState()
    }

    return resolved;
    }
};

module.exports = {
  Request: DucoRobotStatesRequest,
  Response: DucoRobotStatesResponse,
  md5sum() { return '7b889afd34d7cc1017eae13c8627bb97'; },
  datatype() { return 'duco_msgs/DucoRobotStates'; }
};
