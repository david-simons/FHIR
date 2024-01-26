ValueSet: DeviceTypeHwSwValueSet
Id: DeviceTypeHwSwValueSet
Title: "DeviceTypeHwSwValueSet"
Description: "DeviceTypeHwSwValueSet"
* ^status = #draft
* ^experimental = false
* $sct#706687001 "Software"
* $sct#706693009 "Electronic hardware"


Profile: TestDevice
Parent: Device
Id: TestDevice
Description: "TestDevice"
* ^status = #draft
* ^experimental = false
* type 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "coding"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* type contains hwSw 1..1
* type[hwSw].coding from DeviceTypeHwSwValueSet (required)


Instance: aTestDevice
InstanceOf: TestDevice
Usage: #example
Description: "aTestDevice"
* type[hwSw]
  * coding = $sct#706693009 "Electronic hardware"
* type[+]
  * coding = $GMDN#37618 "Full-body CT system"
//Error - Device.type:hwSw: max allowed = 1, but found 2 (from http://example.org/StructureDefinition/TestDevice|0.1.0) (STRUCTURE)
//Info - A definition for CodeSystem 'http://terminology.hl7.org/CodeSystem/GMDN' could not be found, so the code cannot be validated (NOTFOUND)
//Warning - Resolved system http://terminology.hl7.org/CodeSystem/GMDN (v2.0.1), but the definition doesn't include any codes, so the code has not been validated (CODEINVALID)