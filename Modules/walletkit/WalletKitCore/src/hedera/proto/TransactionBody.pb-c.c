/* Generated by the protocol buffer compiler.  DO NOT EDIT! */
/* Generated from: TransactionBody.proto */

/* Do not generate deprecated warnings for self */
#ifndef PROTOBUF_C__NO_DEPRECATED
#define PROTOBUF_C__NO_DEPRECATED
#endif

#include "TransactionBody.pb-c.h"
void   proto__transaction_body__init
                     (Proto__TransactionBody         *message)
{
  static const Proto__TransactionBody init_value = PROTO__TRANSACTION_BODY__INIT;
  *message = init_value;
}
size_t proto__transaction_body__get_packed_size
                     (const Proto__TransactionBody *message)
{
  assert(message->base.descriptor == &proto__transaction_body__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
size_t proto__transaction_body__pack
                     (const Proto__TransactionBody *message,
                      uint8_t       *out)
{
  assert(message->base.descriptor == &proto__transaction_body__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
size_t proto__transaction_body__pack_to_buffer
                     (const Proto__TransactionBody *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &proto__transaction_body__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
Proto__TransactionBody *
       proto__transaction_body__unpack
                     (ProtobufCAllocator  *allocator,
                      size_t               len,
                      const uint8_t       *data)
{
  return (Proto__TransactionBody *)
     protobuf_c_message_unpack (&proto__transaction_body__descriptor,
                                allocator, len, data);
}
void   proto__transaction_body__free_unpacked
                     (Proto__TransactionBody *message,
                      ProtobufCAllocator *allocator)
{
  if(!message)
    return;
  assert(message->base.descriptor == &proto__transaction_body__descriptor);
  protobuf_c_message_free_unpacked ((ProtobufCMessage*)message, allocator);
}
static const ProtobufCFieldDescriptor proto__transaction_body__field_descriptors[7] =
{
  {
    "transactionID",
    1,
    PROTOBUF_C_LABEL_NONE,
    PROTOBUF_C_TYPE_MESSAGE,
    0,   /* quantifier_offset */
    offsetof(Proto__TransactionBody, transactionid),
    &proto__transaction_id__descriptor,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "nodeAccountID",
    2,
    PROTOBUF_C_LABEL_NONE,
    PROTOBUF_C_TYPE_MESSAGE,
    0,   /* quantifier_offset */
    offsetof(Proto__TransactionBody, nodeaccountid),
    &proto__account_id__descriptor,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "transactionFee",
    3,
    PROTOBUF_C_LABEL_NONE,
    PROTOBUF_C_TYPE_UINT64,
    0,   /* quantifier_offset */
    offsetof(Proto__TransactionBody, transactionfee),
    NULL,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "transactionValidDuration",
    4,
    PROTOBUF_C_LABEL_NONE,
    PROTOBUF_C_TYPE_MESSAGE,
    0,   /* quantifier_offset */
    offsetof(Proto__TransactionBody, transactionvalidduration),
    &proto__duration__descriptor,
    NULL,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "generateRecord",
    5,
    PROTOBUF_C_LABEL_NONE,
    PROTOBUF_C_TYPE_BOOL,
    0,   /* quantifier_offset */
    offsetof(Proto__TransactionBody, generaterecord),
    NULL,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_DEPRECATED,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "memo",
    6,
    PROTOBUF_C_LABEL_NONE,
    PROTOBUF_C_TYPE_STRING,
    0,   /* quantifier_offset */
    offsetof(Proto__TransactionBody, memo),
    NULL,
    &protobuf_c_empty_string,
    0,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
  {
    "cryptoTransfer",
    14,
    PROTOBUF_C_LABEL_NONE,
    PROTOBUF_C_TYPE_MESSAGE,
    offsetof(Proto__TransactionBody, data_case),
    offsetof(Proto__TransactionBody, cryptotransfer),
    &proto__crypto_transfer_transaction_body__descriptor,
    NULL,
    0 | PROTOBUF_C_FIELD_FLAG_ONEOF,             /* flags */
    0,NULL,NULL    /* reserved1,reserved2, etc */
  },
};
static const unsigned proto__transaction_body__field_indices_by_name[] = {
  6,   /* field[6] = cryptoTransfer */
  4,   /* field[4] = generateRecord */
  5,   /* field[5] = memo */
  1,   /* field[1] = nodeAccountID */
  2,   /* field[2] = transactionFee */
  0,   /* field[0] = transactionID */
  3,   /* field[3] = transactionValidDuration */
};
static const ProtobufCIntRange proto__transaction_body__number_ranges[1 + 1] =
{
  { 1, 0 },
  { 0, 7 }
};
const ProtobufCMessageDescriptor proto__transaction_body__descriptor =
{
  PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC,
  "proto.TransactionBody",
  "TransactionBody",
  "Proto__TransactionBody",
  "proto",
  sizeof(Proto__TransactionBody),
  7,
  proto__transaction_body__field_descriptors,
  proto__transaction_body__field_indices_by_name,
  1,  proto__transaction_body__number_ranges,
  (ProtobufCMessageInit) proto__transaction_body__init,
  NULL,NULL,NULL    /* reserved[123] */
};
