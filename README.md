# onpremise_project_docker_code

## How to use

1. Install git on Ubuntu-server VM
   ```shell
   sudo apt-get update -y && \
   sudo apt-get install git
   ```
   
2. Clone this repository
   ```shell
   git clone https://github.com/dpcalfola/onpremise_project_docker_code.git
   ```
   
3. Install dependency package (included docker engine)

   - Critical Issue: Docker engine installation would be failed now (from 2023-07-26 ~) 
   - So, you should install docker engine manually
   
   ```shell
   sudo sh install_dependency.sh
   ```
   
4. Run docker containers
   ```shell
   sudo sh run_docker.sh
   ```
    
5. Remove all docker containers and images
   ```shell
   sudo sh rm_docker_all.sh
   ```