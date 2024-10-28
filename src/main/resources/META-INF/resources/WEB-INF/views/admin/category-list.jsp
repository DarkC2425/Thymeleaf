<!doctype html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
	layout:decorate="~{admin/Layout-admin.html}">
<section class="row" layout:fragment="content">
	<div class="col mt-4">
		<div class="cord">
			<div class="card-header">List Category</div>
			<div class="card-body">
				<div th:if="@{message !=null} " class="alert
					alert-primary" role="alert">
					<i>[[${message}]]</i>
				</div>

				<table class="table table-striped table-responsive">
					<thead class="thead-inverse">
						<tr>
							<th>Category ID</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<tr th:each=" category: ${categories}">
							<td scope="row">[[${category.categoryid} ]]</td>
							<td th:text="${category.categoryname}"></td>
							<td><a
								th:href="@('/admin/categories/view/'+${category.categoryId}}"
								class="btn btn-outline-info"><i class="fa fa-info"></i></a> <a
								th:href="@['/admin/categorics/edit/'+ $[category,categoryId}]"
								class="btn btn-outline-warning"><i class="fa fa-edit"></i></a> <a
								th:href="@{'/admin/categories/delete/'+ ${category.categoryId}}"
								class="btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>