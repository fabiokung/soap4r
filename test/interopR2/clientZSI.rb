#!/usr/bin/env ruby
# encoding: UTF-8

$serverName = 'ZSI'

$serverBase = 'http://63.142.188.184:1122/'
$serverGroupB = 'http://63.142.188.184:1122/'

require 'clientBase'
#$soapAction = 'urn:soapinterop'

drvBase = SOAP::RPC::Driver.new($serverBase, InterfaceNS)
methodDef( drvBase )

drvGroupB = SOAP::RPC::Driver.new($serverGroupB, InterfaceNS)
methodDefGroupB( drvGroupB )

doTestBase( drvBase )
doTestGroupB( drvGroupB )
submitTestResult
