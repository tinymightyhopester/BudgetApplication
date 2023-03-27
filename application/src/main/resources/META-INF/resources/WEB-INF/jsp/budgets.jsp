<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="Naruto Hidden Leaf village greeting page"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
    crossorigin="anonymous" />
    
    <title>Budgets Page</title>
  
  </head>
  <body>
    <div class="container">
    	<h1 class="my-5 text-center">Your Budgets</h1>
    	<!-- Todo Table -->
 		<table class="table table-striped">
		  <thead>
		    <tr class="border-bottom border-1 border-dark">
		      <th scope="col">Id</th>
		      <th scope="col">Amount</th>
		      <th scope="col">Name</th>
		      <th scope="col">Start Date</th>
		      <th scope="col">End Date</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  		<!-- Dynamic Collection -->
		   		<c:forEach items="${budgets}" var="budget">
		   			<tr>
				      <td class="py-3">${budget.id}</td>
				      <td class="py-3">${budget.amount}</td>
				      <td class="py-3">${budget.name}</td>
				      <td class="py-3">${budget.startDate}</td>
				      <td class="py-3">${budget.endDate}</td>
				    </tr>
		   		</c:forEach>
		  </tbody>
		</table>
		
		<!-- Add todo -->
		<a href="add-todo">
			<button class="btn btn-success">Add Todo</button>
		</a>
    </div>
  </body>
</html>