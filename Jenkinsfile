pipeline {
    environment {
        registryCredential = 'awsCredential'
        dockerImage = ''
        version = 'v1'
        IMAGE = ''
        appName = 'hellonodelatest'	
        imageTag = 'v1'
        ecrurl = '464340070458.dkr.ecr.us-east-1.amazonaws.com'
        ecrfolder = 'eksws-ecrdo-ylk1nd2hhacb'
    }
    agent any

    stages {
        stage('Docker Build') {
            steps {
                script {
                    // IMAGE = "$appName:$version"
                    // echo IMAGE
                    // dockerImage = docker.build(IMAGE)
                    // sh 'ls'
                    // sh 'docker images'
                    sh 'kubectl version --short'
                }
            }
        }
        // stage('Push to AWS ECR') {
		// 	steps{
		// 		script {
		// 		    sh("eval \$(aws ecr get-login --no-include-email  --region us-east-1| sed 's|https://||')")
		// 			sh('docker tag ${appName}:${version} ${ecrurl}/${ecrfolder}:${imageTag}')
		// 			sh('docker push ${ecrurl}/${ecrfolder}:${imageTag}')
		// 		}
		// 	}
		// }

    }
}