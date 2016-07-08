using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EstadoBLL
/// </summary>
public class EstadoBLL
{
	public EstadoBLL()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public static List<tblEstado> SelectAll()
    {
        List<tblEstado> listaEstado = new List<tblEstado>();
        tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter estadoAdapter = new tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter();
        tblEstadoDS.Tbl_EstadoDataTable tablaEstado = estadoAdapter.SelectAll();
        foreach (tblEstadoDS.Tbl_EstadoRow row in tablaEstado)
        {
            listaEstado.Add(rowToDto(row));
        }
        return listaEstado;
    }

    private static tblEstado rowToDto(tblEstadoDS.Tbl_EstadoRow row)
    {
        tblEstado objEstado = new tblEstado();
        objEstado.EstadoID = row.lEstado_iD;
        objEstado.Nombre = row.sNombre;
        return objEstado;
    }

    public static tblEstado SelectById(int Estado_ID)
    {
        tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter estadoAdapter = new tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter();
        tblEstadoDS.Tbl_EstadoDataTable tablaEstado = estadoAdapter.SelectById(Estado_ID);
        if (tablaEstado.Rows.Count == 0)
        {
            return null;
        }
        return rowToDto(tablaEstado[0]);

    }

    public static void Insert(string Nombre)
    {
        tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter estadoAdapter = new tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter();
        estadoAdapter.Insert( Nombre);
    }

    public static void Update(string Nombre, int EstadoID)
    {
        tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter estadoAdapter = new tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter();
        estadoAdapter.Update(Nombre, EstadoID);
    }

    public static void Delete(int EstadoID)
    {
        tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter estadoAdapter = new tblEstadoDSTableAdapters.Tbl_EstadoTableAdapter();
        estadoAdapter.Delete(EstadoID);
    }
}