using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de tblReserva
/// </summary>
public class tblReserva
{
	public tblReserva()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public int ReservaID { get; set; }

    public DateTime FechaEntrada { get; set; }

    public DateTime FechaSalida { get; set; }

    public int CostoTotal { get; set; }

    public string Observacion { get; set; }

    public int HabitacionFK { get; set; }

    public int ClienteFK { get; set; }

    public int EstadoFK { get; set; }

}