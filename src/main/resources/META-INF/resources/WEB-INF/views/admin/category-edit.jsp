k!doctype html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
	layout:decorate="~{ndmin/lnvont-admin.html }">
<section class="row" layout:fragment="content">
	<div class="col-6 offset-3 mt-4">
		<form th:action="@[/admin/categories/save0rUpdate}" method="POST"
			th:object="${category}">
			<div class="card">
				<div class="card-header">
					<h2
						th:text="${category.isEdit ? 'Edit Category' : 'Add New Category'}">Add
						New Category</h2>
				</div>
				<div class="card-body">
					<div class="mb-3" th:if="${category.isEdit}">
						<label for="categoryId" class="form-label">Category ID : </label>
						<input type="hidden" th:field="*{isEdit}"> <input
							type="text" readonly="readonly" class="form-control"
							th:field="*{categoryId}" id="categoryId" name="categoryid"
							aria-describedby="categoryIdid" placeholder="Category Id">
						<div th:if="${#fields.hasErrors('categoryid')}" id="categoryIdid"
							class="form-text text-muted">
							<span class="text-danger">Category ID is required !</span>
						</div>
					</div>
					<div class="mb-3">
						<label for="name" class="form-Label">Category Name: </label> <input
							type="text" class="form-control" th:field="*{name}" id="name"
							name="name" aria-describedby="nameid" placeholder="Category Name">
						<div th:if="${#fields.hasErrors('name')}" id="nameIdid"
							class="form-text text-muted">
							<span class="text-danger">Category </span>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>