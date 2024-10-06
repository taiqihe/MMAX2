# Install annotationdiffplugin.jar
mvn install:install-file -Dfile=Libs/annotationdiffplugin.jar -DgroupId=org.example -DartifactId=annotationdiffplugin -Dversion=1.0 -Dpackaging=jar

# Install batik-1.5.1 JAR files
mvn install:install-file -Dfile=Libs/batik-1.5.1/batik-awt-util.jar -DgroupId=org.apache.xmlgraphics -DartifactId=batik-awt-util -Dversion=1.5.1 -Dpackaging=jar
mvn install:install-file -Dfile=Libs/batik-1.5.1/batik-dom.jar -DgroupId=org.apache.xmlgraphics -DartifactId=batik-dom -Dversion=1.5.1 -Dpackaging=jar
mvn install:install-file -Dfile=Libs/batik-1.5.1/batik-svggen.jar -DgroupId=org.apache.xmlgraphics -DartifactId=batik-svggen -Dversion=1.5.1 -Dpackaging=jar
mvn install:install-file -Dfile=Libs/batik-1.5.1/batik-util.jar -DgroupId=org.apache.xmlgraphics -DartifactId=batik-util -Dversion=1.5.1 -Dpackaging=jar
mvn install:install-file -Dfile=Libs/batik-1.5.1/batik-xml.jar -DgroupId=org.apache.xmlgraphics -DartifactId=batik-xml -Dversion=1.5.1 -Dpackaging=jar

# Install jakarta-oro-2.0.8.jar
mvn install:install-file -Dfile=Libs/jakarta-oro-2.0.8/jakarta-oro-2.0.8.jar -DgroupId=jakarta-oro -DartifactId=jakarta-oro -Dversion=2.0.8 -Dpackaging=jar

# Install xalan-j_2_7_2-bin JAR files
mvn install:install-file -Dfile=Libs/xalan-j_2_7_2-bin/xalan.jar -DgroupId=xalan -DartifactId=xalan -Dversion=2.7.2 -Dpackaging=jar
mvn install:install-file -Dfile=Libs/xalan-j_2_7_2-bin/xml-apis.jar -DgroupId=xalan -DartifactId=xml-apis -Dversion=2.7.2 -Dpackaging=jar

# Install Xerces-J-bin.2.12.1 JAR files
mvn install:install-file -Dfile=Libs/Xerces-J-bin.2.12.1/xercesImpl.jar -DgroupId=xerces -DartifactId=xercesImpl -Dversion=2.12.1 -Dpackaging=jar
mvn install:install-file -Dfile=Libs/Xerces-J-bin.2.12.1/xml-apis.jar -DgroupId=xerces -DartifactId=xml-apis -Dversion=2.12.1 -Dpackaging=jar
mvn install:install-file -Dfile=Libs/Xerces-J-bin.2.12.1/serializer.jar -DgroupId=xerces -DartifactId=serializer -Dversion=2.12.1 -Dpackaging=jar