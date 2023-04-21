import Cocoa

var greeting = "Hello, playground"

//  <!DOCTYPE graphPreset>
//<preset>
//	<name>”Demand<”/name>
//	<equation>Q=a-bP</equation>
//	<eqType>”Linear”</eqType>
//	<var>a=0</var>
//	<range>a>0</range>
//	<var>b=0</var>
//<range>b>0</range>
//	<xIs>P</xIs>
//<yIs>Q</yIs>
//</preset>
//
//<advanced>
//	<range>inf<a<inf</range>
//<range>inf<b<inf/range>
//</advanced>

var userInput : String = """
 <!DOCTYPE graphPreset>
 <preset>
 <name>”Demand<”/name>
 <equation>Q=a-bP</equation>
 <eqType>”Linear”</eqType>
 <var>a=0</var>
 <range>a>0</range>
 <var>b=0</var>
 <range>b>0</range>
 <xIs>P</xIs>
 <yIs>Q</yIs>
 </preset>
 
 <advanced>
 <range>inf<a<inf</range>
 <range>inf<b<inf/range>
 </advanced>
 """

print(userInput)



var parsedElement = [String: Any]()
var XMLElements = [[String: Any]]()
var currentElement = ""

var parser : XMLParser = XMLParser.init(data: userInput.data(using: String.Encoding.utf8)!)
parser.parse()



