<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <body>
        Welcome, ${student.firstName} ${student.lastName} <br/>
        You are from ${student.country} <br/>
        Your favorite language is ${student.favoriteLanguage} <br/>
        OS familiar with
        <ul>
            <c:forEach var="os" items="${student.operatingSystem}">
                <li> ${os} </li>
            </c:forEach>
        </ul>
    </body>
</html>