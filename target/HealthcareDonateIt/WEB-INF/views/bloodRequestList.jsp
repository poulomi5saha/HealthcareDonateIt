<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<h2>Blood Request List</h2>
      <table id="bloodRequestTableId">
		<thead>
			<tr>
				<th><strong>Name</strong></th>
				<th><strong>Blood Group</strong></th>
				<th><strong>Area</strong></th>
				<th><strong>Contact No</strong></th>
				<th><strong>Units</strong></th>
				<th><strong>Date</strong></th>
				<th><strong>View</strong></th>
				<th><strong>Edit</strong></th>
				<th><strong>Delete</strong></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="listValue" items="${healthcareRequestDTOList}">
				<tr>
					<td data-th="Name">${listValue.patientName }</td>
					<td data-th="Blood Group">${listValue.bloodGroup }</td>
					<td data-th="Area">${listValue.city }</td>
					<td data-th="Contact No">${listValue.contactNo }</td>
					<td data-th="Units">${listValue.units }</td>
					<td data-th="Date">${listValue.donationDate }</td>
					<td data-th="View"><img src='<c:url value="/resources/images/view-icon.png"/>' width="35%"/></td>
					<td data-th="Edit"><img src='<c:url value="/resources/images/edit-icon.png"/>' width="35%"/></td>
					<td data-th="Delete"><img src='<c:url value="/resources/images/delete-icon.png"/>' width="25%"/></td>
				</tr>
			</c:forEach>
			
			<%-- <tr>
				<td data-th="Name">Poulomi Saha Poulomi Saha</td>
				<td data-th="Blood Group">O+</td>
				<td data-th="Area">Kolkata</td>
				<td data-th="Contact No">+919874795701</td>
				<td data-th="Units">10</td>
				<td data-th="Date">27/04/2016</td>
				<td data-th="View"><img src='<c:url value="/resources/images/view-icon.png"/>' width="35%"/></td>
				<td data-th="Edit"><img src='<c:url value="/resources/images/edit-icon.png"/>' width="35%"/></td>
				<td data-th="Delete"><img src='<c:url value="/resources/images/delete-icon.png"/>' width="25%"/></td>
			</tr>
			<tr>
				<td data-th="Name">Poulomi Saha Poulomi Saha Poulomi Saha</td>
				<td data-th="Blood Group">O+</td>
				<td data-th="Area">Kolkata</td>
				<td data-th="Contact No">+919874795701</td>
				<td data-th="Units">10</td>
				<td data-th="Date">27/04/2016</td>
				<td data-th="View"><img src='<c:url value="/resources/images/view-icon.png"/>' width="35%"/></td>
				<td data-th="Edit"><img src='<c:url value="/resources/images/edit-icon.png"/>' width="35%"/></td>
				<td data-th="Delete"><img src='<c:url value="/resources/images/delete-icon.png"/>' width="25%"/></td>
			</tr> --%>
		</tbody>
		</table>
		<div class="addRequestButtonDiv">
			<a href="#addRequestForm" class="addRequestButton popup-with-form">Add Request</a>		
		</div>