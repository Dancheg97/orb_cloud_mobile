///
//  Generated code. Do not modify.
//  source: lib/api/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIWCgZwYXNzZWQYASABKAhSBnBhc3NlZA==');
@$core.Deprecated('Use infInDescriptor instead')
const InfIn$json = const {
  '1': 'InfIn',
  '3': const [InfIn_Adress$json, InfIn_Text$json, InfIn_UserMarketAdr$json, InfIn_Empty$json],
};

@$core.Deprecated('Use infInDescriptor instead')
const InfIn_Adress$json = const {
  '1': 'Adress',
  '2': const [
    const {'1': 'adress', '3': 1, '4': 1, '5': 12, '10': 'adress'},
  ],
};

@$core.Deprecated('Use infInDescriptor instead')
const InfIn_Text$json = const {
  '1': 'Text',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

@$core.Deprecated('Use infInDescriptor instead')
const InfIn_UserMarketAdr$json = const {
  '1': 'UserMarketAdr',
  '2': const [
    const {'1': 'market_adress', '3': 1, '4': 1, '5': 12, '10': 'marketAdress'},
    const {'1': 'user_adress', '3': 2, '4': 1, '5': 12, '10': 'userAdress'},
  ],
};

@$core.Deprecated('Use infInDescriptor instead')
const InfIn_Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `InfIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infInDescriptor = $convert.base64Decode('CgVJbmZJbhogCgZBZHJlc3MSFgoGYWRyZXNzGAEgASgMUgZhZHJlc3MaGgoEVGV4dBISCgR0ZXh0GAEgASgJUgR0ZXh0GlUKDVVzZXJNYXJrZXRBZHISIwoNbWFya2V0X2FkcmVzcxgBIAEoDFIMbWFya2V0QWRyZXNzEh8KC3VzZXJfYWRyZXNzGAIgASgMUgp1c2VyQWRyZXNzGgcKBUVtcHR5');
@$core.Deprecated('Use infOutDescriptor instead')
const InfOut$json = const {
  '1': 'InfOut',
  '3': const [InfOut_User$json, InfOut_MarketInfo$json, InfOut_Adresses$json, InfOut_Messages$json, InfOut_Bool$json, InfOut_Trade$json, InfOut_IPs$json],
};

@$core.Deprecated('Use infOutDescriptor instead')
const InfOut_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'public_name', '3': 1, '4': 1, '5': 9, '10': 'publicName'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 4, '10': 'balance'},
    const {'1': 'message_key', '3': 3, '4': 1, '5': 12, '10': 'messageKey'},
    const {'1': 'market_adresses', '3': 4, '4': 3, '5': 12, '10': 'marketAdresses'},
    const {'1': 'market_balances', '3': 5, '4': 3, '5': 4, '10': 'marketBalances'},
  ],
};

@$core.Deprecated('Use infOutDescriptor instead')
const InfOut_MarketInfo$json = const {
  '1': 'MarketInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'messageKey', '3': 2, '4': 1, '5': 12, '10': 'messageKey'},
    const {'1': 'imageLink', '3': 3, '4': 1, '5': 9, '10': 'imageLink'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'operationCount', '3': 5, '4': 1, '5': 4, '10': 'operationCount'},
    const {'1': 'buys', '3': 6, '4': 3, '5': 11, '6': '.api.InfOut.Trade', '10': 'buys'},
    const {'1': 'sells', '3': 7, '4': 3, '5': 11, '6': '.api.InfOut.Trade', '10': 'sells'},
    const {'1': 'activeBuys', '3': 8, '4': 1, '5': 4, '10': 'activeBuys'},
    const {'1': 'activeSells', '3': 9, '4': 1, '5': 4, '10': 'activeSells'},
    const {'1': 'inputFee', '3': 10, '4': 1, '5': 4, '10': 'inputFee'},
    const {'1': 'outputFee', '3': 11, '4': 1, '5': 4, '10': 'outputFee'},
    const {'1': 'workTime', '3': 12, '4': 1, '5': 9, '10': 'workTime'},
    const {'1': 'delimiter', '3': 14, '4': 1, '5': 4, '10': 'delimiter'},
  ],
};

@$core.Deprecated('Use infOutDescriptor instead')
const InfOut_Adresses$json = const {
  '1': 'Adresses',
  '2': const [
    const {'1': 'marketAdresses', '3': 1, '4': 3, '5': 12, '10': 'marketAdresses'},
  ],
};

@$core.Deprecated('Use infOutDescriptor instead')
const InfOut_Messages$json = const {
  '1': 'Messages',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 9, '10': 'messages'},
  ],
};

@$core.Deprecated('Use infOutDescriptor instead')
const InfOut_Bool$json = const {
  '1': 'Bool',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

@$core.Deprecated('Use infOutDescriptor instead')
const InfOut_Trade$json = const {
  '1': 'Trade',
  '2': const [
    const {'1': 'offer', '3': 1, '4': 1, '5': 4, '10': 'offer'},
    const {'1': 'recieve', '3': 2, '4': 1, '5': 4, '10': 'recieve'},
  ],
};

@$core.Deprecated('Use infOutDescriptor instead')
const InfOut_IPs$json = const {
  '1': 'IPs',
  '2': const [
    const {'1': 'adresses', '3': 1, '4': 3, '5': 9, '10': 'adresses'},
  ],
};

/// Descriptor for `InfOut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infOutDescriptor = $convert.base64Decode('CgZJbmZPdXQatAEKBFVzZXISHwoLcHVibGljX25hbWUYASABKAlSCnB1YmxpY05hbWUSGAoHYmFsYW5jZRgCIAEoBFIHYmFsYW5jZRIfCgttZXNzYWdlX2tleRgDIAEoDFIKbWVzc2FnZUtleRInCg9tYXJrZXRfYWRyZXNzZXMYBCADKAxSDm1hcmtldEFkcmVzc2VzEicKD21hcmtldF9iYWxhbmNlcxgFIAMoBFIObWFya2V0QmFsYW5jZXMargMKCk1hcmtldEluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIeCgptZXNzYWdlS2V5GAIgASgMUgptZXNzYWdlS2V5EhwKCWltYWdlTGluaxgDIAEoCVIJaW1hZ2VMaW5rEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhImCg5vcGVyYXRpb25Db3VudBgFIAEoBFIOb3BlcmF0aW9uQ291bnQSJQoEYnV5cxgGIAMoCzIRLmFwaS5JbmZPdXQuVHJhZGVSBGJ1eXMSJwoFc2VsbHMYByADKAsyES5hcGkuSW5mT3V0LlRyYWRlUgVzZWxscxIeCgphY3RpdmVCdXlzGAggASgEUgphY3RpdmVCdXlzEiAKC2FjdGl2ZVNlbGxzGAkgASgEUgthY3RpdmVTZWxscxIaCghpbnB1dEZlZRgKIAEoBFIIaW5wdXRGZWUSHAoJb3V0cHV0RmVlGAsgASgEUglvdXRwdXRGZWUSGgoId29ya1RpbWUYDCABKAlSCHdvcmtUaW1lEhwKCWRlbGltaXRlchgOIAEoBFIJZGVsaW1pdGVyGjIKCEFkcmVzc2VzEiYKDm1hcmtldEFkcmVzc2VzGAEgAygMUg5tYXJrZXRBZHJlc3NlcxomCghNZXNzYWdlcxIaCghtZXNzYWdlcxgBIAMoCVIIbWVzc2FnZXMaHAoEQm9vbBIUCgV2YWx1ZRgBIAEoCFIFdmFsdWUaNwoFVHJhZGUSFAoFb2ZmZXIYASABKARSBW9mZmVyEhgKB3JlY2lldmUYAiABKARSB3JlY2lldmUaIQoDSVBzEhoKCGFkcmVzc2VzGAEgAygJUghhZHJlc3Nlcw==');
@$core.Deprecated('Use userRequestsDescriptor instead')
const UserRequests$json = const {
  '1': 'UserRequests',
  '3': const [UserRequests_Create$json, UserRequests_Send$json, UserRequests_Message$json, UserRequests_Trade$json, UserRequests_CancelTrade$json],
};

@$core.Deprecated('Use userRequestsDescriptor instead')
const UserRequests_Create$json = const {
  '1': 'Create',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'MesssageKey', '3': 2, '4': 1, '5': 12, '10': 'MesssageKey'},
    const {'1': 'PublicName', '3': 3, '4': 1, '5': 9, '10': 'PublicName'},
    const {'1': 'Sign', '3': 4, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use userRequestsDescriptor instead')
const UserRequests_Send$json = const {
  '1': 'Send',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'SendAmount', '3': 2, '4': 1, '5': 4, '10': 'SendAmount'},
    const {'1': 'RecieverAdress', '3': 3, '4': 1, '5': 12, '10': 'RecieverAdress'},
    const {'1': 'Sign', '3': 4, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use userRequestsDescriptor instead')
const UserRequests_Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'Adress', '3': 2, '4': 1, '5': 12, '10': 'Adress'},
    const {'1': 'Message', '3': 3, '4': 1, '5': 12, '10': 'Message'},
    const {'1': 'Sign', '3': 4, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use userRequestsDescriptor instead')
const UserRequests_Trade$json = const {
  '1': 'Trade',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'Adress', '3': 2, '4': 1, '5': 12, '10': 'Adress'},
    const {'1': 'Recieve', '3': 3, '4': 1, '5': 4, '10': 'Recieve'},
    const {'1': 'Offer', '3': 4, '4': 1, '5': 4, '10': 'Offer'},
    const {'1': 'Sign', '3': 5, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use userRequestsDescriptor instead')
const UserRequests_CancelTrade$json = const {
  '1': 'CancelTrade',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'MarketAdress', '3': 2, '4': 1, '5': 12, '10': 'MarketAdress'},
    const {'1': 'Sign', '3': 3, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

/// Descriptor for `UserRequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRequestsDescriptor = $convert.base64Decode('CgxVc2VyUmVxdWVzdHMafAoGQ3JlYXRlEhwKCVB1YmxpY0tleRgBIAEoDFIJUHVibGljS2V5EiAKC01lc3NzYWdlS2V5GAIgASgMUgtNZXNzc2FnZUtleRIeCgpQdWJsaWNOYW1lGAMgASgJUgpQdWJsaWNOYW1lEhIKBFNpZ24YBCABKAxSBFNpZ24agAEKBFNlbmQSHAoJUHVibGljS2V5GAEgASgMUglQdWJsaWNLZXkSHgoKU2VuZEFtb3VudBgCIAEoBFIKU2VuZEFtb3VudBImCg5SZWNpZXZlckFkcmVzcxgDIAEoDFIOUmVjaWV2ZXJBZHJlc3MSEgoEU2lnbhgEIAEoDFIEU2lnbhptCgdNZXNzYWdlEhwKCVB1YmxpY0tleRgBIAEoDFIJUHVibGljS2V5EhYKBkFkcmVzcxgCIAEoDFIGQWRyZXNzEhgKB01lc3NhZ2UYAyABKAxSB01lc3NhZ2USEgoEU2lnbhgEIAEoDFIEU2lnbhqBAQoFVHJhZGUSHAoJUHVibGljS2V5GAEgASgMUglQdWJsaWNLZXkSFgoGQWRyZXNzGAIgASgMUgZBZHJlc3MSGAoHUmVjaWV2ZRgDIAEoBFIHUmVjaWV2ZRIUCgVPZmZlchgEIAEoBFIFT2ZmZXISEgoEU2lnbhgFIAEoDFIEU2lnbhpjCgtDYW5jZWxUcmFkZRIcCglQdWJsaWNLZXkYASABKAxSCVB1YmxpY0tleRIiCgxNYXJrZXRBZHJlc3MYAiABKAxSDE1hcmtldEFkcmVzcxISCgRTaWduGAMgASgMUgRTaWdu');
@$core.Deprecated('Use marketRequestsDescriptor instead')
const MarketRequests$json = const {
  '1': 'MarketRequests',
  '3': const [MarketRequests_Create$json, MarketRequests_Update$json, MarketRequests_Deposit$json, MarketRequests_Withdrawal$json, MarketRequests_Message$json],
};

@$core.Deprecated('Use marketRequestsDescriptor instead')
const MarketRequests_Create$json = const {
  '1': 'Create',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'MesssageKey', '3': 2, '4': 1, '5': 12, '10': 'MesssageKey'},
    const {'1': 'Name', '3': 3, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Img', '3': 4, '4': 1, '5': 9, '10': 'Img'},
    const {'1': 'Descr', '3': 5, '4': 1, '5': 9, '10': 'Descr'},
    const {'1': 'inputFee', '3': 6, '4': 1, '5': 4, '10': 'inputFee'},
    const {'1': 'outputFee', '3': 7, '4': 1, '5': 4, '10': 'outputFee'},
    const {'1': 'workTime', '3': 8, '4': 1, '5': 9, '10': 'workTime'},
    const {'1': 'delimiter', '3': 9, '4': 1, '5': 4, '10': 'delimiter'},
    const {'1': 'Sign', '3': 10, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use marketRequestsDescriptor instead')
const MarketRequests_Update$json = const {
  '1': 'Update',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'Img', '3': 2, '4': 1, '5': 9, '10': 'Img'},
    const {'1': 'Descr', '3': 3, '4': 1, '5': 9, '10': 'Descr'},
    const {'1': 'inputFee', '3': 4, '4': 1, '5': 4, '10': 'inputFee'},
    const {'1': 'outputFee', '3': 5, '4': 1, '5': 4, '10': 'outputFee'},
    const {'1': 'workTime', '3': 6, '4': 1, '5': 9, '10': 'workTime'},
    const {'1': 'Sign', '3': 7, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use marketRequestsDescriptor instead')
const MarketRequests_Deposit$json = const {
  '1': 'Deposit',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'UserAdress', '3': 2, '4': 1, '5': 12, '10': 'UserAdress'},
    const {'1': 'Amount', '3': 3, '4': 1, '5': 4, '10': 'Amount'},
    const {'1': 'Sign', '3': 4, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use marketRequestsDescriptor instead')
const MarketRequests_Withdrawal$json = const {
  '1': 'Withdrawal',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'UserAdress', '3': 2, '4': 1, '5': 12, '10': 'UserAdress'},
    const {'1': 'Amount', '3': 3, '4': 1, '5': 4, '10': 'Amount'},
    const {'1': 'Sign', '3': 4, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use marketRequestsDescriptor instead')
const MarketRequests_Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'Adress', '3': 2, '4': 1, '5': 12, '10': 'Adress'},
    const {'1': 'Message', '3': 3, '4': 1, '5': 12, '10': 'Message'},
    const {'1': 'Sign', '3': 4, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

/// Descriptor for `MarketRequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketRequestsDescriptor = $convert.base64Decode('Cg5NYXJrZXRSZXF1ZXN0cxqMAgoGQ3JlYXRlEhwKCVB1YmxpY0tleRgBIAEoDFIJUHVibGljS2V5EiAKC01lc3NzYWdlS2V5GAIgASgMUgtNZXNzc2FnZUtleRISCgROYW1lGAMgASgJUgROYW1lEhAKA0ltZxgEIAEoCVIDSW1nEhQKBURlc2NyGAUgASgJUgVEZXNjchIaCghpbnB1dEZlZRgGIAEoBFIIaW5wdXRGZWUSHAoJb3V0cHV0RmVlGAcgASgEUglvdXRwdXRGZWUSGgoId29ya1RpbWUYCCABKAlSCHdvcmtUaW1lEhwKCWRlbGltaXRlchgJIAEoBFIJZGVsaW1pdGVyEhIKBFNpZ24YCiABKAxSBFNpZ24auAEKBlVwZGF0ZRIcCglQdWJsaWNLZXkYASABKAxSCVB1YmxpY0tleRIQCgNJbWcYAiABKAlSA0ltZxIUCgVEZXNjchgDIAEoCVIFRGVzY3ISGgoIaW5wdXRGZWUYBCABKARSCGlucHV0RmVlEhwKCW91dHB1dEZlZRgFIAEoBFIJb3V0cHV0RmVlEhoKCHdvcmtUaW1lGAYgASgJUgh3b3JrVGltZRISCgRTaWduGAcgASgMUgRTaWduGnMKB0RlcG9zaXQSHAoJUHVibGljS2V5GAEgASgMUglQdWJsaWNLZXkSHgoKVXNlckFkcmVzcxgCIAEoDFIKVXNlckFkcmVzcxIWCgZBbW91bnQYAyABKARSBkFtb3VudBISCgRTaWduGAQgASgMUgRTaWduGnYKCldpdGhkcmF3YWwSHAoJUHVibGljS2V5GAEgASgMUglQdWJsaWNLZXkSHgoKVXNlckFkcmVzcxgCIAEoDFIKVXNlckFkcmVzcxIWCgZBbW91bnQYAyABKARSBkFtb3VudBISCgRTaWduGAQgASgMUgRTaWduGm0KB01lc3NhZ2USHAoJUHVibGljS2V5GAEgASgMUglQdWJsaWNLZXkSFgoGQWRyZXNzGAIgASgMUgZBZHJlc3MSGAoHTWVzc2FnZRgDIAEoDFIHTWVzc2FnZRISCgRTaWduGAQgASgMUgRTaWdu');
@$core.Deprecated('Use connectionRequestsDescriptor instead')
const ConnectionRequests$json = const {
  '1': 'ConnectionRequests',
  '3': const [ConnectionRequests_In$json, ConnectionRequests_Out$json, ConnectionRequests_Pool$json],
};

@$core.Deprecated('Use connectionRequestsDescriptor instead')
const ConnectionRequests_In$json = const {
  '1': 'In',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 12, '10': 'PublicKey'},
    const {'1': 'WebAdress', '3': 2, '4': 1, '5': 9, '10': 'WebAdress'},
    const {'1': 'Sign', '3': 3, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

@$core.Deprecated('Use connectionRequestsDescriptor instead')
const ConnectionRequests_Out$json = const {
  '1': 'Out',
  '2': const [
    const {'1': 'Key', '3': 1, '4': 1, '5': 12, '10': 'Key'},
    const {'1': 'Value', '3': 2, '4': 1, '5': 12, '10': 'Value'},
  ],
};

@$core.Deprecated('Use connectionRequestsDescriptor instead')
const ConnectionRequests_Pool$json = const {
  '1': 'Pool',
  '2': const [
    const {'1': 'Values', '3': 1, '4': 3, '5': 9, '10': 'Values'},
  ],
};

/// Descriptor for `ConnectionRequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionRequestsDescriptor = $convert.base64Decode('ChJDb25uZWN0aW9uUmVxdWVzdHMaVAoCSW4SHAoJUHVibGljS2V5GAEgASgMUglQdWJsaWNLZXkSHAoJV2ViQWRyZXNzGAIgASgJUglXZWJBZHJlc3MSEgoEU2lnbhgDIAEoDFIEU2lnbhotCgNPdXQSEAoDS2V5GAEgASgMUgNLZXkSFAoFVmFsdWUYAiABKAxSBVZhbHVlGh4KBFBvb2wSFgoGVmFsdWVzGAEgAygJUgZWYWx1ZXM=');
