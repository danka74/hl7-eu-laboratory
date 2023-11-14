CodeSystem: CertifiedReferenceMaterialCS
Id: certified-reference-material-code-system
Title: "Certified reference material Code System"
Description: """
Any measurement depends on a comparison between an unknown amount – for the clinical laboratory the unknown is usually hidden in a sample – and something with a known amount. The latter is the calibrator or the working standard suitable for the measuring device. The knowledge of the amount in the calibrator relies on a series of comparisons of materials by which values of the amount have been transferred (cross fingers – correctly!) from the ultimate weight or amount of the pure substances and expressed in SI units. This is however the case only for simple molecules like glucose and creatinine.

Many analytes of interest in medicine are not as simple as glucose and creatinine. They are biological active substances like hormones or proteins with various functions. These substances appear in multiple forms, for example more or less phosphorylated, glycosylated, or complexed with other substances or with each other. Thus, “insulin”, “prostatic specific antigen (PSA)”, “ferritin” or “albumin” are not single molecular species but are more or less complex mixtures of different molecules. In such cases traceability of results from a measurement to an amount of a pure substance is ambiguous. A certified reference material is a physical material produced in order to represent and define a complex mixture of say PSA, insulin or ferritin and is assigned with a stated amount of that substance (given the composition in the reference material). The amount value for the reference material is stated as “International Unit (IU)” and sometimes as mass (mg) given the composition of the analyte in the reference material. These Certified Reference Materials are then used by scientific institutions and manufacturers to produce replicates to which the amount value successively is transferred to the working standard or calibrator by the end-user laboratory to assign a value to an unknown amount in a patient sample.

To fully define what is measured the laboratory should therefore refer to the Certified Reference Material to which the measured value is traceable through the end user calibrator. It means that a measured value, e.g., 5 IU/L of a substance, is expressed as if the composition in the sample equals that of Certified Reference Material.

Certified reference materials are listed e.g., by JCTLM (https://www.jctlmdb.org/#/app/home) and NIBSC (https://www.nibsc.org/documents/ifu/66-304.pdf)

Some examples (in plain text, without the specific syntax used by LOINC and NPU) to describe what is measured in a laboratory test.
* The concentration of insulin in a sample is 50 mIU/L with reference to IS 66/304 (https://www.nibsc.org/documents/ifu/66-304.pdf)
* The concentration of ferritin in a sample is 25 µg/L with reference to IS 19/118 (https://nibsc.org/documents/ifu/19-118.pdf)
* The concentration of albumin in a sample is 45 g/L with reference to ERM-DA470k/IFCC (https://www.jctlmdb.org/#/app/home)
* The concentration of PSA in the sample is 6,8 µg/L with reference to IS 17/100 (https://www.nibsc.org/documents/ifu/17-100.pdf)

Unfortunately, the CRMs are produced in a limited stock and will eventually be depleted. New stocks of CRMs will be produced which again defines the complex mixture of the analytes and assign a new value with a measurement unit. Therefore, a shift of value between different WHO CRMs is usually observed, making comparison of measurement values unsafe when they are traceable to different CRMs.
GN
"""
// based on https://www.who.int/teams/health-product-policy-and-standards/standards-and-specifications/catalogue
// initial code for testing
* #IS_66_304 "IS 66/304" "Human insulin https://www.nibsc.org/documents/ifu/66-304.pdf"
* #IS_19_118 "IS 19/118" "Ferritin https://nibsc.org/documents/ifu/19-118.pdf"
* #ERM-DA470k_IFCC "ERM-DA470k/IFCC" "Albumin in human serum https://www.jctlmdb.org/#/app/home"
* #IS_17_100 "IS 17/100" "Prostate-specific antigen https://www.nibsc.org/documents/ifu/17-100.pdf"


ValueSet: CertifiedReferenceMaterialVS
Id: certified-reference-material-value-set
Title: "Certified reference material Value Set"
Description: "Value set of all codes of the Certified Reference Material code system"
* include codes from system CertifiedReferenceMaterialCS