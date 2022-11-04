defmodule ProtoValidator.Gen.Cases.FloatNone do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatNone

  validate(:val, type: :float)
end

defmodule ProtoValidator.Gen.Cases.FloatConst do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatConst

  validate(:val, type: :float, float: [const: 1.2300000190734863])
end

defmodule ProtoValidator.Gen.Cases.FloatIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatIn

  validate(:val, type: :float, float: [in: [4.559999942779541, 7.889999866485596]])
end

defmodule ProtoValidator.Gen.Cases.FloatNotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatNotIn

  validate(:val, type: :float, float: [not_in: [0.0]])
end

defmodule ProtoValidator.Gen.Cases.FloatLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatLT

  validate(:val, type: :float, float: [lt: 0.0])
end

defmodule ProtoValidator.Gen.Cases.FloatLTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatLTE

  validate(:val, type: :float, float: [lte: 64.0])
end

defmodule ProtoValidator.Gen.Cases.FloatGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatGT

  validate(:val, type: :float, float: [gt: 16.0])
end

defmodule ProtoValidator.Gen.Cases.FloatGTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatGTE

  validate(:val, type: :float, float: [gte: 8.0])
end

defmodule ProtoValidator.Gen.Cases.FloatGTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatGTLT

  validate(:val, type: :float, float: [gt: 0.0, lt: 10.0])
end

defmodule ProtoValidator.Gen.Cases.FloatExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatExLTGT

  validate(:val, type: :float, float: [gt: 10.0, lt: 0.0])
end

defmodule ProtoValidator.Gen.Cases.FloatGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatGTELTE

  validate(:val, type: :float, float: [gte: 128.0, lte: 256.0])
end

defmodule ProtoValidator.Gen.Cases.FloatExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatExGTELTE

  validate(:val, type: :float, float: [gte: 256.0, lte: 128.0])
end

defmodule ProtoValidator.Gen.Cases.FloatIgnore do
  @moduledoc false
  use ProtoValidator, entity: Cases.FloatIgnore

  validate(:val, type: :float, float: [gte: 128.0, ignore_empty: true, lte: 256.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleNone do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleNone

  validate(:val, type: :double)
end

defmodule ProtoValidator.Gen.Cases.DoubleConst do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleConst

  validate(:val, type: :double, double: [const: 1.23])
end

defmodule ProtoValidator.Gen.Cases.DoubleIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleIn

  validate(:val, type: :double, double: [in: [4.56, 7.89]])
end

defmodule ProtoValidator.Gen.Cases.DoubleNotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleNotIn

  validate(:val, type: :double, double: [not_in: [0.0]])
end

defmodule ProtoValidator.Gen.Cases.DoubleLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleLT

  validate(:val, type: :double, double: [lt: 0.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleLTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleLTE

  validate(:val, type: :double, double: [lte: 64.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleGT

  validate(:val, type: :double, double: [gt: 16.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleGTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleGTE

  validate(:val, type: :double, double: [gte: 8.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleGTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleGTLT

  validate(:val, type: :double, double: [gt: 0.0, lt: 10.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleExLTGT

  validate(:val, type: :double, double: [gt: 10.0, lt: 0.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleGTELTE

  validate(:val, type: :double, double: [gte: 128.0, lte: 256.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleExGTELTE

  validate(:val, type: :double, double: [gte: 256.0, lte: 128.0])
end

defmodule ProtoValidator.Gen.Cases.DoubleIgnore do
  @moduledoc false
  use ProtoValidator, entity: Cases.DoubleIgnore

  validate(:val, type: :double, double: [gte: 256.0, ignore_empty: true, lte: 128.0])
end

defmodule ProtoValidator.Gen.Cases.Int32None do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32None

  validate(:val, type: :int32)
end

defmodule ProtoValidator.Gen.Cases.Int32Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32Const

  validate(:val, type: :int32, int32: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.Int32In do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32In

  validate(:val, type: :int32, int32: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.Int32NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32NotIn

  validate(:val, type: :int32, int32: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.Int32LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32LT

  validate(:val, type: :int32, int32: [lt: 0])
end

defmodule ProtoValidator.Gen.Cases.Int32LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32LTE

  validate(:val, type: :int32, int32: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.Int32GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32GT

  validate(:val, type: :int32, int32: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.Int32GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32GTE

  validate(:val, type: :int32, int32: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.Int32GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32GTLT

  validate(:val, type: :int32, int32: [gt: 0, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.Int32ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32ExLTGT

  validate(:val, type: :int32, int32: [gt: 10, lt: 0])
end

defmodule ProtoValidator.Gen.Cases.Int32GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32GTELTE

  validate(:val, type: :int32, int32: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.Int32ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32ExGTELTE

  validate(:val, type: :int32, int32: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Int32Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int32Ignore

  validate(:val, type: :int32, int32: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Int64None do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64None

  validate(:val, type: :int64)
end

defmodule ProtoValidator.Gen.Cases.Int64Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64Const

  validate(:val, type: :int64, int64: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.Int64In do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64In

  validate(:val, type: :int64, int64: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.Int64NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64NotIn

  validate(:val, type: :int64, int64: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.Int64LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64LT

  validate(:val, type: :int64, int64: [lt: 0])
end

defmodule ProtoValidator.Gen.Cases.Int64LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64LTE

  validate(:val, type: :int64, int64: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.Int64GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64GT

  validate(:val, type: :int64, int64: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.Int64GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64GTE

  validate(:val, type: :int64, int64: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.Int64GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64GTLT

  validate(:val, type: :int64, int64: [gt: 0, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.Int64ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64ExLTGT

  validate(:val, type: :int64, int64: [gt: 10, lt: 0])
end

defmodule ProtoValidator.Gen.Cases.Int64GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64GTELTE

  validate(:val, type: :int64, int64: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.Int64ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64ExGTELTE

  validate(:val, type: :int64, int64: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Int64Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64Ignore

  validate(:val, type: :int64, int64: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.UInt32None do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32None

  validate(:val, type: :uint32)
end

defmodule ProtoValidator.Gen.Cases.UInt32Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32Const

  validate(:val, type: :uint32, uint32: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.UInt32In do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32In

  validate(:val, type: :uint32, uint32: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.UInt32NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32NotIn

  validate(:val, type: :uint32, uint32: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.UInt32LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32LT

  validate(:val, type: :uint32, uint32: [lt: 5])
end

defmodule ProtoValidator.Gen.Cases.UInt32LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32LTE

  validate(:val, type: :uint32, uint32: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.UInt32GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32GT

  validate(:val, type: :uint32, uint32: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.UInt32GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32GTE

  validate(:val, type: :uint32, uint32: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.UInt32GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32GTLT

  validate(:val, type: :uint32, uint32: [gt: 5, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.UInt32ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32ExLTGT

  validate(:val, type: :uint32, uint32: [gt: 10, lt: 5])
end

defmodule ProtoValidator.Gen.Cases.UInt32GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32GTELTE

  validate(:val, type: :uint32, uint32: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.UInt32ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32ExGTELTE

  validate(:val, type: :uint32, uint32: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.UInt32Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt32Ignore

  validate(:val, type: :uint32, uint32: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.UInt64None do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64None

  validate(:val, type: :uint64)
end

defmodule ProtoValidator.Gen.Cases.UInt64Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64Const

  validate(:val, type: :uint64, uint64: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.UInt64In do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64In

  validate(:val, type: :uint64, uint64: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.UInt64NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64NotIn

  validate(:val, type: :uint64, uint64: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.UInt64LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64LT

  validate(:val, type: :uint64, uint64: [lt: 5])
end

defmodule ProtoValidator.Gen.Cases.UInt64LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64LTE

  validate(:val, type: :uint64, uint64: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.UInt64GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64GT

  validate(:val, type: :uint64, uint64: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.UInt64GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64GTE

  validate(:val, type: :uint64, uint64: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.UInt64GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64GTLT

  validate(:val, type: :uint64, uint64: [gt: 5, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.UInt64ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64ExLTGT

  validate(:val, type: :uint64, uint64: [gt: 10, lt: 5])
end

defmodule ProtoValidator.Gen.Cases.UInt64GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64GTELTE

  validate(:val, type: :uint64, uint64: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.UInt64ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64ExGTELTE

  validate(:val, type: :uint64, uint64: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.UInt64Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.UInt64Ignore

  validate(:val, type: :uint64, uint64: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SInt32None do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32None

  validate(:val, type: :sint32)
end

defmodule ProtoValidator.Gen.Cases.SInt32Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32Const

  validate(:val, type: :sint32, sint32: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.SInt32In do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32In

  validate(:val, type: :sint32, sint32: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.SInt32NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32NotIn

  validate(:val, type: :sint32, sint32: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.SInt32LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32LT

  validate(:val, type: :sint32, sint32: [lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SInt32LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32LTE

  validate(:val, type: :sint32, sint32: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.SInt32GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32GT

  validate(:val, type: :sint32, sint32: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.SInt32GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32GTE

  validate(:val, type: :sint32, sint32: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.SInt32GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32GTLT

  validate(:val, type: :sint32, sint32: [gt: 0, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.SInt32ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32ExLTGT

  validate(:val, type: :sint32, sint32: [gt: 10, lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SInt32GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32GTELTE

  validate(:val, type: :sint32, sint32: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.SInt32ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32ExGTELTE

  validate(:val, type: :sint32, sint32: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SInt32Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt32Ignore

  validate(:val, type: :sint32, sint32: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SInt64None do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64None

  validate(:val, type: :sint64)
end

defmodule ProtoValidator.Gen.Cases.SInt64Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64Const

  validate(:val, type: :sint64, sint64: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.SInt64In do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64In

  validate(:val, type: :sint64, sint64: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.SInt64NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64NotIn

  validate(:val, type: :sint64, sint64: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.SInt64LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64LT

  validate(:val, type: :sint64, sint64: [lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SInt64LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64LTE

  validate(:val, type: :sint64, sint64: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.SInt64GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64GT

  validate(:val, type: :sint64, sint64: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.SInt64GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64GTE

  validate(:val, type: :sint64, sint64: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.SInt64GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64GTLT

  validate(:val, type: :sint64, sint64: [gt: 0, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.SInt64ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64ExLTGT

  validate(:val, type: :sint64, sint64: [gt: 10, lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SInt64GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64GTELTE

  validate(:val, type: :sint64, sint64: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.SInt64ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64ExGTELTE

  validate(:val, type: :sint64, sint64: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SInt64Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.SInt64Ignore

  validate(:val, type: :sint64, sint64: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Fixed32None do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32None

  validate(:val, type: :fixed32)
end

defmodule ProtoValidator.Gen.Cases.Fixed32Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32Const

  validate(:val, type: :fixed32, fixed32: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.Fixed32In do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32In

  validate(:val, type: :fixed32, fixed32: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.Fixed32NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32NotIn

  validate(:val, type: :fixed32, fixed32: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.Fixed32LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32LT

  validate(:val, type: :fixed32, fixed32: [lt: 5])
end

defmodule ProtoValidator.Gen.Cases.Fixed32LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32LTE

  validate(:val, type: :fixed32, fixed32: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.Fixed32GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32GT

  validate(:val, type: :fixed32, fixed32: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.Fixed32GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32GTE

  validate(:val, type: :fixed32, fixed32: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.Fixed32GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32GTLT

  validate(:val, type: :fixed32, fixed32: [gt: 5, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.Fixed32ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32ExLTGT

  validate(:val, type: :fixed32, fixed32: [gt: 10, lt: 5])
end

defmodule ProtoValidator.Gen.Cases.Fixed32GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32GTELTE

  validate(:val, type: :fixed32, fixed32: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.Fixed32ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32ExGTELTE

  validate(:val, type: :fixed32, fixed32: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Fixed32Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed32Ignore

  validate(:val, type: :fixed32, fixed32: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Fixed64None do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64None

  validate(:val, type: :fixed64)
end

defmodule ProtoValidator.Gen.Cases.Fixed64Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64Const

  validate(:val, type: :fixed64, fixed64: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.Fixed64In do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64In

  validate(:val, type: :fixed64, fixed64: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.Fixed64NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64NotIn

  validate(:val, type: :fixed64, fixed64: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.Fixed64LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64LT

  validate(:val, type: :fixed64, fixed64: [lt: 5])
end

defmodule ProtoValidator.Gen.Cases.Fixed64LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64LTE

  validate(:val, type: :fixed64, fixed64: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.Fixed64GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64GT

  validate(:val, type: :fixed64, fixed64: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.Fixed64GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64GTE

  validate(:val, type: :fixed64, fixed64: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.Fixed64GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64GTLT

  validate(:val, type: :fixed64, fixed64: [gt: 5, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.Fixed64ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64ExLTGT

  validate(:val, type: :fixed64, fixed64: [gt: 10, lt: 5])
end

defmodule ProtoValidator.Gen.Cases.Fixed64GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64GTELTE

  validate(:val, type: :fixed64, fixed64: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.Fixed64ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64ExGTELTE

  validate(:val, type: :fixed64, fixed64: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Fixed64Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.Fixed64Ignore

  validate(:val, type: :fixed64, fixed64: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SFixed32None do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32None

  validate(:val, type: :sfixed32)
end

defmodule ProtoValidator.Gen.Cases.SFixed32Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32Const

  validate(:val, type: :sfixed32, sfixed32: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.SFixed32In do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32In

  validate(:val, type: :sfixed32, sfixed32: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.SFixed32NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32NotIn

  validate(:val, type: :sfixed32, sfixed32: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.SFixed32LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32LT

  validate(:val, type: :sfixed32, sfixed32: [lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SFixed32LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32LTE

  validate(:val, type: :sfixed32, sfixed32: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.SFixed32GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32GT

  validate(:val, type: :sfixed32, sfixed32: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.SFixed32GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32GTE

  validate(:val, type: :sfixed32, sfixed32: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.SFixed32GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32GTLT

  validate(:val, type: :sfixed32, sfixed32: [gt: 0, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.SFixed32ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32ExLTGT

  validate(:val, type: :sfixed32, sfixed32: [gt: 10, lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SFixed32GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32GTELTE

  validate(:val, type: :sfixed32, sfixed32: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.SFixed32ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32ExGTELTE

  validate(:val, type: :sfixed32, sfixed32: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SFixed32Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed32Ignore

  validate(:val, type: :sfixed32, sfixed32: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SFixed64None do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64None

  validate(:val, type: :sfixed64)
end

defmodule ProtoValidator.Gen.Cases.SFixed64Const do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64Const

  validate(:val, type: :sfixed64, sfixed64: [const: 1])
end

defmodule ProtoValidator.Gen.Cases.SFixed64In do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64In

  validate(:val, type: :sfixed64, sfixed64: [in: [2, 3]])
end

defmodule ProtoValidator.Gen.Cases.SFixed64NotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64NotIn

  validate(:val, type: :sfixed64, sfixed64: [not_in: [0]])
end

defmodule ProtoValidator.Gen.Cases.SFixed64LT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64LT

  validate(:val, type: :sfixed64, sfixed64: [lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SFixed64LTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64LTE

  validate(:val, type: :sfixed64, sfixed64: [lte: 64])
end

defmodule ProtoValidator.Gen.Cases.SFixed64GT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64GT

  validate(:val, type: :sfixed64, sfixed64: [gt: 16])
end

defmodule ProtoValidator.Gen.Cases.SFixed64GTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64GTE

  validate(:val, type: :sfixed64, sfixed64: [gte: 8])
end

defmodule ProtoValidator.Gen.Cases.SFixed64GTLT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64GTLT

  validate(:val, type: :sfixed64, sfixed64: [gt: 0, lt: 10])
end

defmodule ProtoValidator.Gen.Cases.SFixed64ExLTGT do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64ExLTGT

  validate(:val, type: :sfixed64, sfixed64: [gt: 10, lt: 0])
end

defmodule ProtoValidator.Gen.Cases.SFixed64GTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64GTELTE

  validate(:val, type: :sfixed64, sfixed64: [gte: 128, lte: 256])
end

defmodule ProtoValidator.Gen.Cases.SFixed64ExGTELTE do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64ExGTELTE

  validate(:val, type: :sfixed64, sfixed64: [gte: 256, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.SFixed64Ignore do
  @moduledoc false
  use ProtoValidator, entity: Cases.SFixed64Ignore

  validate(:val, type: :sfixed64, sfixed64: [gte: 256, ignore_empty: true, lte: 128])
end

defmodule ProtoValidator.Gen.Cases.Int64LTEOptional do
  @moduledoc false
  use ProtoValidator, entity: Cases.Int64LTEOptional

  validate(:val, type: :int64, int64: [lte: 64])
end