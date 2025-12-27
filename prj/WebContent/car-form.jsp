<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Car Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-header bg-dark text-white">
                        <h3><c:out value="${car != null ? 'Edit Car' : 'Add New Car'}" /></h3>
                    </div>
                    <div class="card-body">
                        <form action="<c:out value="${car != null ? 'update' : 'insert'}" />" method="post">
                            <c:if test="${car != null}">
                                <input type="hidden" name="id" value="${car.id}" />
                            </c:if>
                            <div class="mb-3">
                                <label class="form-label">Brand</label>
                                <input type="text" name="brand" class="form-control" value="${car.brand}" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Model</label>
                                <input type="text" name="model" class="form-control" value="${car.model}" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Year</label>
                                <input type="number" name="year" class="form-control" value="${car.year}" required>
                            </div>
                            <button type="submit" class="btn btn-success">Save Car</button>
                            <a href="list" class="btn btn-secondary">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>