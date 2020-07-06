# Nictiz-FHIR-IG
Experimental repository to test conformance resources/examples with

## Purpose
Quality assurance testing of conformance resources in a branch of repository [Nictiz-STU3-Zib2017](https://github.com/Nictiz/Nictiz-STU3-Zib2017)

## How to run
* Clone this repo next to wherever you have cloned Nictiz-STU3-Zib2017. 
* Run ```_updatePublisher.sh``` or ```_updatePublisher.bat```. This adds the IG Publisher to input-cache. Because of the size of ~130MB it is in .gitignore
* If you want to test with specific Nictiz-STU3-Zib2017 sources, make sure you switched to the right branch there first and then run ```_updateSources.sh```. (.bat is *TODO*). This will get examples and conformance resources from whatever branch you have in Nictiz-STU3-Zib2017.
* Run ```_genonce.sh```/```_genonce.bat``` to run the build.

Hint: on *nix/macOS use ```./_updateSources.sh | tee _updateSources.log; ./_genonce.sh | tee _genonce.log```

## Background
This repository is based on the project [HL7 FHIR sample-ig](https://github.com/FHIR/sample-ig). FHIR is © and ® HL7. See the HL7 FHIR [license](http://hl7.org/fhir/license.html) for more details.

See IG Publisher documentation for specifics on how that works and what the system requirements are: [https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).
