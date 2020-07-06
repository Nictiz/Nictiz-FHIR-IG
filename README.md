# Nictiz-FHIR-IG
Experimental repository to test conformance resources/examples with

## Purpose
Quality assurance testing of conformance resources in a branch of repository [Nictiz-STU3-Zib2017](https://github.com/Nictiz/Nictiz-STU3-Zib2017)

## How to run
* Clone this repo next to wherever you have cloned Nictiz-STU3-Zib2017. 
* Run ```_updatePublisher.sh``` or ```_updatePublisher.bat```. This adds the IG Publisher to input-cache. Because of the size of ~130MB it is in .gitignore
* Run ```_updateSources.sh``` or ```_updateSource.bat``` if necessary. This will get examples and conformance resources from whatever branch you have active in Nictiz-STU3-Zib2017.
* Run ```_genonce.sh``` or ```_genonce.bat``` to run the build.

The short version. On *nix/macOS use 
```
./_updateSources.sh | tee _updateSources.log; ./_genonce.sh | tee _genonce.log
```

on Windows use

```
_updateSources.bat 1> _updateSources.log 2>&1
type _updateSources.log
_genonce.bat 1> _genonce.log 2>&1
type _genonce.log
```

## Background
This repository is based on the project [HL7 FHIR sample-ig](https://github.com/FHIR/sample-ig). FHIR is © and ® HL7. See the HL7 FHIR [license](http://hl7.org/fhir/license.html) for more details.

See IG Publisher documentation for specifics on how that works and what the system requirements are: [https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).
