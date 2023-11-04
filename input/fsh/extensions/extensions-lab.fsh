//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: CompositionBasedOnOrderOrRequisition
Id:   composition-basedOn-order-or-requisition
Title:  "Document Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^url = "http://hl7.eu/fhir/StructureDefinition/composition-basedOn-order-or-requisition"
* value[x] only Reference (ServiceRequest) or Identifier

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Commented based on the suggestion form the 2023-05-26 meeting see https://github.com/hl7-eu/laboratory/issues/11 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: DiagnosticReportBasedOnRequisition
Id:   diagnostic-report-basedOn-requisition
Title:  "DiagnosticReport Based On Requesition"
Description: "This extension provides a link to the requisition (ServiceRequest.requisition [i.e., 'groupIdentifier']) that this DiagnosticReport is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
// DiagnosticReport already includes 'basedOn' with Reference(ServiceRequest)
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport.basedOn"
* value[x] only Identifier */

Extension: InformationRecipient
Id:   information-recipient
Title: "Information recipient"
Description: "This extension applies to the Composition resource and is used to represent an intended recipient of the composition."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^url = "http://hl7.eu/fhir/StructureDefinition/information-recipient"
* value[x] only Reference (Practitioner or Device or Patient or RelatedPerson or PractitionerRole or Organization)	

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: ObservationCertifiedReferenceMaterial
Id:   observation-certified-reference-material
Title:  "Certified Reference Material"
Description: "This extension provides the certified reference material used to calibrate the observation."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* ^url = "http://hl7.eu/fhir/StructureDefinition/certified-reference-material"
* extension contains 
    valueCodingElement 0..* and
    valueReferenceElement 0..*
* extension[valueCodingElement].value[x] only Coding
* extension[valueCodingElement].value[x] from CertifiedReferenceMaterialVS (extensible)
// * extension[valueCoding] from CalibratorValueSet (extensible)
* extension[valueReferenceElement].value[x] only Reference(Substance)

Invariant: crm-1
Description: "ObservationCertifiedReferenceMaterial should have either a valueCoding or a valueReference"
Expression: "ObservationCertifiedReferenceMaterial.extension[valueCodingElement].exists() xor ObservationCertifiedReferenceMaterial.extension[valueReferenceElement].exists()"
Severity: #warning