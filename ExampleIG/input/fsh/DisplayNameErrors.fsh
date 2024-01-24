Profile: TestDevice
Parent: Device
Id: TestDevice
Description: "Device with version.type from $device-versiontype"
* ^status = #draft
* version MS
  * type from $device-versiontype (required)

Instance: aDevice-displayVS
InstanceOf: TestDevice
Description: "Device.version.type.coding.display from ValueSet"
Usage: #example
* version[+]
  * type = $mdc#531976 "Firmware revision"
  * value = "1.0.0"
//Error - Wrong Display Name 'Firmware revision' for urn:iso:std:iso:11073:10101#531976. Valid display is 'MDC_ID_PROD_SPEC_FW' (for the language(s) '--') (INVALID)
//Error - None of the codings provided are in the value set 'Device Version Type' (http://hl7.org/fhir/ValueSet/device-versiontype|5.0.0), and a coding from this value set is required) (codes = urn:iso:std:iso:11073:10101#531976) (CODEINVALID)

Instance: aDevice-displayCS
InstanceOf: TestDevice
Description: "Device.version.type.coding.display from CodeSystem"
Usage: #example
* version[+]
  * type = $mdc#531976 "MDC_ID_PROD_SPEC_FW"
  * value = "1.0.0"
//Error - Wrong Display Name 'MDC_ID_PROD_SPEC_FW' for urn:iso:std:iso:11073:10101#531976. Valid display is 'Firmware revision' (for the language(s) '--') (INVALID)

Instance: aDevice-displayOmitted
InstanceOf: TestDevice
Description: "Device.version.type.coding.display omitted"
Usage: #example
* version[+]
  * type = $mdc#531976
  * value = "1.0.0"
//NoErrors
