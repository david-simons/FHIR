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
  * coding = $sct#706693009
* type[+]
  * coding = $GMDN#37618
* type[+]
  * coding = $icpc-DAN#12345

// Error - Device.type:hwSw: max allowed = 1, but found 3 (from http://example.org/StructureDefinition/TestDevice|0.1.0) (STRUCTURE)
// Info - A definition for CodeSystem 'http://terminology.hl7.org/CodeSystem/GMDN' could not be found, so the code cannot be validated (NOTFOUND)
// Warning - Resolved system http://terminology.hl7.org/CodeSystem/GMDN (v2.0.1), but the definition doesn't include any codes, so the code has not been validated (CODEINVALID)
// Info - A definition for CodeSystem 'http://terminology.hl7.org/CodeSystem/icpc-DAN' could not be found, so the code cannot be validated (NOTFOUND)
// Warning - Resolved system http://terminology.hl7.org/CodeSystem/icpc-DAN (v2.0.1), but the definition doesn't include any codes, so the code has not been validated (CODEINVALID)
// err = 1, warn = 2, info = 2
// IG Publisher Version: 1.5.15