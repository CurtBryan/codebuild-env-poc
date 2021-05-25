#Specify a base image
#FROM 363145861140.dkr.ecr.us-east-1.amazonaws.com/aws/codebuild/amazonlinux2-x86_64-standard:3.0
FROM node:alpine
# FROM 363145861140.dkr.ecr.us-east-1.amazonaws.com/aws/codebuild/amazonlinux2-x86_64-standard:3.0 as root
#Specify a working directory
#Specify a base image
# FROM 050853773894.dkr.ecr.us-east-1.amazonaws.com/uopx-node-14-base:release

#Specify a working directory
WORKDIR /usr/app

#Copy the dependencies file
COPY ./package.json ./

#Install dependencies
RUN npm install 

#Copy remaining files
COPY ./ ./

EXPOSE 8080 8090

#Default command
CMD npm run app