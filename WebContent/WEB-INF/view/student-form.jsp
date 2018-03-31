<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Student Registration Form</title>
    </head>
    
    <body>
	    <form:form action="processForm" modelAttribute="student">
	          First Name: <form:input path="firstName" />
	          <br><br>
	          Last Name: <form:input path="lastName" />
	          <br><br>
	          Country: 
	          <form:select path="country">
	           <form:options items="${theCountryOptions}" />
	          </form:select>
	          <br><br>
              Favorite Programming Language:
              Java <form:radiobutton path="favoriteLanguage" value="Java" />
              C++ <form:radiobutton path="favoriteLanguage" value="C++" />
              Python <form:radiobutton path="favoriteLanguage" value="Python" />
              Golang <form:radiobutton path="favoriteLanguage" value="Golang" />
	          <br><br>
	          Operating System:
	          MacOS <form:checkbox path="operatingSystems" value="MacOS"/>
	          Linux <form:checkbox path="operatingSystems" value="Linux"/>
	          Windows <form:checkbox path="operatingSystems" value="Windows"/>
	          DOS <form:checkbox path="operatingSystems" value="DOS"/>
	          <br><br>
	          <input type="submit" value="Submit">
	    </form:form>    
    </body>
</html>