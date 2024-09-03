<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="business.HabitacionBusiness"%>
<%@page import="model.Habitacion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// Librerias Requeridas
HabitacionBusiness habitacionb = new HabitacionBusiness();

// listado de Evento
List<Habitacion> listaHabitaciones = habitacionb.getHabitaciones();

// Arreglo con medios de pago
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
						Habitaciones Disponibles (<%=listaHabitaciones.size()%>)
					</h1>
					<hr/ >
				</div>

				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

					<%
					for (int x = 0; x < listaHabitaciones.size(); x++) {
					%>

					<div class="col mb-5">
						<div class="card h-100">
							<img class="card-img-top"
								src="<%=listaHabitaciones.get(x).getImagen()%>"
								alt="<%=listaHabitaciones.get(x).getNombre()%>" />
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder">
										<%=listaHabitaciones.get(x).getNombre()%>
									</h5>
									<p>
										<%=listaHabitaciones.get(x).getDescripcion()%>
									</p>
									CL$
									<%=listaHabitaciones.get(x).getPrecio()%>
								</div>
							</div>
							<input type="radio" name="idhabitacion"
								value="<%=listaHabitaciones.get(x).getId()%>" checked>  
						</div>
					</div>
					<%
					}
					%>

				</div>
			</div>
		</section>

		<!--  Formulario -->
		<section>

			<div class="container px-4 px-lg-5 mt-5">

				<h1>Información de Reserva Habitación</h1>
				<hr />

				<div class="row g-3">
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nombre" name="nombre"
							value="Charles Mariano">
					</div>
					<div class="col-md-6">
						<label for="inputPassword4" class="form-label">Apellido</label> <input
							type="text" class="form-control" id="apellido" name="apellido"
							value="Aranguiz Sandoval">
					</div>

					<div class="col-md-6">
						<label for="inputCity" class="form-label">Email</label> <input
							type="text" class="form-control" id="email" name="email"
							value="charles.aranguiz@anfp.cl">
					</div>

					<div class="col-md-2">
						<label for="inputState" class="form-label">Medio de Pago</label> <select
							id="medio_pago" name="medio_pago" class="form-select">
							<%
							for (int x = 0; x < mediosPago.length; x++) {
							%>
							<option value="<%=x%>"><%=mediosPago[x]%>
							</option>
							<%
							}
							%>

						</select>
					</div>

					<div class="col-md-2">
						<label for="inputState" class="form-label">Días</label> <select
							id="dias" name="dias" class="form-select">
							<%
							for (int x = 0; x < 30; x++) {
							%>
							<option value="<%=x + 1%>"><%=x + 1%> día(s)
							</option>
							<%
							}
							%>

						</select>
					</div>

					<div class="col-md-2">
						<label for="inputState" class="form-label">Fecha Entrada</label> <select
							id="fecha_entrada" name="fecha_entrada" class="form-select">
							<%
							for (int x = 0; x < fechasEntrada.length; x++) {
							%>
							<option value="<%=x%>"><%=fechasEntrada[x]%></option>
							<%
							}
							%>
						</select>
					</div>

					<div class="col-12">
						<hr />
						<button type="submit" class="btn btn-primary">Enviar
							Solicitud de Compra</button>
					</div>
				</div>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
