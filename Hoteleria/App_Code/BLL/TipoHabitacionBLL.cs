using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de TipoHabitacionBLL
/// </summary>
public class TipoHabitacionBLL
{
    public TipoHabitacionBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static List<tblTipoHabitacion> SelectAll()
    {
        List<tblTipoHabitacion> listaTipoHabitacion = new List<tblTipoHabitacion>();
        tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter tipoHabitacionAdapter = new tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter();
        tblTipoHabitacionDS.Tbl_TipoHabitacionDataTable tablaTipoHabitacion = tipoHabitacionAdapter.SelectAll();
        foreach (tblTipoHabitacionDS.Tbl_TipoHabitacionRow row in tablaTipoHabitacion)
        {
            listaTipoHabitacion.Add(rowToDto(row));
        }
        return listaTipoHabitacion;
    }

    private static tblTipoHabitacion rowToDto(tblTipoHabitacionDS.Tbl_TipoHabitacionRow row)
    {
        tblTipoHabitacion objTipoHabitacion = new tblTipoHabitacion();
        objTipoHabitacion.TipoHabitacionID = row.lTipoHabitacion_iD;
        objTipoHabitacion.Nombre = row.sNombre;
        objTipoHabitacion.Descripcion = row.sDescripcion;
        return objTipoHabitacion;
    }

    public static tblTipoHabitacion SelectById(int TipoHabitacion_ID)
    {
        tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter tipoHabitacionAdapter = new tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter();
        tblTipoHabitacionDS.Tbl_TipoHabitacionDataTable tablaTipoHabitacion = tipoHabitacionAdapter.SelectById(TipoHabitacion_ID);
        if (tablaTipoHabitacion.Rows.Count == 0)
        {
            return null;
        }
        return rowToDto(tablaTipoHabitacion[0]);

    }

    public static void Insert(string Nombre, string Descripcion)
    {
        tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter tipoHabitacionAdapter = new tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter();
        tipoHabitacionAdapter.Insert(Nombre, Descripcion);
    }

    public static void Update(string Nombre, string Descripcion, int TipoHabitacionID)
    {
        tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter tipoHabitacionAdapter = new tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter();
        tipoHabitacionAdapter.Update(Nombre, Descripcion, TipoHabitacionID);
    }

    public static void Delete(int TipoHabitacionID)
    {
        tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter tipoHabitacionAdapter = new tblTipoHabitacionDSTableAdapters.Tbl_TipoHabitacionTableAdapter();
        tipoHabitacionAdapter.Delete(TipoHabitacionID);
    }
}