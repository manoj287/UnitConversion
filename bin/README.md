# Unit Conversion Validator
Developer: Manoj Kumar

This is to validate the student response for unit conversion ready-to-deploy java web application built for Tomcat using Maven and webapp-runner.

## Running Locally
Prerequisites:
** need maven and java installed and env variables set up properly
** make sure no other application are running on port 8080(for e.g jenkins) ,since this application 
   by default will point to 8080.

Instructions:
*Download the zip file from github
*Extract the file
*open command prompt(Windows) and navigate to the extracted folder
 for e.g. C:\Downloads\Unit-Conversion-Validator\
* Run the commands
  mvn package
 java -jar target/dependency/webapp-runner.jar target/*.war

Now the pplication is deployed locally and it will be available on `http://localhost:8080`

## How This Was Built

1. Generate the project using a Maven archetype:

   mvn archetype:generate -DarchetypeArtifactId=maven-archetype-webapp

2. Add the webapp-runner plugin into the `pom.xml`:

   <build>
     <!-- ... -->
     <plugins>
       <!-- ... -->
       <plugin>
         <groupId>org.apache.maven.plugins</groupId>
         <artifactId>maven-dependency-plugin</artifactId>
         <version>2.3</version>
         <executions>
           <execution>
             <phase>package</phase>
             <goals><goal>copy</goal></goals>
             <configuration>
               <artifactItems>
                 <artifactItem>
                   <groupId>com.github.jsimone</groupId>
                   <artifactId>webapp-runner</artifactId>
                   <version>8.5.11.3</version>
                   <destFileName>webapp-runner.jar</destFileName>
                 </artifactItem>
               </artifactItems>
             </configuration>
           </execution>
         </executions>
       </plugin>
     </plugins>
   </build>

3. Add the login in index.jsp


## Future development tasks
1. Design the website at full scale
2. Connect the application to database and store the results
3. Provision a server with tomcat installed,update the pom.xml file and deploy the application on the server (like cloud)
4. Create a pipeline job in Jenkins and add a github webhook ,so that whenever a new comit is made to the repo,
   Jenkins will run the pipeline job and deploy the application on the server.
5. Adding code inspection tolls such as sonarqube,contrast to detect code vulnerabilities and install log and server monitoring
   tools like ELK stack,Dynatrace or Appdynamics respectively to check the critical stats.
