node 
{
    notifyBuild(buildStatus = 'STARTED')
    try
    {
    
def mavenhomepath =tool name: "mymaven-3.9.10"
stage('GIT CHECKOUT')
        {
git branch: 'dev', url: 'https://github.com/saidevops178-org-1/maven-webapplication-project-kkfunda.git'
        }
stage('MAVEN BUILD')
        {
sh "${mavenhomepath}/bin/mvn clean package"
        }
stage('SONARQUBE REPORT')
        {
sh "${mavenhomepath}/bin/mvn clean package sonar:sonar"
        }
stage('DEPLOYING TO TOMCAT')
        {
    sh """

      curl -u sai:sai \
--upload-file /var/lib/jenkins/workspace/scripted-pipeline/target/maven-web-application.war \
"http://3.111.144.186:8080/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
        }
    }//try close
    catch (e) 
    {
       currentBuild.result "FAILED"
    }
    finally 
    {
    // Success or failure, always send notifications
    notifyBuild(currentBuild.result)
   }
}//Node Close


def notifyBuild(buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESS'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESS') {
    color = 'GREEN'
    colorCode = '#00FF00'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary, channel: '#abc')
}
