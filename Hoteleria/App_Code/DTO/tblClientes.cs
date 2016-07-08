using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de tblClientes
/// </summary>
public class tblClientes
{
	public tblClientes()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public int ClienteID { get; set; }

    public string Nombre { get; set; }

    public string Apellido { get; set; }

    public string Direccion { get; set; }

    public string Telefono { get; set; }

    public string Documento { get; set; }

    public string Pais { get; set; }

}