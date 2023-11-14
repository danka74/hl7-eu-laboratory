Instance: CRMObservtionResult1
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation with certified reference material 1"
Description: "The concentration of insulin in a sample is 50 mIU/L with reference to IS 66/304 (https://www.nibsc.org/documents/ifu/66-304.pdf)"
Usage: #example

* id = "4335db48-7090-45b3-a2c2-45b45f94a67c" 
* status = #final
* code.coding[+] = http://loinc.org#20448-7	"Insulin [Units/volume] in Serum or Plasma"
* code.coding[+] = http://npu-terminology.org#NPU02496 "P—Insulin; arb.subst.c.(IRP 66/304; proc.) = ? × 10-3 IU/L"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* extension[ObservationCertifiedReferenceMaterial].extension[concept].valueCoding = CertifiedReferenceMaterialCS#IS_66_304 
* valueQuantity.value = 50
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#m[iU]/L
* valueQuantity.unit = "mIU/L"

Instance: CRMObservtionResult2
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation with certified reference material 2"
Description: "The concentration of ferritin in a sample is 25 µg/L with reference to IS 19/118 (https://nibsc.org/documents/ifu/19-118.pdf)"
Usage: #example

* id = "68b3cdb7-5eaa-43b0-8930-4f1df1ef0c5e" 
* status = #final
* code.coding[+] = http://loinc.org#20448-7	"Insulin [Units/volume] in Serum or Plasma"
* code.coding[+] = http://npu-terminology.org#NPU19763 "P—Ferritin; mass c. = ? µg/L"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* extension[ObservationCertifiedReferenceMaterial].extension[concept].valueCoding = CertifiedReferenceMaterialCS#IS_19_118 
* valueQuantity.value = 25
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#ug/L
* valueQuantity.unit = "µg/L"

// 
Instance: CRMObservtionResult3
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation with certified reference material 3"
Description: "The concentration of albumin in a sample is 45 g/L with reference to ERM-DA470k/IFCC (https://www.jctlmdb.org/#/app/home)"
Usage: #example

* id = "f13bd974-507d-4a46-8e99-1ad7fe5cb74d" 
* status = #final
* code.coding[+] = http://loinc.org#1751-7	"Albumin [Mass/volume] in Serum or Plasma"
* code.coding[+] = http://npu-terminology.org#NPU19673 "P—Albumin; mass c.(proc.) = ? g/L"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* extension[ObservationCertifiedReferenceMaterial].extension[concept].valueCoding = CertifiedReferenceMaterialCS#ERM-DA470k_IFCC
* valueQuantity.value = 45
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#g/L
* valueQuantity.unit = "g/L"

// 
Instance: CRMObservtionResult4
InstanceOf: ObservationResultsLaboratoryEu
Title: "Observation with certified reference material 4"
Description: "The concentration of PSA in the sample is 6,8 µg/L with reference to IS 17/100 (https://www.nibsc.org/documents/ifu/17-100.pdf)"
Usage: #example

* id = "061b58cd-6c7a-45b9-a21d-f6ff845b143f" 
* status = #final
* code.coding[+] = http://loinc.org#2857-1	"Prostate specific Ag [Mass/volume] in Serum or Plasma"
* code.coding[+] = http://npu-terminology.org#NPU58639 "P—Prostate-specific antigen; mass c.(IS 17/100; proc.) = ? µg/L"
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* performer[+].display = "Jan Laborant" // ToDo: consider cardinality
* extension[ObservationCertifiedReferenceMaterial].extension[concept].valueCoding = CertifiedReferenceMaterialCS#IS_17_100 
* valueQuantity.value = 6.8
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#ug/L
* valueQuantity.unit = "µg/L"
* device = Reference(urn:uuid:47cca071-b309-41d0-b664-f4266d1358d0)

Instance: CRMObservtionResult4DeviceMetric
InstanceOf: DeviceMetric
Title: "DeviceMetric with with certified reference material 4"
Description: "Reference to IS 17/100 (https://www.nibsc.org/documents/ifu/17-100.pdf)"
Usage: #example

* id = "47cca071-b309-41d0-b664-f4266d1358d0"
* category = #setting // ??
* type = #MDC_ATTR_METRIC_CALIB
* calibration[+].state = #calibrated
* calibration[=].extension[ObservationCertifiedReferenceMaterial].extension[concept].valueCoding = CertifiedReferenceMaterialCS#IS_17_100 
