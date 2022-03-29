pipeline {
    agent {
        label('terraform')
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('init') {
            steps {
                dir('infrastructure') {
                    sh 'terraform init'
                }
            }
        }
        stage('validate') {
            steps {
                dir('infrastructure') {
                    sh 'terraform validate'
                }
            }
        }
        stage('build-dev') {
            steps {
                dir('infrastructure') {
                    sh 'terraform workspace new dev'
                    sh 'terraform plan -out=ftdev_plan -var=env=dev'
                    sh 'terraform apply "ftdev_plan"'
                }
            }
        } 
        stage('build-prod') {
            steps {
                dir('infrastructure') {
                    timeout(time: 10, unit: 'MINUTES') {
                    input message: 'Are you sure to deploy?', ok: 'Yes, deploy in STAGING'
                    sh 'terraform workspace new prod'
                    sh 'terraform plan -out=ftprod_plan -var=env=prod'
                    }
                }
            }
        }   

    }  

}