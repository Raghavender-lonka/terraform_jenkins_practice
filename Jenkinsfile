pipeline {
  agent any
//   environment {
//        AWS_REGION = 'us-west-1'
//        AWS_ACCESS_KEY_ID = 'ASIAZ3CUIHQKN5JUVJG5'
//        AWS_SECRET_ACCESS_KEY = 'j5hw5vVaHaiHTAYv+dZlG8iXn9y4FuiKDVZHMvxT'
//   }
  stages {
      stage('AWS Credentials') {
        steps{
             bat 'SET AWS_ACCESS_KEY_ID=ASIAZ3CUIHQKKSKWEULE'
             bat 'SET AWS_SECRET_ACCESS_KEY=+uZ7aGanMP7CzDLI+eZhD1yxgPVZiYADXNZpcxHv'
             bat 'SET AWS_SESSION_TOKEN=IQoJb3JpZ2luX2VjEKr//////////wEaCXVzLXdlc3QtMiJGMEQCIF0Qv/40MJClzSeO7qBXbs6o4YtDTDFbhrOe4f777mjxAiA/6fGeDo8AktnjR3UYHNptQ+24UQN5Iw7EWD1xxnjRdyqdAwjT//////////8BEAEaDDY3NjYzNDA0OTU1NiIMb0gNGVLq2EMzzBAuKvECWnlA3c9F6KTa2Fg8g9D341Nkk7cg5LjYG+2/3DEeuEBRvosyfRyLQe03bNbwepmV5BrpXuTLz/3K+V2TSnRSH3fhM5J9XgyFZxIpBOzt6t1R7WdF0scGtbQUUMbzvnH8rKIE0htd+v86fmVC3yjZJRCj4IyTgCY1PTinuyt5nzdBfEanJgOBRn+NqWuXu+F4gToTjQ1Eo/lEgLg0a9H35Xhy7Fzn6+CXZ9w7WU//UeatI3BmE33q7c09shNA5fASZcH2GBLAUaGZsQyd7DfDD6+6QpdiveuG/aanqyyLHq3CHp0isDGUNIrbXzf72wMqZa1UyIgbGgHAf2iPDIt8tkggkZnZ8F0MkV4FlkO4SAIYLUGaJovEhLw1En/Mj8XW+Lk4dLtxbAoZrE7FguUoXdlbwsyEFUYyYmKbmHDr7Xf4BI/f2+vuzjiI5/9gu/ZuXKLuj/uReJWULp/U/LS9eC8xkyE+T7i3O/GItmYO3tpaMMCisqMGOqcBgrkiZuVGnGkPnvGnyaxAF/HMRoI7XeMLjXQJGygH/mPpfkuVSmPdDLucVryDcJoyttv00PDpVXYvHBI/3DxpVCXdY0hYs9ZD+vt6VJ0d/ISImqbTcauhIahZMQwOOiCgTMNlT+2T8NsfbtVi0fT5WpXApgjKK/tsCi6gyhURDZLKBzdjbl3WvSK9NPOrCRmvmeYGN0ZibxIGQRDoZQx94Hi3eMdWxGc='
        }
      } 
      stage('Git checkout') {
         steps{
              git branch: 'main', credentialsId: 'Github', url: 'https://github.com/Raghavender-lonka/terraform_jenkins_practice.git'
          }
      }
      stage('terraform init') {
          steps{
               bat 'terraform init -backend-config="access_key=ASIAZ3CUIHQKKSKWEULE" -backend-config="secret_key=+uZ7aGanMP7CzDLI+eZhD1yxgPVZiYADXNZpcxHv" -backend-config="secret_token=IQoJb3JpZ2luX2VjEKr//////////wEaCXVzLXdlc3QtMiJGMEQCIF0Qv/40MJClzSeO7qBXbs6o4YtDTDFbhrOe4f777mjxAiA/6fGeDo8AktnjR3UYHNptQ+24UQN5Iw7EWD1xxnjRdyqdAwjT//////////8BEAEaDDY3NjYzNDA0OTU1NiIMb0gNGVLq2EMzzBAuKvECWnlA3c9F6KTa2Fg8g9D341Nkk7cg5LjYG+2/3DEeuEBRvosyfRyLQe03bNbwepmV5BrpXuTLz/3K+V2TSnRSH3fhM5J9XgyFZxIpBOzt6t1R7WdF0scGtbQUUMbzvnH8rKIE0htd+v86fmVC3yjZJRCj4IyTgCY1PTinuyt5nzdBfEanJgOBRn+NqWuXu+F4gToTjQ1Eo/lEgLg0a9H35Xhy7Fzn6+CXZ9w7WU//UeatI3BmE33q7c09shNA5fASZcH2GBLAUaGZsQyd7DfDD6+6QpdiveuG/aanqyyLHq3CHp0isDGUNIrbXzf72wMqZa1UyIgbGgHAf2iPDIt8tkggkZnZ8F0MkV4FlkO4SAIYLUGaJovEhLw1En/Mj8XW+Lk4dLtxbAoZrE7FguUoXdlbwsyEFUYyYmKbmHDr7Xf4BI/f2+vuzjiI5/9gu/ZuXKLuj/uReJWULp/U/LS9eC8xkyE+T7i3O/GItmYO3tpaMMCisqMGOqcBgrkiZuVGnGkPnvGnyaxAF/HMRoI7XeMLjXQJGygH/mPpfkuVSmPdDLucVryDcJoyttv00PDpVXYvHBI/3DxpVCXdY0hYs9ZD+vt6VJ0d/ISImqbTcauhIahZMQwOOiCgTMNlT+2T8NsfbtVi0fT5WpXApgjKK/tsCi6gyhURDZLKBzdjbl3WvSK9NPOrCRmvmeYGN0ZibxIGQRDoZQx94Hi3eMdWxGc="'
          }
      }
      stage('terraform plan') {
          steps{
              bat 'terraform plan'
          }
      }
      stage('terraform apply') {
          steps{
               bat 'terraform apply -auto-approve'
          }
      }
  }
}
