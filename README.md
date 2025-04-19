# 🚀 [Jenkins + Terraform + Ansible AWS Infra Deployment] 🚀
![AWS](https://img.shields.io/badge/AWS-Deployed-orange?logo=amazon-aws&logoColor=white&style=for-the-badge)
## ☁️ • vq8-tf-project • ☁️

#### This project automates infrastructure deployment using Jenkins, Terraform, and Ansible. The entire process is fully automated from infrastructure creation to configuration, requiring no manual steps. All infrastructure is deployed on AWS. Jenkins acts as the central orchestrator, running a CI/CD pipeline that:

- 🏗️ Provision an EC2 instance on AWS with Terraform

- 🐳 Installs Docker via user data

- 🛠️ Uses Ansible to configure Nginx

- 🌐 Publishes a web page that displays both the user's IP and the instance's IP

- 🧾 Sends Nginx logs to AWS CloudWatch

![visual diagram](https://github.com/user-attachments/assets/3e55f321-442c-433f-8892-15a977b11553)

⚙️ Ansible must be installed on the Jenkins host, as it is used to configure the EC2 instance during the pipeline execution.
