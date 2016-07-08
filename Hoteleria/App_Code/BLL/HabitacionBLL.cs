using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de HabitacionBLL
/// </summary>
public class HabitacionBLL
{
    public HabitacionBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static List<tblHabitacion> SelectAll()
    {
        List<tblHabitacion> listaHabitacion = new List<tblHabitacion>();
        tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter habitacionAdapter = new tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter();
        tblHabitacionDS.Tbl_HabitacionDataTable tablaHabitacion = habitacionAdapter.SelectAll();
        foreach (tblHabitacionDS.Tbl_HabitacionRow row in tablaHabitacion)
        {
            listaHabitacion.Add(rowToDto(row));
        }
        return listaHabitacion;
    }

    private static tblHabitacion rowToDto(tblHabitacionDS.Tbl_HabitacionRow row)
    {
        tblHabitacion objHabitacion = new tblHabitacion();
        objHabitacion.HabitacionID = row.lHabitacion_iD;
        objHabitacion.NumeroHabitacion = row.lNumeroHabitacion;
        objHabitacion.Estado = row.bEstado;
        objHabitacion.Costo = row.lCosto;
        objHabitacion.Descripcion = row.sDescripcion;
        objHabitacion.TipoHabitacionFK = row.lTipoHabitacion_iD_FK;
        return objHabitacion;
    }

    public static tblHabitacion SelectById(int Habitacion_ID)
    {
        tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter habitacionAdapter = new tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter();
        tblHabitacionDS.Tbl_HabitacionDataTable tablaHabitacion = habitacionAdapter.SelectById(Habitacion_ID);
        if (tablaHabitacion.Rows.Count == 0)
        {
            return null;
        }
        return rowToDto(tablaHabitacion[0]);

    }

    public static void Insert(int NumeroHabitacion, bool Estado, int Costo, string Descripcion, int TipoHabitacionFK)
    {
        tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter habitacionAdapter = new tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter();
        habitacionAdapter.Insert(NumeroHabitacion, Estado, Costo, Descripcion, TipoHabitacionFK);
    }

    public static void Update(int NumeroHabitacion, bool Estado, int Costo, string Descripcion, int TipoHabitacionFK, int HabitacionID)
    {
        tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter habitacionAdapter = new tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter();
        habitacionAdapter.Update(NumeroHabitacion, Estado, Costo, Descripcion, TipoHabitacionFK, HabitacionID);
    }

    public static void Delete(int HabitacionID)
    {
        tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter habitacionAdapter = new tblHabitacionDSTableAdapters.Tbl_HabitacionTableAdapter();
        habitacionAdapter.Delete(HabitacionID);
    }
}