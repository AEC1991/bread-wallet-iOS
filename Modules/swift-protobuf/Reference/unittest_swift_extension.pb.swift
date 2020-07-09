// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_extension.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protos/unittest_swift_extension.proto - test proto
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
// -----------------------------------------------------------------------------
///
/// Test handling of extensions to deeply nested messages.
///
// -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct ProtobufUnittest_Extend_Foo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Bar {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var unknownFields = SwiftProtobuf.UnknownStorage()

    struct Baz: SwiftProtobuf.ExtensibleMessage {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      var a: Int32 {
        get {return _a ?? 0}
        set {_a = newValue}
      }
      /// Returns true if `a` has been explicitly set.
      var hasA: Bool {return self._a != nil}
      /// Clears the value of `a`. Subsequent reads from it will return its default value.
      mutating func clearA() {self._a = nil}

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}

      var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
      fileprivate var _a: Int32? = nil
    }

    init() {}
  }

  init() {}
}

struct ProtobufUnittest_Extend_C {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///      extensions 10 to 20;
  var c: Int64 {
    get {return _c ?? 0}
    set {_c = newValue}
  }
  /// Returns true if `c` has been explicitly set.
  var hasC: Bool {return self._c != nil}
  /// Clears the value of `c`. Subsequent reads from it will return its default value.
  mutating func clearC() {self._c = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _c: Int64? = nil
}

struct ProtobufUnittest_Extend_Msg1: SwiftProtobuf.ExtensibleMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
}

struct ProtobufUnittest_Extend_Msg2: SwiftProtobuf.ExtensibleMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
}

struct ProtobufUnittest_Extend_MsgNoStorage: SwiftProtobuf.ExtensibleMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var x: Int32 {
    get {return _x ?? 0}
    set {_x = newValue}
  }
  /// Returns true if `x` has been explicitly set.
  var hasX: Bool {return self._x != nil}
  /// Clears the value of `x`. Subsequent reads from it will return its default value.
  mutating func clearX() {self._x = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
  fileprivate var _x: Int32? = nil
}

struct ProtobufUnittest_Extend_MsgUsesStorage: SwiftProtobuf.ExtensibleMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var x: Int32 {
    get {return _storage._x ?? 0}
    set {_uniqueStorage()._x = newValue}
  }
  /// Returns true if `x` has been explicitly set.
  var hasX: Bool {return _storage._x != nil}
  /// Clears the value of `x`. Subsequent reads from it will return its default value.
  mutating func clearX() {_uniqueStorage()._x = nil}

  /// Recursive class (i.e. - can build a graph), forces _StorageClass.
  var y: ProtobufUnittest_Extend_MsgUsesStorage {
    get {return _storage._y ?? ProtobufUnittest_Extend_MsgUsesStorage()}
    set {_uniqueStorage()._y = newValue}
  }
  /// Returns true if `y` has been explicitly set.
  var hasY: Bool {return _storage._y != nil}
  /// Clears the value of `y`. Subsequent reads from it will return its default value.
  mutating func clearY() {_uniqueStorage()._y = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Extension support defined in unittest_swift_extension.proto.

extension ProtobufUnittest_Extend_Foo.Bar.Baz {

  var ProtobufUnittest_Extend_b: String {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b) ?? String()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_b`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_b: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_b`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_b() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }

  var ProtobufUnittest_Extend_c: ProtobufUnittest_Extend_C {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C) ?? ProtobufUnittest_Extend_C()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_C`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_c: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_C`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_c() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C)
  }
}

extension ProtobufUnittest_Extend_Msg1 {

  var ProtobufUnittest_Extend_aB: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_a_b`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_aB: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_a_b`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_aB() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b)
  }
}

extension ProtobufUnittest_Extend_Msg2 {

  var ProtobufUnittest_Extend_aB: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_aB`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_aB: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_aB`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_aB() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB)
  }
}

extension ProtobufUnittest_Extend_MsgNoStorage {

  var ProtobufUnittest_Extend_extA: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_ext_a`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_extA: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_ext_a`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_extA() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a)
  }

  var ProtobufUnittest_Extend_extB: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_ext_b`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_extB: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_ext_b`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_extB() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b)
  }
}

extension ProtobufUnittest_Extend_MsgUsesStorage {

  var ProtobufUnittest_Extend_extC: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_ext_c`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_extC: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_ext_c`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_extC() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c)
  }

  var ProtobufUnittest_Extend_extD: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend_Extensions_ext_d`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend_extD: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend_Extensions_ext_d`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend_extD() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d)
  }

}

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let ProtobufUnittest_Extend_UnittestSwiftExtension_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  ProtobufUnittest_Extend_Extensions_b,
  ProtobufUnittest_Extend_Extensions_C,
  ProtobufUnittest_Extend_Extensions_a_b,
  ProtobufUnittest_Extend_Extensions_aB,
  ProtobufUnittest_Extend_Extensions_ext_a,
  ProtobufUnittest_Extend_Extensions_ext_b,
  ProtobufUnittest_Extend_Extensions_ext_c,
  ProtobufUnittest_Extend_Extensions_ext_d
]

let ProtobufUnittest_Extend_Extensions_b = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  _protobuf_fieldNumber: 100,
  fieldName: "protobuf_unittest.extend.b"
)

let ProtobufUnittest_Extend_Extensions_C = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalGroupExtensionField<ProtobufUnittest_Extend_C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  _protobuf_fieldNumber: 101,
  fieldName: "protobuf_unittest.extend.c"
)

let ProtobufUnittest_Extend_Extensions_a_b = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_Msg1>(
  _protobuf_fieldNumber: 1,
  fieldName: "protobuf_unittest.extend.a_b"
)

let ProtobufUnittest_Extend_Extensions_aB = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_Msg2>(
  _protobuf_fieldNumber: 1,
  fieldName: "protobuf_unittest.extend.aB"
)

let ProtobufUnittest_Extend_Extensions_ext_a = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgNoStorage>(
  _protobuf_fieldNumber: 100,
  fieldName: "protobuf_unittest.extend.ext_a"
)

let ProtobufUnittest_Extend_Extensions_ext_b = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgNoStorage>(
  _protobuf_fieldNumber: 101,
  fieldName: "protobuf_unittest.extend.ext_b"
)

let ProtobufUnittest_Extend_Extensions_ext_c = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgUsesStorage>(
  _protobuf_fieldNumber: 100,
  fieldName: "protobuf_unittest.extend.ext_c"
)

let ProtobufUnittest_Extend_Extensions_ext_d = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgUsesStorage>(
  _protobuf_fieldNumber: 101,
  fieldName: "protobuf_unittest.extend.ext_d"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest.extend"

extension ProtobufUnittest_Extend_Foo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Foo"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_Foo, rhs: ProtobufUnittest_Extend_Foo) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_Foo.Bar: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = ProtobufUnittest_Extend_Foo.protoMessageName + ".Bar"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_Foo.Bar, rhs: ProtobufUnittest_Extend_Foo.Bar) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = ProtobufUnittest_Extend_Foo.Bar.protoMessageName + ".Baz"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "a"),
  ]

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self._a)
      case 100..<1001:
        try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: ProtobufUnittest_Extend_Foo.Bar.Baz.self, fieldNumber: fieldNumber)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._a {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 100, end: 1001)
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_Foo.Bar.Baz, rhs: ProtobufUnittest_Extend_Foo.Bar.Baz) -> Bool {
    if lhs._a != rhs._a {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_C: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".C"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    999: .same(proto: "c"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 999: try decoder.decodeSingularInt64Field(value: &self._c)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._c {
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 999)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_C, rhs: ProtobufUnittest_Extend_C) -> Bool {
    if lhs._c != rhs._c {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_Msg1: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Msg1"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      if (1 <= fieldNumber && fieldNumber < 1001) {
        try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: ProtobufUnittest_Extend_Msg1.self, fieldNumber: fieldNumber)
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 1, end: 1001)
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_Msg1, rhs: ProtobufUnittest_Extend_Msg1) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_Msg2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Msg2"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      if (1 <= fieldNumber && fieldNumber < 1001) {
        try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: ProtobufUnittest_Extend_Msg2.self, fieldNumber: fieldNumber)
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 1, end: 1001)
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_Msg2, rhs: ProtobufUnittest_Extend_Msg2) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_MsgNoStorage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgNoStorage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
  ]

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self._x)
      case 100..<201:
        try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: ProtobufUnittest_Extend_MsgNoStorage.self, fieldNumber: fieldNumber)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._x {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 100, end: 201)
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_MsgNoStorage, rhs: ProtobufUnittest_Extend_MsgNoStorage) -> Bool {
    if lhs._x != rhs._x {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_MsgUsesStorage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgUsesStorage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
    2: .same(proto: "y"),
  ]

  fileprivate class _StorageClass {
    var _x: Int32? = nil
    var _y: ProtobufUnittest_Extend_MsgUsesStorage? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _x = source._x
      _y = source._y
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._y, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._x)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._y)
        case 100..<201:
          try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: ProtobufUnittest_Extend_MsgUsesStorage.self, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._x {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      }
      if let v = _storage._y {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 100, end: 201)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend_MsgUsesStorage, rhs: ProtobufUnittest_Extend_MsgUsesStorage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._x != rhs_storage._x {return false}
        if _storage._y != rhs_storage._y {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}