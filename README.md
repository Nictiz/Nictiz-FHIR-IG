# Nictiz-FHIR-IG
Experimental repository to test conformance resources/examples with

## Purpose
Quality assurance testing of conformance resources in a branch of repository [Nictiz-STU3-Zib2017](https://github.com/Nictiz/Nictiz-STU3-Zib2017)

## How to run
Clone this repo next to wherever you have cloned Nictiz-STU3-Zib2017. Run _genonce.sh if you are on Linux/Unix/macOS. If you are on Windows you could run _genonce.bat but at time of writing this script is not as complete as _genonce.sh.

The _genonce.sh script will get examples and conformance resources from whatever branch you have in Nictiz-STU3-Zib2017 and run the IG Publisher. The _genonce.bat script will only run the IG Publisher with what is already in there.

## Background
This repository is based on the project [HL7 FHIR sample-ig](https://github.com/FHIR/sample-ig). FHIR is © and ® HL7. See the HL7 FHIR [license](http://hl7.org/fhir/license.html) for more details.
