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
                    sh 'curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.15.11/2020-07-08/bin/linux/amd64/kubectl'
                    sh 'kubectl version'
                    sh 'aws sts assume-role --role-arn arn:aws:iam::464340070458:role/EksWorkshopCodeBuildKubectlRole --role-session-name codebuild-kubectl --duration-seconds 900'
                    sh 'aws eks update-kubeconfig --name eks-nginxc-test1'
                    sh 'kubectl apply -f deployment.yml'
                }
            }
        }
        // stage('Push to AWS ECR') {
		// 	steps{
		// 		script {
		// 		    sh("eval \$(aws ecr get-login --no-include-email --region us-east-1| sed 's|https://||')")
		// 			sh('docker tag ${appName}:${version} ${ecrurl}/${ecrfolder}:${imageTag}')
		// 			sh('docker push ${ecrurl}/${ecrfolder}:${imageTag}')
		// 		}
		// 	}
		// }

    }
}
