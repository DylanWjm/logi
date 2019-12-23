// Auto-generated. Do not edit!

// (in-package button_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class button {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rev = null;
      this.rev1 = null;
      this.rev2 = null;
      this.rev3 = null;
    }
    else {
      if (initObj.hasOwnProperty('rev')) {
        this.rev = initObj.rev
      }
      else {
        this.rev = 0;
      }
      if (initObj.hasOwnProperty('rev1')) {
        this.rev1 = initObj.rev1
      }
      else {
        this.rev1 = 0;
      }
      if (initObj.hasOwnProperty('rev2')) {
        this.rev2 = initObj.rev2
      }
      else {
        this.rev2 = 0;
      }
      if (initObj.hasOwnProperty('rev3')) {
        this.rev3 = initObj.rev3
      }
      else {
        this.rev3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type button
    // Serialize message field [rev]
    bufferOffset = _serializer.uint8(obj.rev, buffer, bufferOffset);
    // Serialize message field [rev1]
    bufferOffset = _serializer.uint8(obj.rev1, buffer, bufferOffset);
    // Serialize message field [rev2]
    bufferOffset = _serializer.uint8(obj.rev2, buffer, bufferOffset);
    // Serialize message field [rev3]
    bufferOffset = _serializer.uint8(obj.rev3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type button
    let len;
    let data = new button(null);
    // Deserialize message field [rev]
    data.rev = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rev1]
    data.rev1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rev2]
    data.rev2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rev3]
    data.rev3 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'button_msgs/button';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '795f3e8875dcd732f3ceab1c4c1df2c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 rev
    uint8 rev1
    uint8 rev2
    uint8 rev3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new button(null);
    if (msg.rev !== undefined) {
      resolved.rev = msg.rev;
    }
    else {
      resolved.rev = 0
    }

    if (msg.rev1 !== undefined) {
      resolved.rev1 = msg.rev1;
    }
    else {
      resolved.rev1 = 0
    }

    if (msg.rev2 !== undefined) {
      resolved.rev2 = msg.rev2;
    }
    else {
      resolved.rev2 = 0
    }

    if (msg.rev3 !== undefined) {
      resolved.rev3 = msg.rev3;
    }
    else {
      resolved.rev3 = 0
    }

    return resolved;
    }
};

module.exports = button;
