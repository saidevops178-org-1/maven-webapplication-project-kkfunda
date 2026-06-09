node {
def mavenhomepath =tool name: "mymaven-3.9.10"
stage('GIT CHECKOUT'){
git branch: 'dev', url: 'https://github.com/saidevops178-org-1/maven-webapplication-project-kkfunda.git'
}
stage('MAVEN BUILD'){
sh "${mavenhomepath}/bin/mvn clean package"
}
stage('SONARQUBE REPORT'){
sh "${mavenhomepath}/bin/mvn clean package sonar:sonar"
}
stage('DEPLOYING TO TOMCAT'){
    sh """

      curl -u sai:sai \
--upload-file /var/lib/jenkins/workspace/scripted-pipeline/target/maven-web-application.war \
"http://3.111.144.186:8080/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
}
}
