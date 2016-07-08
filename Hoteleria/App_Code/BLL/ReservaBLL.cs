using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ReservaBLL
/// </summary>
public class ReservaBLL
{
    public ReservaBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static List<tblReserva> SelectAll()
    {
        List<tblReserva> listaReserva = new List<tblReserva>();
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        tblReservaDS.Tbl_ReservaDataTable tablaReserva = ReservaAdapter.SelectAll();
        foreach (tblReservaDS.Tbl_ReservaRow row in tablaReserva)
        {
            listaReserva.Add(rowToDto(row));
        }
        return listaReserva;
    }

    private static tblReserva rowToDto(tblReservaDS.Tbl_ReservaRow row)
    {
        tblReserva objReserva = new tblReserva();
        objReserva.ReservaID = row.lReserva_iD;
        objReserva.FechaEntrada = row.dFechaEntrada;
        objReserva.FechaSalida = row.dFechaSalida;
        objReserva.CostoTotal = row.lCostoTotal;
        objReserva.Observacion = row.sObservacion;
        objReserva.HabitacionFK = row.lHabitacion_iD_FK;
        objReserva.ClienteFK = row.lCliente_iD_FK;
        objReserva.EstadoFK = row.lEstado_iD_FK;

        return objReserva;
    }

    public static tblReserva SelectById(int Reserva_ID)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        tblReservaDS.Tbl_ReservaDataTable tablaReserva = ReservaAdapter.SelectById(Reserva_ID);
        if (tablaReserva.Rows.Count == 0)
        {
            return null;
        }
        return rowToDto(tablaReserva[0]);

    }

    public static void Insert(DateTime FechaEntrada, DateTime FechaSalida, int CostoTotal, string Observacion, int HabitacionFK, int ClienteFK, int adulto, int niños)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Insert(FechaEntrada, FechaSalida, CostoTotal, Observacion, HabitacionFK, ClienteFK, adulto, niños);
    }

    public static void Update(DateTime FechaEntrada, DateTime FechaSalida, int CostoTotal, string Observacion, int HabitacionFK, int ClienteFK, int adulto, int niños, int ReservaID)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Update(FechaEntrada, FechaSalida, CostoTotal, Observacion, HabitacionFK, ClienteFK, adulto, niños, ReservaID);
    }

    public static void Delete(int Reserva_ID)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Delete(Reserva_ID);
    }
}