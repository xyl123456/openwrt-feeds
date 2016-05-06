-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2011 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

local m,s,o
m = Map("rs232",translate("rs232_file From"),translate("Please select the from below"))

s = m:section(TypedSection,"rs232","The rs232 list tab")
s.anonymous = true
s.addremove = false

s:tab("rs232_1",  translate("RS232_1"))
s:tab("rs232_2",  translate("RS232_2"))
s:tab("rs232_3",  translate("RS232_3"))
s:tab("rs232_4",  translate("RS232_4"))
s:tab("ipport",  translate("IP_PORT"))

--
-- RS232 TAB rs232_1
--
o = s:taboption("rs232_1", Flag, "rs232_1", translate("RS232_1:"))
o.rmempty = false


o = s:taboption("rs232_1", ListValue, "baud_1", translate("Baud rate:"))
o.default = 9600
o.datatype = "uinteger"
o:value(9600,translate("B_9600"))
o:value(38400,translate("B_38400"))
o:value(57600,translate("B_57600"))
o:value(115200,translate("B_115200"))

o = s:taboption("rs232_1", ListValue, "data_bit_1", translate("Data Bit:"))
o.default = 8
o.datatype = "uinteger"
o:value(8,translate("8"))
o:value(7,translate("7"))

o = s:taboption("rs232_1", ListValue, "stop_bit_1", translate("Stop Bit:"))
o.default = 1
o.datatype = "uinteger"
o:value(1,translate("1"))
o:value(2,translate("2"))

o = s:taboption("rs232_1", ListValue, "check_bit_1", translate("Check Bit:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))

o = s:taboption("rs232_1", ListValue, "stream_control_1", translate("Stream Control:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))

--
-- RS232_2
--
o = s:taboption("rs232_2", Flag, "rs232_2", translate("RS232_2:"))
o.rmempty = false

o = s:taboption("rs232_2", ListValue, "baud_2", translate("Baud rate:"))
o.default = 9600
o.datatype = "uinteger"
o:value(9600,translate("B_9600"))
o:value(38400,translate("B_38400"))
o:value(57600,translate("B_57600"))
o:value(115200,translate("B_115200"))

o = s:taboption("rs232_2", ListValue, "data_bit_2", translate("Data Bit:"))
o.default = 8
o.datatype = "uinteger"
o:value(8,translate("8"))
o:value(7,translate("7"))

o = s:taboption("rs232_2", ListValue, "stop_bit_2", translate("Stop Bit:"))
o.default = 1
o.datatype = "uinteger"
o:value(1,translate("1"))
o:value(2,translate("2"))

o = s:taboption("rs232_2", ListValue, "check_bit_2", translate("Check Bit:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))

o = s:taboption("rs232_2", ListValue, "stream_control_2", translate("Stream Control:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))


--
-- RS232_3
--
o = s:taboption("rs232_3", Flag, "rs232_3", translate("RS232_3:"))
o.rmempty = false

o = s:taboption("rs232_3", ListValue, "baud_3", translate("Baud rate:"))
o.default = 9600
o.datatype = "uinteger"
o:value(9600,translate("B_9600"))
o:value(38400,translate("B_38400"))
o:value(57600,translate("B_57600"))
o:value(115200,translate("B_115200"))

o = s:taboption("rs232_3", ListValue, "data_bit_3", translate("Data Bit:"))
o.default = 8
o.datatype = "uinteger"
o:value(8,translate("8"))
o:value(7,translate("7"))

o = s:taboption("rs232_3", ListValue, "stop_bit_3", translate("Stop Bit:"))
o.default = 1
o.datatype = "uinteger"
o:value(1,translate("1"))
o:value(2,translate("2"))

o = s:taboption("rs232_3", ListValue, "check_bit_3", translate("Check Bit:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))

o = s:taboption("rs232_3", ListValue, "stream_control_3", translate("Stream Control:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))

--
-- RS232_2
--
o = s:taboption("rs232_4", Flag, "rs232_4", translate("RS232_4:"))
o.rmempty = false

o = s:taboption("rs232_4", ListValue, "baud_4", translate("Baud rate:"))
o.default = 9600
o.datatype = "uinteger"
o:value(9600,translate("B_9600"))
o:value(38400,translate("B_38400"))
o:value(57600,translate("B_57600"))
o:value(115200,translate("B_115200"))

o = s:taboption("rs232_4", ListValue, "data_bit_4", translate("Data Bit:"))
o.default = 8
o.datatype = "uinteger"
o:value(8,translate("8"))
o:value(7,translate("7"))

o = s:taboption("rs232_4", ListValue, "stop_bit_4", translate("Stop Bit:"))
o.default = 1
o.datatype = "uinteger"
o:value(1,translate("1"))
o:value(2,translate("2"))

o = s:taboption("rs232_4", ListValue, "check_bit_4", translate("Check Bit:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))

o = s:taboption("rs232_4", ListValue, "stream_control_4", translate("Stream Control:"))
o.default = 0
o.datatype = "uinteger"
o:value(0,translate("none"))

--
-- PORT OF IP
--
o = s:taboption("ipport", Value, "ipport", translate("IP_PORT"))
o.optional=false
o.rmempty = false


--[[

o = s:option(Flag, "rs232_1", translate("RS232_1"))
o.rmempty = false

o = s:option(Flag, "rs232_2", translate("RS232_2"))
o.rmempty = false

o = s:option(Flag, "rs232_3", translate("RS232_3"))
o.rmempty = false

o = s:option(Flag, "rs232_4", translate("RS232_4"))
o.rmempty = false
]]--
local apply = luci.http.formvalue("cbi.apply")
	if apply then
		luci.sys.call("/etc/init.d/rs232 start")
		luci.sys.call("killall epoll_test")
		luci.sys.call("/usr/sbin/epoll_test start")
	end

return m
