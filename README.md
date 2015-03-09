# The Mini Project

I created infrastructure code to deploy a web server. AWS CloudFormation and CloudFormationInit are being used to provision the server. I learned how to install and utilize Chef via CloudFormation as well, but decided to stick with CloudFormationInit since I had never used it before. All files needed in the build are pulled directly from this repository. 

To deploy a server, either load mini_project.template into the AWS CloudFormation Console or run the following command via the CLI (replacing \<stack_name\> and \<key_name\>):

```
aws cloudformation create-stack --stack-name <stack_name> --template-body https://github.com/trikosuave/mini_project/raw/master/mini_project.template --parameters ParameterKey=KeyName,ParameterValue=<key_name>
```
NOTE: The template can be used to create a t2.micro instance in either US-East-1, US-West-1, or US-West-2.

The automation puts a pre-built index.html in place and then installs and starts Apache. Aruba is installed to run the infrastructure tests. A link to the output of the tests is provided on the index page. The created site is output from CloudFormation and will be displayed in the Output tab of the Console, or by running the following command:

```
aws cloudformation describe-stacks --stack-name <stack_name>
```
