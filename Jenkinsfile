	pipeline {
		agent { label 'master' }

		tools {
			jdk 'jdk11'
			maven 'apache-maven-3.9.1'
		}

		stages {
			stage("Tools initialization") {
				steps {
					sh "pwd"
					sh "ls -lart"
					sh "mvn --version"
					sh "java -version"
				}
			}
			stage("Checkout Code") {
				steps {
					checkout scm
				}
			}
			stage("Cleaning workspace") {
				steps {
					sh "mvn clean"
				}
			}
			stage("Running Testcase") {
				steps {
					sh "mvn test"
				}
			}
			stage("Packing Application") {
				steps {
					sh "mvn package -DskipTests"
				}
			}
		}

	}