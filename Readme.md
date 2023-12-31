#### Get source
    git clone https://github.com/nguyenhuudamm/Castone.git

#### Install kubectl
    -- curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
    -- which kubectl
    -- sudo mv kubectl /usr/local/bin/
    -- chmod +x /usr/local/bin/kubectl
    -- [CHECK]
        -- kubectl version --client
        -- kubectl version

#### Install eksctl
    -- curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
    -- sudo mv /tmp/eksctl /usr/local/bin
    -- [CHECK]
        -- eksctl version

#### Install hadolint
    -- sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
    -- sudo chmod +x /bin/hadolint
    -- [CHECK]
        -- hadolint Dockerfile

#### Install Make
    -- sudo apt install make
    -- sudo apt install make-guile

#### Install circle
    -- curl -fLSs https://circle.ci/cli | bash
    -- sudo !!
    -- cd /tmp
    -- wget https://github.com/CircleCI-Public/circleci-cli/releases/download/v0.1.28995/circleci-cli_0.1.28995_linux_amd64.tar.gz
    -- tar zxvf circleci-cli_0.1.28995_linux_amd64.tar.gz
    -- cd circleci-cli_0.1.28995_linux_amd64
    -- mv circleci ~/KubenetesProject
    -- [CHECK]
        -- ./circleci
        -- make validate-circleci

#### Create cluster
    -- Create
        -- eksctl create cluster --name kubernetesproject --region=us-east-1

    -- Cleanup
        -- eksctl delete cluster --name=kubernetesproject --region=us-east-1

    -- Get namespace
        -- kubectl get namespaces

    -- Get pods
        -- kubectl get pods
        -- [error] "No resources found"
            -- kubectl config set-context --current --namespace=<my-kube-system>
            -- kubectl get pods

#### Step by step - Project result

#### Link github
    https://github.com/nguyenhuudamm/Castone

![Local Image](images/github.PNG)

#### Check circle
### Circle failed
![Local Image](images/makeline_docker_fail.PNG)
![Local Image](images/makeline_app_fail.PNG)
### Circle passed
    https://app.circleci.com/pipelines/github/nguyenhuudamm/Castone

![Local Image](images/circle_install.PNG)
![Local Image](images/circle_pass.PNG)

#### Run docker
![Local Image](images/run_docker_01.PNG)
![Local Image](images/run_docker_02.PNG)

#### Upload docker
![Local Image](images/upload_docker.PNG)

#### Docker Images on ECR
![Local Image](images/image_ecr.PNG)

#### Deployment - Cluster
![Local Image](images/create_cluster.PNG)
![Local Image](images/create_cluster_02.PNG)
![Local Image](images/create_cluster_03.PNG)
![Local Image](images/create_cluster_04.PNG)
![Local Image](images/create_cluster_05.PNG)

#### Create pod - Port Forward
![Local Image](images/run_kubernetes_01.PNG)

#### Create service
![Local Image](images/deployment_service.PNG)

#### All Info
### Get Nodes
![Local Image](images/get_nodes.PNG)
### Get Pods
![Local Image](images/get_pods.PNG)
### Get Services
![Local Image](images/get_services.PNG)
### Link result
    http://a95c58641cc344a81b099222e68d7eaf-1127860096.us-east-1.elb.amazonaws.com/

![Local Image](images/get_result.PNG)







