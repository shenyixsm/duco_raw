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

class DucoRobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_expect_position = null;
      this.joint_expect_velocity = null;
      this.joint_expect_accelera = null;
      this.joint_actual_position = null;
      this.joint_actual_velocity = null;
      this.joint_actual_accelera = null;
      this.joint_actual_current = null;
      this.joint_temperature = null;
      this.driver_temperature = null;
      this.cart_expect_position = null;
      this.cart_expect_velocity = null;
      this.cart_expect_accelera = null;
      this.cart_actual_position = null;
      this.cart_actual_velocity = null;
      this.cart_actual_accelera = null;
      this.slave_ready = null;
      this.collision = null;
      this.collision_axis = null;
      this.emc_stop_signal = null;
      this.robot_state = null;
      this.robot_error = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_expect_position')) {
        this.joint_expect_position = initObj.joint_expect_position
      }
      else {
        this.joint_expect_position = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('joint_expect_velocity')) {
        this.joint_expect_velocity = initObj.joint_expect_velocity
      }
      else {
        this.joint_expect_velocity = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('joint_expect_accelera')) {
        this.joint_expect_accelera = initObj.joint_expect_accelera
      }
      else {
        this.joint_expect_accelera = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('joint_actual_position')) {
        this.joint_actual_position = initObj.joint_actual_position
      }
      else {
        this.joint_actual_position = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('joint_actual_velocity')) {
        this.joint_actual_velocity = initObj.joint_actual_velocity
      }
      else {
        this.joint_actual_velocity = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('joint_actual_accelera')) {
        this.joint_actual_accelera = initObj.joint_actual_accelera
      }
      else {
        this.joint_actual_accelera = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('joint_actual_current')) {
        this.joint_actual_current = initObj.joint_actual_current
      }
      else {
        this.joint_actual_current = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('joint_temperature')) {
        this.joint_temperature = initObj.joint_temperature
      }
      else {
        this.joint_temperature = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('driver_temperature')) {
        this.driver_temperature = initObj.driver_temperature
      }
      else {
        this.driver_temperature = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cart_expect_position')) {
        this.cart_expect_position = initObj.cart_expect_position
      }
      else {
        this.cart_expect_position = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cart_expect_velocity')) {
        this.cart_expect_velocity = initObj.cart_expect_velocity
      }
      else {
        this.cart_expect_velocity = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cart_expect_accelera')) {
        this.cart_expect_accelera = initObj.cart_expect_accelera
      }
      else {
        this.cart_expect_accelera = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cart_actual_position')) {
        this.cart_actual_position = initObj.cart_actual_position
      }
      else {
        this.cart_actual_position = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cart_actual_velocity')) {
        this.cart_actual_velocity = initObj.cart_actual_velocity
      }
      else {
        this.cart_actual_velocity = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cart_actual_accelera')) {
        this.cart_actual_accelera = initObj.cart_actual_accelera
      }
      else {
        this.cart_actual_accelera = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('slave_ready')) {
        this.slave_ready = initObj.slave_ready
      }
      else {
        this.slave_ready = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('collision')) {
        this.collision = initObj.collision
      }
      else {
        this.collision = false;
      }
      if (initObj.hasOwnProperty('collision_axis')) {
        this.collision_axis = initObj.collision_axis
      }
      else {
        this.collision_axis = 0;
      }
      if (initObj.hasOwnProperty('emc_stop_signal')) {
        this.emc_stop_signal = initObj.emc_stop_signal
      }
      else {
        this.emc_stop_signal = false;
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = 0;
      }
      if (initObj.hasOwnProperty('robot_error')) {
        this.robot_error = initObj.robot_error
      }
      else {
        this.robot_error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DucoRobotState
    // Check that the constant length array field [joint_expect_position] has the right length
    if (obj.joint_expect_position.length !== 7) {
      throw new Error('Unable to serialize array field joint_expect_position - length must be 7')
    }
    // Serialize message field [joint_expect_position]
    bufferOffset = _arraySerializer.float64(obj.joint_expect_position, buffer, bufferOffset, 7);
    // Check that the constant length array field [joint_expect_velocity] has the right length
    if (obj.joint_expect_velocity.length !== 7) {
      throw new Error('Unable to serialize array field joint_expect_velocity - length must be 7')
    }
    // Serialize message field [joint_expect_velocity]
    bufferOffset = _arraySerializer.float64(obj.joint_expect_velocity, buffer, bufferOffset, 7);
    // Check that the constant length array field [joint_expect_accelera] has the right length
    if (obj.joint_expect_accelera.length !== 7) {
      throw new Error('Unable to serialize array field joint_expect_accelera - length must be 7')
    }
    // Serialize message field [joint_expect_accelera]
    bufferOffset = _arraySerializer.float64(obj.joint_expect_accelera, buffer, bufferOffset, 7);
    // Check that the constant length array field [joint_actual_position] has the right length
    if (obj.joint_actual_position.length !== 7) {
      throw new Error('Unable to serialize array field joint_actual_position - length must be 7')
    }
    // Serialize message field [joint_actual_position]
    bufferOffset = _arraySerializer.float64(obj.joint_actual_position, buffer, bufferOffset, 7);
    // Check that the constant length array field [joint_actual_velocity] has the right length
    if (obj.joint_actual_velocity.length !== 7) {
      throw new Error('Unable to serialize array field joint_actual_velocity - length must be 7')
    }
    // Serialize message field [joint_actual_velocity]
    bufferOffset = _arraySerializer.float64(obj.joint_actual_velocity, buffer, bufferOffset, 7);
    // Check that the constant length array field [joint_actual_accelera] has the right length
    if (obj.joint_actual_accelera.length !== 7) {
      throw new Error('Unable to serialize array field joint_actual_accelera - length must be 7')
    }
    // Serialize message field [joint_actual_accelera]
    bufferOffset = _arraySerializer.float64(obj.joint_actual_accelera, buffer, bufferOffset, 7);
    // Check that the constant length array field [joint_actual_current] has the right length
    if (obj.joint_actual_current.length !== 7) {
      throw new Error('Unable to serialize array field joint_actual_current - length must be 7')
    }
    // Serialize message field [joint_actual_current]
    bufferOffset = _arraySerializer.float64(obj.joint_actual_current, buffer, bufferOffset, 7);
    // Check that the constant length array field [joint_temperature] has the right length
    if (obj.joint_temperature.length !== 7) {
      throw new Error('Unable to serialize array field joint_temperature - length must be 7')
    }
    // Serialize message field [joint_temperature]
    bufferOffset = _arraySerializer.float64(obj.joint_temperature, buffer, bufferOffset, 7);
    // Check that the constant length array field [driver_temperature] has the right length
    if (obj.driver_temperature.length !== 7) {
      throw new Error('Unable to serialize array field driver_temperature - length must be 7')
    }
    // Serialize message field [driver_temperature]
    bufferOffset = _arraySerializer.float64(obj.driver_temperature, buffer, bufferOffset, 7);
    // Check that the constant length array field [cart_expect_position] has the right length
    if (obj.cart_expect_position.length !== 7) {
      throw new Error('Unable to serialize array field cart_expect_position - length must be 7')
    }
    // Serialize message field [cart_expect_position]
    bufferOffset = _arraySerializer.float64(obj.cart_expect_position, buffer, bufferOffset, 7);
    // Check that the constant length array field [cart_expect_velocity] has the right length
    if (obj.cart_expect_velocity.length !== 7) {
      throw new Error('Unable to serialize array field cart_expect_velocity - length must be 7')
    }
    // Serialize message field [cart_expect_velocity]
    bufferOffset = _arraySerializer.float64(obj.cart_expect_velocity, buffer, bufferOffset, 7);
    // Check that the constant length array field [cart_expect_accelera] has the right length
    if (obj.cart_expect_accelera.length !== 7) {
      throw new Error('Unable to serialize array field cart_expect_accelera - length must be 7')
    }
    // Serialize message field [cart_expect_accelera]
    bufferOffset = _arraySerializer.float64(obj.cart_expect_accelera, buffer, bufferOffset, 7);
    // Check that the constant length array field [cart_actual_position] has the right length
    if (obj.cart_actual_position.length !== 7) {
      throw new Error('Unable to serialize array field cart_actual_position - length must be 7')
    }
    // Serialize message field [cart_actual_position]
    bufferOffset = _arraySerializer.float64(obj.cart_actual_position, buffer, bufferOffset, 7);
    // Check that the constant length array field [cart_actual_velocity] has the right length
    if (obj.cart_actual_velocity.length !== 7) {
      throw new Error('Unable to serialize array field cart_actual_velocity - length must be 7')
    }
    // Serialize message field [cart_actual_velocity]
    bufferOffset = _arraySerializer.float64(obj.cart_actual_velocity, buffer, bufferOffset, 7);
    // Check that the constant length array field [cart_actual_accelera] has the right length
    if (obj.cart_actual_accelera.length !== 7) {
      throw new Error('Unable to serialize array field cart_actual_accelera - length must be 7')
    }
    // Serialize message field [cart_actual_accelera]
    bufferOffset = _arraySerializer.float64(obj.cart_actual_accelera, buffer, bufferOffset, 7);
    // Check that the constant length array field [slave_ready] has the right length
    if (obj.slave_ready.length !== 7) {
      throw new Error('Unable to serialize array field slave_ready - length must be 7')
    }
    // Serialize message field [slave_ready]
    bufferOffset = _arraySerializer.bool(obj.slave_ready, buffer, bufferOffset, 7);
    // Serialize message field [collision]
    bufferOffset = _serializer.bool(obj.collision, buffer, bufferOffset);
    // Serialize message field [collision_axis]
    bufferOffset = _serializer.int8(obj.collision_axis, buffer, bufferOffset);
    // Serialize message field [emc_stop_signal]
    bufferOffset = _serializer.bool(obj.emc_stop_signal, buffer, bufferOffset);
    // Serialize message field [robot_state]
    bufferOffset = _serializer.int8(obj.robot_state, buffer, bufferOffset);
    // Serialize message field [robot_error]
    bufferOffset = _serializer.int32(obj.robot_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DucoRobotState
    let len;
    let data = new DucoRobotState(null);
    // Deserialize message field [joint_expect_position]
    data.joint_expect_position = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [joint_expect_velocity]
    data.joint_expect_velocity = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [joint_expect_accelera]
    data.joint_expect_accelera = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [joint_actual_position]
    data.joint_actual_position = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [joint_actual_velocity]
    data.joint_actual_velocity = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [joint_actual_accelera]
    data.joint_actual_accelera = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [joint_actual_current]
    data.joint_actual_current = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [joint_temperature]
    data.joint_temperature = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [driver_temperature]
    data.driver_temperature = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [cart_expect_position]
    data.cart_expect_position = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [cart_expect_velocity]
    data.cart_expect_velocity = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [cart_expect_accelera]
    data.cart_expect_accelera = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [cart_actual_position]
    data.cart_actual_position = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [cart_actual_velocity]
    data.cart_actual_velocity = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [cart_actual_accelera]
    data.cart_actual_accelera = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [slave_ready]
    data.slave_ready = _arrayDeserializer.bool(buffer, bufferOffset, 7)
    // Deserialize message field [collision]
    data.collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collision_axis]
    data.collision_axis = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [emc_stop_signal]
    data.emc_stop_signal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robot_state]
    data.robot_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [robot_error]
    data.robot_error = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 855;
  }

  static datatype() {
    // Returns string type for a message object
    return 'duco_msgs/DucoRobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28ff9df01133ab7a99e78c6a90ffd27e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DucoRobotState(null);
    if (msg.joint_expect_position !== undefined) {
      resolved.joint_expect_position = msg.joint_expect_position;
    }
    else {
      resolved.joint_expect_position = new Array(7).fill(0)
    }

    if (msg.joint_expect_velocity !== undefined) {
      resolved.joint_expect_velocity = msg.joint_expect_velocity;
    }
    else {
      resolved.joint_expect_velocity = new Array(7).fill(0)
    }

    if (msg.joint_expect_accelera !== undefined) {
      resolved.joint_expect_accelera = msg.joint_expect_accelera;
    }
    else {
      resolved.joint_expect_accelera = new Array(7).fill(0)
    }

    if (msg.joint_actual_position !== undefined) {
      resolved.joint_actual_position = msg.joint_actual_position;
    }
    else {
      resolved.joint_actual_position = new Array(7).fill(0)
    }

    if (msg.joint_actual_velocity !== undefined) {
      resolved.joint_actual_velocity = msg.joint_actual_velocity;
    }
    else {
      resolved.joint_actual_velocity = new Array(7).fill(0)
    }

    if (msg.joint_actual_accelera !== undefined) {
      resolved.joint_actual_accelera = msg.joint_actual_accelera;
    }
    else {
      resolved.joint_actual_accelera = new Array(7).fill(0)
    }

    if (msg.joint_actual_current !== undefined) {
      resolved.joint_actual_current = msg.joint_actual_current;
    }
    else {
      resolved.joint_actual_current = new Array(7).fill(0)
    }

    if (msg.joint_temperature !== undefined) {
      resolved.joint_temperature = msg.joint_temperature;
    }
    else {
      resolved.joint_temperature = new Array(7).fill(0)
    }

    if (msg.driver_temperature !== undefined) {
      resolved.driver_temperature = msg.driver_temperature;
    }
    else {
      resolved.driver_temperature = new Array(7).fill(0)
    }

    if (msg.cart_expect_position !== undefined) {
      resolved.cart_expect_position = msg.cart_expect_position;
    }
    else {
      resolved.cart_expect_position = new Array(7).fill(0)
    }

    if (msg.cart_expect_velocity !== undefined) {
      resolved.cart_expect_velocity = msg.cart_expect_velocity;
    }
    else {
      resolved.cart_expect_velocity = new Array(7).fill(0)
    }

    if (msg.cart_expect_accelera !== undefined) {
      resolved.cart_expect_accelera = msg.cart_expect_accelera;
    }
    else {
      resolved.cart_expect_accelera = new Array(7).fill(0)
    }

    if (msg.cart_actual_position !== undefined) {
      resolved.cart_actual_position = msg.cart_actual_position;
    }
    else {
      resolved.cart_actual_position = new Array(7).fill(0)
    }

    if (msg.cart_actual_velocity !== undefined) {
      resolved.cart_actual_velocity = msg.cart_actual_velocity;
    }
    else {
      resolved.cart_actual_velocity = new Array(7).fill(0)
    }

    if (msg.cart_actual_accelera !== undefined) {
      resolved.cart_actual_accelera = msg.cart_actual_accelera;
    }
    else {
      resolved.cart_actual_accelera = new Array(7).fill(0)
    }

    if (msg.slave_ready !== undefined) {
      resolved.slave_ready = msg.slave_ready;
    }
    else {
      resolved.slave_ready = new Array(7).fill(0)
    }

    if (msg.collision !== undefined) {
      resolved.collision = msg.collision;
    }
    else {
      resolved.collision = false
    }

    if (msg.collision_axis !== undefined) {
      resolved.collision_axis = msg.collision_axis;
    }
    else {
      resolved.collision_axis = 0
    }

    if (msg.emc_stop_signal !== undefined) {
      resolved.emc_stop_signal = msg.emc_stop_signal;
    }
    else {
      resolved.emc_stop_signal = false
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = 0
    }

    if (msg.robot_error !== undefined) {
      resolved.robot_error = msg.robot_error;
    }
    else {
      resolved.robot_error = 0
    }

    return resolved;
    }
};

module.exports = DucoRobotState;
