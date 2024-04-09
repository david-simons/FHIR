Alias: $DCM = http://dicom.nema.org/resources/ontology/DCM

ValueSet: DeviceModalityValueSet
Id: DeviceModalityValueSet
Title: "DeviceModalityValueSet"
Description: "List of device modalities"
* ^status = #draft
* ^experimental = false
* DCM#CT "Computed Tomography"
* DCM#MR "Magnetic Resonance"
* DCM#NM "Nuclear Medicine"
* DCM#US "Ultrasound"
