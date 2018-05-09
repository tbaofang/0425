// Auto-generated. Do not edit!

// (in-package path.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class serial {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vk = null;
      this.wk = null;
    }
    else {
      if (initObj.hasOwnProperty('vk')) {
        this.vk = initObj.vk
      }
      else {
        this.vk = 0.0;
      }
      if (initObj.hasOwnProperty('wk')) {
        this.wk = initObj.wk
      }
      else {
        this.wk = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serial
    // Serialize message field [vk]
    bufferOffset = _serializer.float32(obj.vk, buffer, bufferOffset);
    // Serialize message field [wk]
    bufferOffset = _serializer.float32(obj.wk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serial
    let len;
    let data = new serial(null);
    // Deserialize message field [vk]
    data.vk = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wk]
    data.wk = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path/serial';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1d934fb5105682f89baa76d53ad978a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vk
    float32 wk
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serial(null);
    if (msg.vk !== undefined) {
      resolved.vk = msg.vk;
    }
    else {
      resolved.vk = 0.0
    }

    if (msg.wk !== undefined) {
      resolved.wk = msg.wk;
    }
    else {
      resolved.wk = 0.0
    }

    return resolved;
    }
};

module.exports = serial;
