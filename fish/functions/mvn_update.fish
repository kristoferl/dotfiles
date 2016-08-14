function mvn_update
   mvn -U clean
   mvn dependency:sources
 	 mvn dependency:resolve -Dclassifier=javadoc
end
