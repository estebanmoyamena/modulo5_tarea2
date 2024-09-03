<%@page import="model.Habitacion"%>
<%@page import="business.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Recepcion valores dede request
int idHabitacion = Integer.parseInt(request.getParameter("idhabitacion"));
int medioPago = Integer.parseInt(request.getParameter("medio_pago"));
int cantidadDias = Integer.parseInt(request.getParameter("dias"));
int fechaEntrada = Integer.parseInt(request.getParameter("fecha_entrada"));
String nombrePagador = request.getParameter("nombre");
String apellidoPagador = request.getParameter("apellido");
String emailPagador = request.getParameter("email");

//Librerias requeridas
HabitacionBusiness habitacionb = new HabitacionBusiness();

// incializa Objeto Evento
Habitacion habitacion = new Habitacion();
habitacion.setId(idHabitacion);

// Busca y recoge informacion de evento seleccionado
habitacion = habitacionb.getHabitacionbyID(habitacion);

// Obtiene el valor a pagar por la cantidad de tickets seleccionados
int valorPagar = habitacionb.calculaValorPagar(habitacion.getPrecio(), cantidadDias);

//Arreglo con medios de pago
String[] mediosPago = habitacionb.getMediosPago();

//Arreglo con fechas de entrada
String[] fechasEntrada = habitacionb.getFechasEntrada("Enero", "2023", 5, 20);
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<body>

	<%@include file="assets/html/header.jsp"%>

	<form method="post" action="procesa.jsp">

		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">

				<div class="row justify-content-center">
					<h1>
						Detalle Solictud Habitación: <strong> <%=habitacion.getNombre()%>
						</strong>
					</h1>
					<hr/ >
				</div>
			</div>

			<div class="container px-4 px-lg-5 mt-5">

				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre</td>
							<td><%=nombrePagador%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellidoPagador%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Email</td>
							<td><%=emailPagador%></td>
						</tr>

						<tr>
							<th scope="row">4</th>
							<td>Medio Pago</td>
							<td><%=mediosPago[medioPago]%></td>
						</tr>

						<tr>
							<th scope="row">5</th>
							<td>Dias</td>
							<td><%=cantidadDias%> días</td>
						</tr>

						<tr>
							<th scope="row">6</th>
							<td>Fecha Entrada</td>
							<td><%=fechasEntrada[fechaEntrada]%></td>
						</tr>

						<tr>
							<th scope="row">6</th>
							<td>Valor Pagar</td>
							<td><strong>CL$ <%=valorPagar%></strong></td>
						</tr>

					</tbody>
				</table>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>