-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2008-2011 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.
module("luci.controller.admin.product", package.seeall)

function index()
	entry({"admin", "product"}, firstchild(), "Product",30).dependent = false
	entry({"admin", "product","RS232"}, cbi("admin_myapp/rs232_tab"),_("RS232 Tab"),1)
	entry({"admin", "product","MAX485"}, cbi("admin_myapp/max485_tab"),_("MAX485 Tab"),2)
end
