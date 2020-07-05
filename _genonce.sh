#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/

#### 2020-01-01 Nictiz additions ####
echo Deleting .DS_Store files
find . -name ".DS_Store" -exec rm {} \;

nictiz_input_source=../Nictiz-STU3-Zib2017
if [ -e $nictiz_input_source ]; then
    echo Refreshing source from:
    git -C $nictiz_input_source status
    echo ""
    
    echo Refresh examples from checked out Git branch
    rm -rf input/examples/*
    find $nictiz_input_source/Examples -name "*.xml" -exec cp {} input/examples/ \;
    
    echo Refresh conformance resources from checked out Git branch
    rm -rf input/resources/*
    find $nictiz_input_source/Profiles\ -\ ZIB\ 2017 -name "*.xml" -exec cp {} input/resources/ \;
    
    echo Creating IG from input
    if [ -e input/myig.xml ]; then 
        mv input/myig.xml input/myig-old.xml
    fi
    
    java -cp $input_cache_path/$publisher_jar net.sf.saxon.Transform -xsl:build-myig.xsl -s:build-myig.xsl -o:input/myig.xml
else
    echo Cannot refresh conformance resources. Nictiz IG Publisher is not next to $nictiz_input_source
fi

#### 2020-01-01 Nictiz additions ####

echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -Xmx10G -jar $publisher -ig ig.ini $txoption $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -Xmx10G -jar $publisher -ig ig.ini $txoption $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi
