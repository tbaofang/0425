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

class myLaser {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.serial = null;
    }
    else {
      if (initObj.hasOwnProperty('serial')) {
        this.serial = initObj.serial
      }
      else {
        this.serial = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myLaser
    // Serialize message field [serial]
    bufferOffset = _arraySerializer.float64(obj.serial, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myLaser
    let len;
    let data = new myLaser(null);
    // Deserialize message field [serial]
    data.serial = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.serial.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path/myLaser';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8b094b0dd476a7b3679b1db6012cbd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] serial 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myLaser(null);
    if (msg.serial !== undefined) {
      resolved.serial = msg.serial;
    }
    else {
      resolved.serial = []
    }

    return resolved;
    }
};

module.exports = myLaser;
