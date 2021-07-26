<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <body>
        <form:form action="processForm" modelAttribute="student">
            First Name : <form:input path="firstName" /><br/><br/>
            Last Name : <form:input path="lastName" /><br/><br/>
            Country :   <form:select path="country">
                            <form:options items="${student.countryOptions}" />
                        </form:select> <br/>
            Favorite Language :
                        C# <form:radiobutton path="favoriteLanguage" value="C#" />
                        Java <form:radiobutton path="favoriteLanguage" value="Java" />
                        Python <form:radiobutton path="favoriteLanguage" value="Python" />
                        <br/>
            OS :
                Windows <form:checkbox path="operatingSystem" value="Windows" />
                MacOS <form:checkbox path="operatingSystem" value="MacOS" />
                Linux <form:checkbox path="operatingSystem" value="Linux" />
            <form:button> Submit </form:button>
        </form:form>
    </body>
</html>