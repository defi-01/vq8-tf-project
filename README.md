# 🚀 [Jenkins + Terraform + Ansible Infra Deployment] 🚀
## vq8-project 

#### This project automates infrastructure deployment using Jenkins, Terraform, and Ansible. The entire process is fully automated from infrastructure creation to configuration, requiring no manual steps. Jenkins acts as the central orchestrator, running a CI/CD pipeline that:

- 🏗️ Provisions an EC2 instance with Terraform

- 🐳 Installs Docker via user data

- 🛠️ Uses Ansible to configure Nginx

- 🌐 Publishes a web page that displays both the user's IP and the instance's IP

- 🧾 Sends Nginx logs to AWS CloudWatch

![visual diagram](https://github.com/user-attachments/assets/3e55f321-442c-433f-8892-15a977b11553)

⚙️ Ansible must be installed on the Jenkins host, as it is used to configure the EC2 instance during the pipeline execution.
