<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Car Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow">
            <div class="card-header d-flex justify-content-between align-items-center bg-primary text-white">
                <h2 class="mb-0">List of Cars</h2>
                <a href="new" class="btn btn-light btn-sm">Add New Car</a>
            </div>
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th><th>Brand</th><th>Model</th><th>Year</th><th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="car" items="${listCars}">
                            <tr>
                                <td>${car.id}</td>
                                <td>${car.brand}</td>
                                <td>${car.model}</td>
                                <td>${car.year}</td>
                                <td>
                                    <a href="edit?id=${car.id}" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="delete?id=${car.id}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>