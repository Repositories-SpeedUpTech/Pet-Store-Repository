### AUTHOR:

Ismael Alexander Carvajal González

***

## TABLE OF CONTENTS
1. [PROJECT DESCRIPTION :herb:](#descripción-del-proyecto)
2. [TO CONSIDER :calling:](#a-tener-en-cuenta)
3. [PREREQUISITES :violin:](#prerrequisitos)
4. [EXECUTION :metro:](#ejecución)
5. [AUTHOR :man:](#autor)

***
# PROJECT DESCRIPTION: 
_Karate Framework is the only open source tool that combines API test-automation, mocks and performance testing in a single framework. The BDD syntax popularized by Cucumber is language-neutral, and easy even for non-programmers. In addition to powerful JSON & XML assertions, you can run tests in parallel to improve speed – critical element for HTTP API testing._

In this project we will take advantage of this Framework for test automation and will be used to test the different Endpoints of the following API: "https://reqres.in/api/". :alien:

The **Endpoints** to be tested are as follows:

- :boom: Get: "https://reqres.in/api//pet/2", is used to bring the information of the pet that has been registered.
 
- :boom: Post: "https://reqres.in/api//pet", is used for the pet's information to be sent to the database.

- :boom: Delete: "https://reqres.in/api//pet/{id}", is used to have the user's information removed from the database.

- :boom: Put: "https://reqres.in/api//pet/{id}", is used to update the user's information in the database.

***
# TO BE TAKEN INTO ACCOUNT: 

In order to apply best practices, it was decided to use:

- :capital_abcd: Objet Model Pattern  

- :recycle: Object-oriented programming

***
# PREREQUISITES: 

In order to execute the project, the following specifications are required:

|Herramienta| Versión| 
|:--------------|:-------------:|
|:heavy_check_mark: Java           |1.8            |
|:heavy_check_mark: Maven           |3.6.0            |
|:heavy_check_mark: Karate           |0.9.6            |


***
# EXECUTION:

It must be taken into account that in order to execute the tests that are in the features individually, the corresponding Java classes must be run. In our case we have the following relation for their execution:
#
|Clase Java (Runner)| Features| 
|:--------------|:-------------:|
|:soon: GetPet.java |getPet.feature |
|:soon: CreatePet.java |createPet.feature |
|:soon: DeletePet.java |deletePet.feature |
|:soon: UpdatePet.java |updatePet.feature |

#
On the other hand, if we want to execute all the features in parallel, we execute the following Java class:
#
|Clase Java (Runner)| Features| 
|:--------------|:-------------:|
|:bangbang: AllFeaturesTest.java| All features |
#
Finally, to reproduce the reports from the browser, the following steps must be followed:

:one: We go to the Target folder and open it

:two:  We unfold the folder "Cucumber-html-reports"

:three: Right click on the file "overview-features.html", select the option "Open in", then "Browser" and select the browser of your choice.

***

