# IBMiProgramCallAPI
Expose IBM i program as REST API with Mulesoft AS400 connector

In this example we will build an API that wraps IBM i program https://github.com/infoviewsystems/IBMiProgramCallAPI/blob/master/src/IBMi/POSTORDERS.RPGLE. 

We start with RAML for the request and response, then generate API implementation with Anypoint Studio, then add two simple Mule processors (transformation and AS400 Program Call) and that's it. Nothing to install / build / run on IBM i side. 

Once the project is up and running, post the sample request to the API with Postman or similar tool.
