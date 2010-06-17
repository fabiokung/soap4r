#!/usr/bin/env ruby
# encoding: UTF-8

$serverName = 'webMethods'

$server = 'http://ewsdemo.webMethods.com:80/soap/rpc'
$noEchoMap = true

require 'clientBase'

drv = SOAP::RPC::Driver.new($server, InterfaceNS)
methodDef(drv)

doTestBase(drv)
doTestGroupB(drv)
submitTestResult
