#!/usr/bin/env ruby
# encoding: UTF-8

$serverName = 'XSOAP1.2'

$server = 'http://www.wingfoot.com/servlet/wserver'

require 'clientBase'

drv = SOAP::RPC::Driver.new($server, InterfaceNS)
methodDefBase(drv)

doTestBase(drv)
#doTestGroupB(drv)
submitTestResult
