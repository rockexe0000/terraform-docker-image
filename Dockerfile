

FROM public.ecr.aws/ubuntu/ubuntu:22.04_stable



RUN apt-get update \
  && apt-get install -y curl unzip wget sudo gnupg software-properties-common




RUN wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
RUN apt-get update && apt-get install -y terraform






RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip \
  && unzip awscliv2.zip \
  && ./aws/install \
  && rm -rf aws awscliv2.zip





# Create app directory
RUN mkdir -p /var/app
WORKDIR /var/app






COPY . .



RUN chmod a+x -R  /var/app


CMD ["bash"]





