defmodule ProtoValidator.StringsTest do
  use ExUnit.Case, async: true

  import ProtoValidator.TestHelper

  @cases [
    {"string - none - valid", %Cases.StringNone{val: "quux"}, true},
    {"string - const - valid", %Cases.StringConst{val: "foo"}, true},
    {"string - const - invalid", %Cases.StringConst{val: "bar"}, false},
    {"string - in - valid", %Cases.StringIn{val: "bar"}, true},
    {"string - in - invalid", %Cases.StringIn{val: "quux"}, false},
    {"string - not in - valid", %Cases.StringNotIn{val: "quux"}, true},
    {"string - not in - invalid", %Cases.StringNotIn{val: "fizz"}, false},
    {"string - len - valid", %Cases.StringLen{val: "baz"}, true},
    {"string - len - valid (multibyte)", %Cases.StringLen{val: "你好吖"}, true},
    {"string - len - invalid (lt)", %Cases.StringLen{val: "go"}, false},
    {"string - len - invalid (gt)", %Cases.StringLen{val: "fizz"}, false},
    {"string - len - invalid (multibyte)", %Cases.StringLen{val: "你好"}, false},
    {"string - min len - valid", %Cases.StringMinLen{val: "protoc"}, true},
    {"string - min len - valid (min)", %Cases.StringMinLen{val: "baz"}, true},
    {"string - min len - invalid", %Cases.StringMinLen{val: "go"}, false},
    {"string - min len - invalid (multibyte)", %Cases.StringMinLen{val: "你好"}, false},
    {"string - max len - valid", %Cases.StringMaxLen{val: "foo"}, true},
    {"string - max len - valid (max)", %Cases.StringMaxLen{val: "proto"}, true},
    {"string - max len - valid (multibyte)", %Cases.StringMaxLen{val: "你好你好"}, true},
    {"string - max len - invalid", %Cases.StringMaxLen{val: "1234567890"}, false},
    {"string - min/max len - valid", %Cases.StringMinMaxLen{val: "quux"}, true},
    {"string - min/max len - valid (min)", %Cases.StringMinMaxLen{val: "foo"}, true},
    {"string - min/max len - valid (max)", %Cases.StringMinMaxLen{val: "proto"}, true},
    {"string - min/max len - valid (multibyte)", %Cases.StringMinMaxLen{val: "你好你好"}, true},
    {"string - min/max len - invalid (below)", %Cases.StringMinMaxLen{val: "go"}, false},
    {"string - min/max len - invalid (above)", %Cases.StringMinMaxLen{val: "validate"}, false},
    {"string - equal min/max len - valid", %Cases.StringEqualMinMaxLen{val: "proto"}, true},
    {"string - equal min/max len - invalid", %Cases.StringEqualMinMaxLen{val: "validate"}, false},
    {"string - len bytes - valid", %Cases.StringLenBytes{val: "pace"}, true},
    {"string - len bytes - invalid (lt)", %Cases.StringLenBytes{val: "val"}, false},
    {"string - len bytes - invalid (gt)", %Cases.StringLenBytes{val: "world"}, false},
    {"string - len bytes - invalid (multibyte)", %Cases.StringLenBytes{val: "世界和平"}, false},
    {"string - min bytes - valid", %Cases.StringMinBytes{val: "proto"}, true},
    {"string - min bytes - valid (min)", %Cases.StringMinBytes{val: "quux"}, true},
    {"string - min bytes - valid (multibyte)", %Cases.StringMinBytes{val: "你好"}, true},
    {"string - min bytes - invalid", %Cases.StringMinBytes{val: ""}, false},
    {"string - max bytes - valid", %Cases.StringMaxBytes{val: "foo"}, true},
    {"string - max bytes - valid (max)", %Cases.StringMaxBytes{val: "12345678"}, true},
    {"string - max bytes - invalid", %Cases.StringMaxBytes{val: "123456789"}, false},
    {"string - max bytes - invalid (multibyte)", %Cases.StringMaxBytes{val: "你好你好你好"}, false},
    {"string - min/max bytes - valid", %Cases.StringMinMaxBytes{val: "protoc"}, true},
    {"string - min/max bytes - valid (min)", %Cases.StringMinMaxBytes{val: "quux"}, true},
    {"string - min/max bytes - valid (max)", %Cases.StringMinMaxBytes{val: "fizzbuzz"}, true},
    {"string - min/max bytes - valid (multibyte)", %Cases.StringMinMaxBytes{val: "你好"}, true},
    {"string - min/max bytes - invalid (below)", %Cases.StringMinMaxBytes{val: "foo"}, false},
    {"string - min/max bytes - invalid (above)", %Cases.StringMinMaxBytes{val: "你好你好你"}, false},
    {"string - equal min/max bytes - valid", %Cases.StringEqualMinMaxBytes{val: "protoc"}, true},
    {"string - equal min/max bytes - invalid", %Cases.StringEqualMinMaxBytes{val: "foo"}, false},
    {"string - pattern - valid", %Cases.StringPattern{val: "Foo123"}, true},
    {"string - pattern - invalid", %Cases.StringPattern{val: "!@#$%^&*()"}, false},
    {"string - pattern - invalid (empty)", %Cases.StringPattern{val: ""}, false},
    {"string - pattern - invalid (null)", %Cases.StringPattern{val: "a\000"}, false},
    {"string - pattern (escapes) - valid", %Cases.StringPatternEscapes{val: "* \\ x"}, true},
    {"string - pattern (escapes) - invalid", %Cases.StringPatternEscapes{val: "invalid"}, false},
    {"string - pattern (escapes) - invalid (empty)", %Cases.StringPatternEscapes{val: ""}, false},
    {"string - prefix - valid", %Cases.StringPrefix{val: "foobar"}, true},
    {"string - prefix - valid (only)", %Cases.StringPrefix{val: "foo"}, true},
    {"string - prefix - invalid", %Cases.StringPrefix{val: "bar"}, false},
    {"string - prefix - invalid (case-sensitive)", %Cases.StringPrefix{val: "Foobar"}, false},
    {"string - contains - valid", %Cases.StringContains{val: "candy bars"}, true},
    {"string - contains - valid (only)", %Cases.StringContains{val: "bar"}, true},
    {"string - contains - invalid", %Cases.StringContains{val: "candy bazs"}, false},
    {"string - contains - invalid (case-sensitive)", %Cases.StringContains{val: "Candy Bars"},
     false},
    {"string - not contains - valid", %Cases.StringNotContains{val: "candy bazs"}, true},
    {"string - not contains - valid (case-sensitive)",
     %Cases.StringNotContains{val: "Candy Bars"}, true},
    {"string - not contains - invalid", %Cases.StringNotContains{val: "candy bars"}, false},
    {"string - not contains - invalid (equal)", %Cases.StringNotContains{val: "bar"}, false},
    {"string - suffix - valid", %Cases.StringSuffix{val: "foobaz"}, true},
    {"string - suffix - valid (only)", %Cases.StringSuffix{val: "baz"}, true},
    {"string - suffix - invalid", %Cases.StringSuffix{val: "foobar"}, false},
    {"string - suffix - invalid (case-sensitive)", %Cases.StringSuffix{val: "FooBaz"}, false},
    {"string - email - valid", %Cases.StringEmail{val: "foo@bar.com"}, true},
    # {"string - email - valid (name)", %Cases.StringEmail{val: "John Smith <foo@bar.com>"}, true},
    {"string - email - invalid", %Cases.StringEmail{val: "foobar"}, false},
    # {"string - email - invalid (local segment too long)",
    #  %Cases.StringEmail{
    #    val: "x0123456789012345678901234567890123456789012345678901234567890123456789@example.com"
    #  }, false},
    # {"string - email - invalid (hostname too long)",
    #  %Cases.StringEmail{
    #    val: "foo@x0123456789012345678901234567890123456789012345678901234567890123456789.com"
    #  }, false},
    # {"string - email - invalid (bad hostname)", %Cases.StringEmail{val: "foo@-bar.com"}, false},
    # {"string - email - empty", %Cases.StringEmail{val: ""}, false},

    # {"string - address - valid hostname", %Cases.StringAddress{val: "example.com"}, true},
    # {"string - address - valid hostname (uppercase)",
    #  %Cases.StringAddress{val: "ASD.example.com"}, true},
    # {"string - address - valid hostname (hyphens)", %Cases.StringAddress{val: "foo-bar.com"},
    #  true},
    # {"string - address - valid hostname (trailing dot)",
    #  %Cases.StringAddress{val: "example.com."}, true},
    # {"string - address - invalid hostname", %Cases.StringAddress{val: "!@#$%^&"}, false},
    # {"string - address - invalid hostname (underscore)", %Cases.StringAddress{val: "foo_bar.com"},
    #  false},
    # {"string - address - invalid hostname (too long)",
    #  %Cases.StringAddress{
    #    val: "x0123456789012345678901234567890123456789012345678901234567890123456789.com"
    #  }, false},
    # {"string - address - invalid hostname (trailing hyphens)",
    #  %Cases.StringAddress{val: "foo-bar-.com"}, false},
    # {"string - address - invalid hostname (leading hyphens)",
    #  %Cases.StringAddress{val: "foo-bar.-com"}, false},
    # {"string - address - invalid hostname (empty)", %Cases.StringAddress{val: "asd..asd.com"},
    #  false},
    # {"string - address - invalid hostname (IDNs)", %Cases.StringAddress{val: "你好.com"}, false},
    # {"string - address - valid ip (v4)", %Cases.StringAddress{val: "192.168.0.1"}, true},
    # {"string - address - valid ip (v6)", %Cases.StringAddress{val: "3e::99"}, true},
    # {"string - address - invalid ip", %Cases.StringAddress{val: "ff::fff::0b"}, false},

    # {"string - hostname - valid", %Cases.StringHostname{val: "example.com"}, true},
    # {"string - hostname - valid (uppercase)", %Cases.StringHostname{val: "ASD.example.com"},
    #  true},
    # {"string - hostname - valid (hyphens)", %Cases.StringHostname{val: "foo-bar.com"}, true},
    # {"string - hostname - valid (trailing dot)", %Cases.StringHostname{val: "example.com."},
    #  true},
    # {"string - hostname - invalid", %Cases.StringHostname{val: "!@#$%^&"}, false},
    # {"string - hostname - invalid (underscore)", %Cases.StringHostname{val: "foo_bar.com"},
    #  false},
    # {"string - hostname - invalid (too long)",
    #  %Cases.StringHostname{
    #    val: "x0123456789012345678901234567890123456789012345678901234567890123456789.com"
    #  }, false},
    # {"string - hostname - invalid (trailing hyphens)", %Cases.StringHostname{val: "foo-bar-.com"},
    #  false},
    # {"string - hostname - invalid (leading hyphens)", %Cases.StringHostname{val: "foo-bar.-com"},
    #  false},
    # {"string - hostname - invalid (empty)", %Cases.StringHostname{val: "asd..asd.com"}, false},
    # {"string - hostname - invalid (IDNs)", %Cases.StringHostname{val: "你好.com"}, false},

    # {"string - IP - valid (v4)", %Cases.StringIP{val: "192.168.0.1"}, true},
    # {"string - IP - valid (v6)", %Cases.StringIP{val: "3e::99"}, true},
    # {"string - IP - invalid", %Cases.StringIP{val: "foobar"}, false},
    # {"string - IPv4 - valid", %Cases.StringIPv4{val: "192.168.0.1"}, true},
    # {"string - IPv4 - invalid", %Cases.StringIPv4{val: "foobar"}, false},
    # {"string - IPv4 - invalid (erroneous)", %Cases.StringIPv4{val: "256.0.0.0"}, false},
    # {"string - IPv4 - invalid (v6)", %Cases.StringIPv4{val: "3e::99"}, false},
    # {"string - IPv6 - valid", %Cases.StringIPv6{val: "2001:0db8:85a3:0000:0000:8a2e:0370:7334"},
    #  true},
    # {"string - IPv6 - valid (collapsed)", %Cases.StringIPv6{val: "2001:db8:85a3::8a2e:370:7334"},
    #  true},
    # {"string - IPv6 - invalid", %Cases.StringIPv6{val: "foobar"}, false},
    # {"string - IPv6 - invalid (v4)", %Cases.StringIPv6{val: "192.168.0.1"}, false},
    # {"string - IPv6 - invalid (erroneous)", %Cases.StringIPv6{val: "ff::fff::0b"}, false},
    # {"string - URI - valid", %Cases.StringURI{val: "http://example.com/foo/bar?baz=quux"}, true},
    # {"string - URI - invalid", %Cases.StringURI{val: "!@#$%^&*%$#"}, false},
    # {"string - URI - invalid (relative)", %Cases.StringURI{val: "/foo/bar?baz=quux"}, false},
    # {"string - URI - valid", %Cases.StringURIRef{val: "http://example.com/foo/bar?baz=quux"},
    #  true},
    # {"string - URI - valid (relative)", %Cases.StringURIRef{val: "/foo/bar?baz=quux"}, true},
    # {"string - URI - invalid", %Cases.StringURIRef{val: "!@#$%^&*%$#"}, false},

    {"string - UUID - valid (nil)",
     %Cases.StringUUID{val: "00000000-0000-0000-0000-000000000000"}, true},
    {"string - UUID - valid (v1)", %Cases.StringUUID{val: "b45c0c80-8880-11e9-a5b1-000000000000"},
     true},
    {"string - UUID - valid (v1 - case-insensitive)",
     %Cases.StringUUID{val: "B45C0C80-8880-11E9-A5B1-000000000000"}, true},
    {"string - UUID - valid (v2)", %Cases.StringUUID{val: "b45c0c80-8880-21e9-a5b1-000000000000"},
     true},
    {"string - UUID - valid (v2 - case-insensitive)",
     %Cases.StringUUID{val: "B45C0C80-8880-21E9-A5B1-000000000000"}, true},
    {"string - UUID - valid (v3)", %Cases.StringUUID{val: "a3bb189e-8bf9-3888-9912-ace4e6543002"},
     true},
    {"string - UUID - valid (v3 - case-insensitive)",
     %Cases.StringUUID{val: "A3BB189E-8BF9-3888-9912-ACE4E6543002"}, true},
    {"string - UUID - valid (v4)", %Cases.StringUUID{val: "8b208305-00e8-4460-a440-5e0dcd83bb0a"},
     true},
    {"string - UUID - valid (v4 - case-insensitive)",
     %Cases.StringUUID{val: "8B208305-00E8-4460-A440-5E0DCD83BB0A"}, true},
    {"string - UUID - valid (v5)", %Cases.StringUUID{val: "a6edc906-2f9f-5fb2-a373-efac406f0ef2"},
     true},
    {"string - UUID - valid (v5 - case-insensitive)",
     %Cases.StringUUID{val: "A6EDC906-2F9F-5FB2-A373-EFAC406F0EF2"}, true},
    {"string - UUID - invalid", %Cases.StringUUID{val: "foobar"}, false},
    {"string - UUID - invalid (bad UUID)",
     %Cases.StringUUID{val: "ffffffff-ffff-ffff-ffff-fffffffffffff"}, false},
    {"string - UUID - valid (ignore_empty)", %Cases.StringUUIDIgnore{val: ""}, true}

    # {"string - http header name - valid", %Cases.StringHttpHeaderName{val: "clustername"}, true},
    # {"string - http header name - valid", %Cases.StringHttpHeaderName{val: ":path"}, true},
    # {"string - http header name - valid (nums)", %Cases.StringHttpHeaderName{val: "cluster-123"},
    #  true},
    # {"string - http header name - valid (special token)",
    #  %Cases.StringHttpHeaderName{val: "!+#&.%"}, true},
    # {"string - http header name - valid (period)",
    #  %Cases.StringHttpHeaderName{val: "CLUSTER.NAME"}, true},
    # {"string - http header name - invalid", %Cases.StringHttpHeaderName{val: ":"}, false},
    # {"string - http header name - invalid", %Cases.StringHttpHeaderName{val: ":path:"}, false},
    # {"string - http header name - invalid (space)",
    #  %Cases.StringHttpHeaderName{val: "cluster name"}, false},
    # {"string - http header name - invalid (return)",
    #  %Cases.StringHttpHeaderName{val: "example\r"}, false},
    # {"string - http header name - invalid (tab)", %Cases.StringHttpHeaderName{val: "example\t"},
    #  false},
    # {"string - http header name - invalid (slash)",
    #  %Cases.StringHttpHeaderName{val: "/test/long/url"}, false},
    # {"string - http header value - valid", %Cases.StringHttpHeaderValue{val: "cluster.name.123"},
    #  true},
    # {"string - http header value - valid (uppercase)",
    #  %Cases.StringHttpHeaderValue{val: "/TEST/LONG/URL"}, true},
    # {"string - http header value - valid (spaces)",
    #  %Cases.StringHttpHeaderValue{val: "cluster name"}, true},
    # {"string - http header value - valid (tab)", %Cases.StringHttpHeaderValue{val: "example\t"},
    #  true},
    # {"string - http header value - valid (special token)",
    #  %Cases.StringHttpHeaderValue{val: "!#%&./+"}, true},
    # {"string - http header value - invalid (NUL)",
    #  %Cases.StringHttpHeaderValue{val: "foo\u0000bar"}, false},
    # {"string - http header value - invalid (DEL)", %Cases.StringHttpHeaderValue{val: "\u007f"},
    #  false},
    # {"string - http header value - invalid", %Cases.StringHttpHeaderValue{val: "example\r"},
    #  false},

    # {"string - non-strict valid header - valid",
    #  %Cases.StringValidHeader{val: "cluster.name.123"}, true},
    # {"string - non-strict valid header - valid (uppercase)",
    #  %Cases.StringValidHeader{val: "/TEST/LONG/URL"}, true},
    # {"string - non-strict valid header - valid (spaces)",
    #  %Cases.StringValidHeader{val: "cluster name"}, true},
    # {"string - non-strict valid header - valid (tab)", %Cases.StringValidHeader{val: "example\t"},
    #  true},
    # {"string - non-strict valid header - valid (DEL)", %Cases.StringValidHeader{val: "\u007f"},
    #  true},
    # {"string - non-strict valid header - invalid (NUL)",
    #  %Cases.StringValidHeader{val: "foo\u0000bar"}, false},
    # {"string - non-strict valid header - invalid (CR)",
    #  %Cases.StringValidHeader{val: "example\r"}, false},
    # {"string - non-strict valid header - invalid (NL)",
    #  %Cases.StringValidHeader{val: "exa\u000Ample"}, false}
  ]

  test "strings" do
    for {description, message, expected} <- @cases do
      assert expected == message |> ProtoValidator.validate() |> passed?(),
             "failed: #{description}"
    end
  end
end
