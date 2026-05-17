pipeline {
    agent any

    stages {
        stage('Parallel Echo Tasks') {
            parallel {
                
                stage('Task A') {
                    steps {
                        echo 'Starting Task A...'
                        echo 'Task A is doing some work.'
                        echo 'Task A finished.'
                    }
                }

                stage('Task B') {
                    steps {
                        echo 'Starting Task B...'
                        echo 'Task B is running simultaneously.'
                        echo 'Task B finished.'
                    }
                }

                stage('Task C') {
                    steps {
                        echo 'Starting Task C...'
                        echo 'Task C is also running.'
                        echo 'Task C finished.'
                    }
                }
                
            }
        }
    }
}