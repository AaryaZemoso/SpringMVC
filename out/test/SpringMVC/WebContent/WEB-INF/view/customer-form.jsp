<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <style>
            .error{
                color: red;
            }
        </style>
    </head>
    <body>
        <h1> Fill the Form </h1>
        <form:form action="processForm" modelAttribute="customer">
            First Name : <form:input path="firstName" /><br/>
            Last Name(*) : <form:input path="lastName" /> <form:errors path="lastName" cssClass="error" /><br/>
            Free Passes : <form:input path="freePasses" /> <form:errors path="freePasses" cssClass="error" /><br/>
            Postal Code : <form:input path="postalCode" /> <form:errors path="postalCode" cssClass="error" /><br/>
            Course Code : <form:input path="courseCode" /> <form:errors path="courseCode" cssClass="error" /><br/>
            <form:button> Submit </form:button>
        </form:form>
    </body>
</html>