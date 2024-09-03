package business;

import java.util.ArrayList;
import java.util.List;
import model.Habitacion;

public class HabitacionBusiness {

	/**
	 * --------------------------------------------------------------------------------------------
	 * Método setea y obtiene las habitaciones existentes en una lista de objetos de
	 * tipo habitacion
	 * 
	 */
	public List<Habitacion> getHabitaciones() {

		// Inicializacion de lista de eventos
		ArrayList<Habitacion> habitaciones = new ArrayList<Habitacion>();

		// Info Evento 1
		Habitacion habitacion1 = new Habitacion();
		habitacion1.setId(1);
		habitacion1.setNombre("Habitación 1, Simple");
		habitacion1.setDescripcion("Habitación Clásica con cama extragrande, vistas al océano y balcón.");
		habitacion1.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion1.setPrecio(10000);

		// Info Evento 2
		Habitacion habitacion2 = new Habitacion();
		habitacion2.setId(2);
		habitacion2.setNombre("Habitación 2, Doble - Simple");
		habitacion2.setDescripcion("Habitación Clásica con 2 camas grandes o dobles, vistas al océano y balcón ");
		habitacion2.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion2.setPrecio(20000);

		// Info Evento 3
		Habitacion habitacion3 = new Habitacion();
		habitacion3.setId(3);
		habitacion3.setNombre("Habitación 3, Doble - Normal");
		habitacion3.setDescripcion("Habitación Superior en planta alta con vistas al océano y 2 camas dobles ");
		habitacion3.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion3.setPrecio(30000);

		// Info Evento 4
		Habitacion habitacion4 = new Habitacion();
		habitacion4.setId(4);
		habitacion4.setNombre("Habitación 4, Doble - King");
		habitacion4.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano ");
		habitacion4.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion4.setPrecio(40000);

		// Info Evento 5
		Habitacion habitacion5 = new Habitacion();
		habitacion5.setId(5);
		habitacion5.setNombre("Habitación 5, Doble - King");
		habitacion5.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano ");
		habitacion5.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion5.setPrecio(50000);

		// Info Evento 6
		Habitacion habitacion6 = new Habitacion();
		habitacion6.setId(6);
		habitacion6.setNombre("Habitación 6, Doble - King");
		habitacion6.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano ");
		habitacion6.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion6.setPrecio(60000);

		// Info Evento 7
		Habitacion habitacion7 = new Habitacion();
		habitacion7.setId(7);
		habitacion7.setNombre("Habitación 7, Doble - King");
		habitacion7.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano ");
		habitacion7.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion7.setPrecio(70000);

		// Info Evento 8
		Habitacion habitacion8 = new Habitacion();
		habitacion8.setId(8);
		habitacion8.setNombre("Habitación 8, Doble - King");
		habitacion8.setDescripcion("Suite Executive en planta superior con cama extragrande y vistas al océano ");
		habitacion8.setImagen("https://static12.com-hotel.com/template/frontend/official/images/generic-room.png");
		habitacion8.setPrecio(80000);

		// Agrega Eventos a lista
		habitaciones.add(habitacion1);
		habitaciones.add(habitacion2);
		habitaciones.add(habitacion3);
		habitaciones.add(habitacion4);
		habitaciones.add(habitacion5);
		habitaciones.add(habitacion6);
		habitaciones.add(habitacion7);
		habitaciones.add(habitacion8);

		// Retorno de lista de eventos
		return habitaciones;
	}

	/**
	 * --------------------------------------------------------------------------------------------
	 * Método que entrega el objeto habitacion segun el id de busqueda

	 */
	public Habitacion getHabitacionbyID(Habitacion habitacion) {

		List<Habitacion> listaHabitaciones = getHabitaciones();

		for (int x = 0; x < listaHabitaciones.size(); x++) {

			if (listaHabitaciones.get(x).getId() == habitacion.getId()) {
				habitacion = listaHabitaciones.get(x);
			}
		}

		// Retorno de Evento
		return habitacion;
	}

	/**
	 * --------------------------------------------------------------------------------------------
	 * Método retorna el valor a pagar de una habitacion segun el valor y cantidad
	 * de dias seleccionados
	
	 */
	public int calculaValorPagar(int valorDia, int cantidadDias) {
		int valor = valorDia * cantidadDias;
		return valor;
	}

	/**
	 * --------------------------------------------------------------------------------------------
	 * Método retorna el valor a pagar de una habitacion segun el valor y cantidad
	 * de dias seleccionados
	
	 */
	public String[] getMediosPago() {

		// Variables Generales
		String[] mediosPago = new String[4];

		mediosPago[0] = "Contado";
		mediosPago[1] = "Crédito";
		mediosPago[2] = "Débito";
		mediosPago[3] = "Transferencia";

		// Retorno de Medios de pago
		return mediosPago;
	}

	/**
	 * --------------------------------------------------------------------------------------------
	 * Método retorna las fechas de entrada disponibles para tomar hospedaje
	
	 */
	public String[] getFechasEntrada(String mes, String anio, int inicio, int fin) {

		// Inicializacion de variables de metodo
		int totalDias = fin - inicio;
		int cont = 0;

		// Variables Generales
		String[] fechasEntrada = new String[totalDias + 1];

		// Iteracion de dias
		for (int x = 0; x < fechasEntrada.length; x++) {

			fechasEntrada[x] = (inicio + cont) + " de " + mes + " de " + anio;
			cont++;
		}

		// Retorno de Medios de pago
		return fechasEntrada;

	}

}
