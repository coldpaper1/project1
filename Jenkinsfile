pipeline {
  agent any
  stages {


    stage('docker image build & push ') {
      steps {
        sh '''
        sudo rm -rf /var/lib/jenkins/workspace/test10/project1
        sudo git clone https://github.com/coldpaper1/project1.git
        cd project1
        sudo chmod 777 k8s-master.yaml
        sudo chmod 777 imagebuild.yaml
        sudo ansible-playbook imagebuild.yaml  
        '''
      }
    }
    stage('ansible-playbook start') {
      steps {
        sh '''

        sudo ansible-playbook k8s-master.yaml  
        '''
      }
    }

  }
}
