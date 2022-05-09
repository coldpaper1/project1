pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/coldpaper1/project1.git', branch: 'master'
      }
    }
    stage('ansible-playbook start') {
      steps {
        sh '''
        sudo rm -rf /var/lib/jenkins/workspace/project/project1
        git clone https://github.com/coldpaper1/project1.git
        cd project1
        sudo chmod 777 k8s-master.yaml
        sudo chmod 777 imagebuild.yaml
        sudo chmod 777 master.lst
        sudo ansibe-playbook -i master.lst k8s-master  
        '''
      }
    }

  }
}
