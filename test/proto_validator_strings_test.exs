defmodule ProtoValidator.ProtoValidatorStringsTest do
  use ExUnit.Case, async: true


  describe "validate string const rule" do
    test "should be valid when the value is the same as the declared const" do
      assert :ok =
               ProtoValidator.validate(%Test.StringConst{
                 val: "foo"
               })
    end

    test "should be invalid when the value is different as the declared const" do
      assert {:error, "Invalid val, value should be foo"} =
               ProtoValidator.validate(%Test.StringConst{
                 val: "bar"
               })
    end
  end

  describe "validate string len rule" do
    test "should be valid when the value has the declared len" do
      assert :ok =
               ProtoValidator.validate(%Test.StringLen{
                 val: "foo"
               })
    end

    test "should be invalid when the value has a different len" do
      assert {:error, "Invalid val, length should be 3"} =
               ProtoValidator.validate(%Test.StringLen{
                 val: "barz"
               })
    end
  end

  describe "validate string len_bytes rule" do
    test "should be valid when the value has the declared len in bytes" do
      assert :ok =
               ProtoValidator.validate(%Test.StringLenBytes{
                 val: "pace"
               })
    end

    test "should be invalid when the value has a different len in bytes" do
      assert {:error, "Invalid val, length bytes should be 4"} =
               ProtoValidator.validate(%Test.StringLenBytes{
                 val: "paces"
               })
    end
  end

  describe "validate string min_bytes rule" do
    test "should be valid when the value has at least the declared len in bytes" do
      assert :ok =
               ProtoValidator.validate(%Test.StringMinBytes{
                 val: "proto"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringMinBytes{
                 val: "quux"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringMinBytes{
                 val: "你好"
               })
    end

    test "should be invalid when the value has less len in bytes" do
      assert {:error, "Invalid val, byte length must be at least 4"} =
               ProtoValidator.validate(%Test.StringMinBytes{
                 val: ""
               })
    end
  end

  describe "validate string max_bytes rule" do
    test "should be valid when the value has at most the declared len in bytes" do
      assert :ok =
               ProtoValidator.validate(%Test.StringMaxBytes{
                 val: "foo"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringMaxBytes{
                 val: "12345678"
               })
    end

    test "should be invalid when the value has more then the declared len in bytes" do
      assert {:error, "Invalid val, byte length must be at most 8"} =
               ProtoValidator.validate(%Test.StringMaxBytes{
                 val: "123456789"
               })

      assert {:error, "Invalid val, byte length must be at most 8"} =
               ProtoValidator.validate(%Test.StringMaxBytes{
                 val: "你好你好你好"
               })
    end
  end

  describe "validate both min/max bytes rule" do
    test "should be valid when the value has the bytes len inside the min/max bounds" do
      assert :ok =
               ProtoValidator.validate(%Test.StringMinMaxBytes{
                 val: "protoc"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringMinMaxBytes{
                 val: "quux"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringMinMaxBytes{
                 val: "fizzbuzz"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringMinMaxBytes{
                 val: "你好"
               })
    end

    test "should be invalid when the value has the bytes len outside the min/max bounds" do
      assert {:error, "Invalid val, byte length must be at least 4"} =
               ProtoValidator.validate(%Test.StringMinMaxBytes{
                 val: "foo"
               })

      assert {:error, "Invalid val, byte length must be at most 8"} =
               ProtoValidator.validate(%Test.StringMinMaxBytes{
                 val: "你好你好你"
               })
    end
  end

  # describe "validate equal min/max bytes rule" do
  #   test "should be valid when the values has the len compatible with the same min and max bytes len" do
  #     assert :ok =
  #              ProtoValidator.validate(%Test.StringMinMaxBytesEqual{
  #                val: "prot"
  #              })
  #   end

  #   test "should be not valid when the values has the len incompatible with the same min and max bytes len" do
  #     assert {:error, "Invalid val, byte length must be at most 4"} =
  #              ProtoValidator.validate(%Test.StringMinMaxBytesEqual{
  #                val: "protos"
  #              })
  #   end
  # end

  describe "validate pattern rule" do
    test "it should be valid when the value matches the pattern" do
      assert :ok =
               ProtoValidator.validate(%Test.StringPattern{
                 val: "Foo123"
               })
    end

    test "it should not be valid when the value does not match the pattern" do
      assert {:error, "Invalid val, should match the pattern (?i)^[a-z0-9]+$"} =
               ProtoValidator.validate(%Test.StringPattern{
                 val: "!@#$%^&*()"
               })

      assert {:error, "Invalid val, should match the pattern (?i)^[a-z0-9]+$"} =
               ProtoValidator.validate(%Test.StringPattern{
                 val: ""
               })

      assert {:error, "Invalid val, should match the pattern (?i)^[a-z0-9]+$"} =
               ProtoValidator.validate(%Test.StringPattern{
                 val: "a\000"
               })
    end

    test "it should pass when the values matches the pattern, and the pattern has escape chars" do
      assert :ok =
               ProtoValidator.validate(%Test.StringPatternEscapes{
                 val: "* \\ x"
               })
    end

    test "it should not be valid when the values does not match the pattern and the pattern has escape chars" do
      assert {:error, "Invalid val, should match the pattern \\* \\\\ \\w"} =
               ProtoValidator.validate(%Test.StringPatternEscapes{
                 val: ""
               })

      assert {:error, "Invalid val, should match the pattern \\* \\\\ \\w"} =
               ProtoValidator.validate(%Test.StringPatternEscapes{
                 val: "invalid"
               })
    end
  end

  describe "validate prefix rule" do
    test "should pass when the value has the right prefix" do
      assert :ok =
               ProtoValidator.validate(%Test.StringPrefix{
                 val: "foobar"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringPrefix{
                 val: "foo"
               })
    end

    test "should not pass when the value does not have the right prefix" do
      assert {:error, "Invalid val, should start with foo"} =
               ProtoValidator.validate(%Test.StringPrefix{
                 val: "bar"
               })

      assert {:error, "Invalid val, should start with foo"} =
               ProtoValidator.validate(%Test.StringPrefix{
                 val: "FooBar"
               })
    end
  end

  describe "validate suffix rule" do
    test "should pass when the value has the right suffix" do
      assert :ok =
               ProtoValidator.validate(%Test.StringSuffix{
                 val: "foobaz"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringSuffix{
                 val: "baz"
               })
    end

    test "should not pass when the value does not have the right suffix" do
      assert {:error, "Invalid val, should end with baz"} =
               ProtoValidator.validate(%Test.StringSuffix{
                 val: "foobar"
               })

      assert {:error, "Invalid val, should end with baz"} =
               ProtoValidator.validate(%Test.StringSuffix{
                 val: "FooBaz"
               })
    end
  end

  describe "validate contains rule" do
    test "should pass when the value contains the provided context" do
      assert :ok =
               ProtoValidator.validate(%Test.StringContains{
                 val: "candy bars"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringContains{
                 val: "bar"
               })
    end

    test "should not pass when the value does not contain the provided context" do
      assert {:error, "Invalid val, should contain bar"} =
               ProtoValidator.validate(%Test.StringContains{
                 val: "candy bazs"
               })

      assert {:error, "Invalid val, should contain bar"} =
               ProtoValidator.validate(%Test.StringContains{
                 val: "Candy Bars"
               })
    end
  end

  describe "validate not_contains rule" do
    test "should pass when the value does not contain the provided context" do
      assert :ok =
               ProtoValidator.validate(%Test.StringNotContains{
                 val: "candy bazs"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringNotContains{
                 val: "Candy Bars"
               })
    end

    test "should not pass when the value contains the provided context" do
      assert {:error, "Invalid val, should not contain bar"} =
               ProtoValidator.validate(%Test.StringNotContains{
                 val: "candy bars"
               })

      assert {:error, "Invalid val, should not contain bar"} =
               ProtoValidator.validate(%Test.StringNotContains{
                 val: "bar"
               })
    end
  end

  describe "validate in rule" do
    test "should pass when the value is allowed" do
      assert :ok =
               ProtoValidator.validate(%Test.StringIn{
                 val: "bar"
               })
    end

    test "should not pass when the value is not allowed" do
      assert {:error, "Invalid val, value should be oneof [\"bar\", \"baz\"]"} =
               ProtoValidator.validate(%Test.StringIn{
                 val: "quux"
               })
    end
  end

  describe "validate not in rule" do

  end

  describe "validate string uuid rule" do
    test "should be valid with a nil uuid" do
      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "00000000-0000-0000-0000-000000000000"
               })
    end

    test "should be valid with a v1 uuid" do
      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "b45c0c80-8880-11e9-a5b1-000000000000"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "B45C0C80-8880-11E9-A5B1-000000000000"
               })
    end

    test "should be valid with a v2 uuid" do
      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "b45c0c80-8880-21e9-a5b1-000000000000"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "B45C0C80-8880-21E9-A5B1-000000000000"
               })
    end

    test "should be valid with a v3 uuid" do
      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "a3bb189e-8bf9-3888-9912-ace4e6543002"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "A3BB189E-8BF9-3888-9912-ACE4E6543002"
               })
    end

    test "should be valid with a v4 uuid" do
      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "8b208305-00e8-4460-a440-5e0dcd83bb0a"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "8B208305-00E8-4460-A440-5E0DCD83BB0A"
               })
    end

    test "should be valid with a v5 uuid" do
      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "a6edc906-2f9f-5fb2-a373-efac406f0ef2"
               })

      assert :ok =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "A6EDC906-2F9F-5FB2-A373-EFAC406F0EF2"
               })
    end

    test "should be invalid with a non-uuid string" do
      assert {:error, "Invalid val, must be a valid UUID string in default format"} =
               ProtoValidator.validate(%Test.StringUUID{val: "invalid"})
    end

    test "should be invalid with a bad uuid" do
      assert {:error, "Invalid val, must be a valid UUID string in default format"} =
               ProtoValidator.validate(%Test.StringUUID{
                 val: "ffffffff-ffff-ffff-ffff-fffffffffffff"
               })
    end
  end
end
