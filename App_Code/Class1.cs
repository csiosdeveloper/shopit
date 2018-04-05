using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace nsshop
{
    // ********Interface**********//
    public interface intstu
    {
        Int32 stucod
        {
            get;
            set;
        }
        String stunam
        {
            get;
            set;
        }
        String stucol
        {
            get;
            set;
        }
        String sturolno
        {
            get;
            set;
        }
        DateTime stutrgstrdat
        {
            get;
            set;
        }
        DateTime stutrgenddat
        {
            get;
            set;
        }
        String stupic
        {
            get;
            set;
        }
        String stuusrnam
        {
            get;
            set;
        }
        String stupwd
        {
            get;
            set;
        }
    }
    public class clsstuprp : intstu
    {
        private Int32 pstucod;
        private String pstunam, pstucol, psturolno, pstupic, pstuusrnam, pstupwd;
        private DateTime pstutrgstrdat, pstutrgenddat;
        public int stucod
        {
            get
            {
                return pstucod;
            }
            set
            {
                pstucod = value;
            }
        }

        public string stunam
        {
            get
            {
                return pstunam;
            }
            set
            {
                pstunam = value;
            }
        }

        public string stucol
        {
            get
            {
                return pstucol;
            }
            set
            {
                pstucol = value;
            }
        }

        public string sturolno
        {
            get
            {
                return psturolno;
            }
            set
            {
                psturolno = value;
            }
        }

        public DateTime stutrgstrdat
        {
            get
            {
                return pstutrgstrdat;
            }
            set
            {
                pstutrgstrdat = value;
            }
        }

        public DateTime stutrgenddat
        {
            get
            {
                return pstutrgenddat;
            }
            set
            {
                pstutrgenddat = value;
            }
        }

        public string stupic
        {
            get
            {
                return pstupic;
            }
            set
            {
                pstupic = value;
            }
        }

        public string stuusrnam
        {
            get
            {
                return pstuusrnam;
            }
            set
            {
                pstuusrnam = value;
            }
        }

        public string stupwd
        {
            get
            {
                return pstupwd;
            }
            set
            {
                pstupwd = value;
            }
        }
    }
    public class clsstu : clscon
    {
        public Int32 logstu(String usrnam, String pwd)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("logstu", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@stuusrnam", SqlDbType.VarChar, 50).Value = usrnam;
            cmd.Parameters.Add("@stupwd", SqlDbType.VarChar, 50).Value = pwd;
            cmd.Parameters.Add("@r", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@r"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }
        public List<clsstuprp> find_rec(Int32 stucod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndstu", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@stucod", SqlDbType.Int).Value = stucod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsstuprp> obj = new List<clsstuprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsstuprp k = new clsstuprp();
                k.stucod = Convert.ToInt32(dr[0]);
                k.stunam = dr[1].ToString();
                k.stucol = dr[2].ToString();
                k.sturolno = dr[3].ToString();
                k.stutrgstrdat = Convert.ToDateTime(dr[4]);
                k.stutrgenddat = Convert.ToDateTime(dr[5]);
                k.stupic = dr[6].ToString();
                k.stuusrnam = dr[7].ToString();
                k.stupwd = dr[8].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public Int32 save_rec(clsstuprp p)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("insstu", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@stunam", SqlDbType.VarChar, 50).Value = p.stunam;
            cmd.Parameters.Add("@stucol", SqlDbType.VarChar, 50).Value = p.stucol;
            cmd.Parameters.Add("@sturolno", SqlDbType.VarChar, 50).Value = p.sturolno;
            cmd.Parameters.Add("@stutrgstrdat", SqlDbType.DateTime).Value = p.stutrgstrdat;
            cmd.Parameters.Add("@stutrgenddat", SqlDbType.DateTime).Value = p.stutrgenddat;
            cmd.Parameters.Add("@stupic", SqlDbType.VarChar, 50).Value = p.stupic;
            cmd.Parameters.Add("@stuusrnam", SqlDbType.VarChar, 50).Value = p.stuusrnam;
            cmd.Parameters.Add("@stupwd", SqlDbType.VarChar, 50).Value = p.stupwd;
            cmd.Parameters.Add("@r", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@r"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }

    }
    public interface intbrd
    {
        Int32 brdcod
        {
            get;
            set;
        }
        String brdnam
        {
            get;
            set;
        }
    }
    public interface intprdtyp
    {
        Int32 prdtypcod
        {
            get;
            set;
        }
        String prdtypnam
        {
            get;
            set;

        }
        Char prdtypsizsts
        {
            get;
            set;
        }
    }
    public interface intret
    {
        Int32 retcod
        {
            get;
            set;
        }
        String retbusnam
        {
            get;
            set;

        }
        String retadd
        {
            get;
            set;
        }
        String retlog
        {
            get;
            set;
        }
        String retcnt
        {
            get;
            set;

        }
        String retzipcod
        {
            get;
            set;

        }
        String retmetact
        {
            get;
            set;
        }

    }
    public interface intusr
    {
        Int32 usrcod
        {
            get;
            set;

        }
        String usreml
        {
            get;
            set;
        }
        String usrpass
        {
            get;
            set;
        }
        Int32 usrretprfcod
        {
            get;
            set;
        }
        char usrtyp
        {
            get;
            set;
        }

    }
    public interface intprf
    {
        Int32 prfcod
        {
            get;
            set;

        }
        String prfdep
        {
            get;
            set;

        }
        String prftopsiz
        {
            get;
            set;

        }
        String prfbotsiz
        {
            get;
            set;
        }
        String prfshosiz
        {
            get;
            set;
        }
        String prfnam
        {
            get;
            set;
        }
        String prfemlwhn
        {
            get;
            set;
        }
        Char prfgnd
        {
            get;
            set;
        }
        Int32 prfyob
        {
            get;
            set;
        }
        String prfcnt
        {
            get;
            set;
        }
        String prfzipcod
        {
            get;
            set;
        }
    }
    public interface intprfbrd
    {
        Int32 prfbrdcod
        {
            get;
            set;
        }
        Int32 prfbrdprfcod
        {
            get;
            set;
        }
        Int32 prfbrdbrdcod
        {
            get;
            set;
        }
    }
    public interface intprfprdtyp
    {
        Int32 prfprdtypcod
        {
            get;
            set;

        }
        Int32 prfprdtypprfcod
        {
            get;
            set;
        }
        Int32 prfprdtypprdtypcod
        {
            get;
            set;
        }
    }
    public interface intprd
    {
        Int32 prdcod
        {
            get;
            set;

        }
        String prdnam
        {
            get;
            set;
        }
        Int32 prdretcod
        {
            get;
            set;
        }
        String prddet
        {
            get;
            set;
        }
        String prdcol
        {
            get;
            set;

        }
        String prdsiz
        {
            get;
            set;
        }
        Int32 prdprdtypcod
        {
            get;
            set;

        }
        Int32 prdbrdcod
        {
            get;
            set;
        }
        String prdcom
        {
            get;
            set;
        }
        float prdprc
        {
            get;
            set;
        }
        Char prdsalsts
        {
            get;
            set;
        }
        float prdsalper
        {
            get;
            set;
        }

    }
    public interface intprdpic
    {
        Int32 prdpiccod
        {
            get;
            set;
        }
        Int32 prdpicprdcod
        {
            get;
            set;
        }
        String prdpicpic
        {
            get;
            set;
        }
        Char prdmanpicsts
        {
            get;
            set;
        }
    }
    public interface intstrlst
    {
        Int32 strlstcod
        {
            get;
            set;

        }
        Int32 strlstprfcod
        {
            get;
            set;
        }
        Int32 strlstprdcod
        {
            get;
            set;
        }
        DateTime strlstdat
        {
            get;
            set;
        }
    }
    public interface intord
    {
        Int32 ordcod
        {
            get;
            set;
        }
        DateTime orddat
        {
            get;
            set;

        }
        Int32 ordprfcod
        {
            get;
            set;

        }
        Int32 ordretcod
        {
            get;
            set;
        }
        String ordbiladd
        {
            get;
            set;
        }
        String ordbilcnt
        {
            get;
            set;
        }
        String ordbilzipcod
        {
            get;
            set;
        }
        Char orddelsts
        {
            get;
            set;
        }
    }
    public interface intorddet
    {
        Int32 orddetcod
        {
            get;
            set;
        }
        Int32 orddetordcod
        {
            get;
            set;
        }
        Int32 orddetqty
        {
            get;
            set;
        }
        Int32 orddetprdcod
        {
            get;
            set;
        }
    }

    //**********property*********//

    public class clsbrdprp : intbrd
    {
        private Int32 prvbrdcod;
        private String prvbrdnam;
        public int brdcod
        {
            get
            {
                return prvbrdcod;

            }
            set
            {
                prvbrdcod = value;
            }
        }

        public string brdnam
        {
            get
            {
                return prvbrdnam;
            }
            set
            {
                prvbrdnam = value;
            }
        }
    }
    public class clsprdtypprp : intprdtyp
    {
        private Int32 prvprdtypcod;
        private String prvprdtypnam;
        private Char prvprdtypsizsts;
        public int prdtypcod
        {
            get
            {
                return prvprdtypcod;
            }
            set
            {
                prvprdtypcod = value;
            }
        }

        public string prdtypnam
        {
            get
            {
                return prvprdtypnam;
            }
            set
            {
                prvprdtypnam = value;
            }
        }

        public char prdtypsizsts
        {
            get
            {
                return prvprdtypsizsts;
            }
            set
            {
                prvprdtypsizsts = value;
            }
        }
    }
    public class clsretprp : intret
    {
        private Int32 prvretcod;
        private String prvretbusnam, prvretadd, prvretlog, prvretcnt, prvretzipcod, prvretmetact;
        public int retcod
        {
            get
            {
                return prvretcod;
            }
            set
            {
                prvretcod = value;
            }
        }

        public string retbusnam
        {
            get
            {
                return prvretbusnam;
            }
            set
            {
                prvretbusnam = value ;
            }
        }

        public string retadd
        {
            get
            {
                return prvretadd;
            }
            set
            {
                prvretadd=value ;
            }
        }

        public string retlog
        {
            get
            {
                return prvretlog;
            }
            set
            {
               prvretlog=value ;
            }
        }

        public string retcnt
        {
            get
            {
                return prvretcnt;

            }
            set
            {
               prvretcnt=value;
            }
        }

        public string retzipcod
        {
            get
            {
                return prvretzipcod;
            }
            set
            {
                prvretzipcod = value ;
            }
        }

        public string retmetact
        {
            get
            {
                return prvretmetact;
            }
            set
            {
                prvretmetact=value;
            }
        }
    }
    public class clsusrprp : intusr
    {
        private Int32 prvusrcod, prvusrretprfcod;
        private String prvusreml, prvusrpass;
        private Char prvusrtyp;
        public int usrcod
        {
            get
            {
                return prvusrcod;
            }
            set
            {
                prvusrcod=value ;
            }
        }

        public string usreml
        {
            get
            {
                return prvusreml;
            }
            set
            {
                prvusreml = value ;
            }
        }

        public string usrpass
        {
            get
            {
                return prvusrpass;
            }
            set
            {
                prvusrpass=value;
            }
        }

        public int usrretprfcod
        {
            get
            {
                return prvusrretprfcod;
            }
            set
            {
                prvusrretprfcod = value ;
            }
        }

        public char usrtyp
        {
            get
            {
                return prvusrtyp;
            }
            set
            {
                prvusrtyp = value ;
            }
        }
    }
    public class clsprfprp : intprf
    {

        private Int32 prvprfcod, prvprfyob;
        private String prvprfdep, prvprftopsiz, prvprfbotsiz, prvprfshosiz, prvprfnam, prvprfemlwhn, prvprfcnt, prvprfzipcod;
        private Char prvprfgnd;

        public int prfcod
        {
            get
            {
                return prvprfcod;
            }
            set
            {
                prvprfcod = value;
            }
        }

        public string prfdep
        {
            get
            {
                return prvprfdep;
            }
            set
            {
                prvprfdep = value;
            }
        }

        public string prftopsiz
        {
            get
            {
                return prvprftopsiz;
            }
            set
            {
                prvprftopsiz = value;
            }
        }

        public string prfbotsiz
        {
            get
            {
                return prvprfbotsiz;
            }
            set
            {
                 prvprfbotsiz=value;
            }
        }

        public string prfshosiz
        {
            get
            {
                return prvprfshosiz;
            }
            set
            {
                prvprfshosiz = value;
            }
        }

        public string prfnam
        {
            get
            {
                return prvprfnam;
            }
            set
            {
                prvprfnam = value;
            }
        }

        public string prfemlwhn
        {
            get
            {
                return prvprfemlwhn;
            }
            set
            {
                prvprfemlwhn = value;
            }
        }

        public char prfgnd
        {
            get
            {
                return prvprfgnd;
            }
            set
            {
                prvprfgnd = value;
            }
        }

        public int prfyob
        {
            get
            {
                return prvprfyob;
            }
            set
            {
                prvprfyob = value;
            }
        }

        public string prfcnt
        {
            get
            {
                return prvprfcnt;
            }
            set
            {
                prvprfcnt = value;
            }
        }

        public string prfzipcod
        {
            get
            {
                return prvprfzipcod;
            }
            set
            {
                prvprfzipcod = value;
            }
        }
    }
    public class clsprfbrdprp : intprfbrd
    {
        private Int32 prvprfbrdcod, prvprfbrdprfcod, prvprfbrdbrdcod;
        public int prfbrdcod
        {
            get
            {
                return prvprfbrdcod;
            }
            set
            {
                prvprfbrdcod = value;
            }
        }

        public int prfbrdprfcod
        {
            get
            {
                return prvprfbrdprfcod;
            }
            set
            {
                prvprfbrdprfcod = value;

            }
        }

        public int prfbrdbrdcod
        {
            get
            {
                return prvprfbrdbrdcod;
            }
            set
            {
                prvprfbrdbrdcod = value;
            }
        }
    }
    public class clsprfprdtypprp : intprfprdtyp
    {
        private Int32 prvprdtypcod, prvprdtypprfcod, prvprfprdtypprdtypcod;
        public int prfprdtypcod
        {
            get
            {
                return prvprdtypcod;
            }
            set
            {
                prvprdtypcod = value;
            }
        }

        public int prfprdtypprfcod
        {
            get
            {
                return prvprdtypprfcod;
            }
            set
            {
                prvprdtypprfcod = value;
            }
        }

        public int prfprdtypprdtypcod
        {
            get
            {
                return prvprfprdtypprdtypcod;
            }
            set
            {
                prvprfprdtypprdtypcod = value;
            }
        }
    }
    public class clsprdprp : intprd
    {
        private Int32 prvprdcod, prvprdretcod, prvprdprdtypcod, prvprdbrdcod;
        private String prvprdnam, prvprddet, prvprdcol, prvprdsiz, prvprdcom;
        private Char prvprdsalsts;
        private float prvprdprc, prvprdsalper;


        public int prdcod
        {
            get
            {
                return prvprdcod;
            }
            set
            {

                prvprdcod = value;
            }
        }

        public string prdnam
        {
            get
            {
                return prvprdnam;
            }
            set
            {
                prvprdnam = value;
            }
        }

        public int prdretcod
        {
            get
            {
                return prvprdretcod;
            }
            set
            {
                prvprdretcod = value;
            }
        }

        public string prddet
        {
            get
            {
                return prvprddet;
            }
            set
            {
                 prvprddet = value;
            }
        }

        public string prdcol
        {
            get
            {
                return prvprdcol;
            }
            set
            {
                prvprdcol = value;
            }
        }

        public string prdsiz
        {
            get
            {
                return prvprdsiz;
            }
            set
            {
                 prvprdsiz = value;
            }
        }

        public int prdprdtypcod
        {
            get
            {
                return prvprdprdtypcod;
            }
            set
            {
                prvprdprdtypcod = value;
            }
        }

        public int prdbrdcod
        {
            get
            {
                return prvprdbrdcod;
            }
            set
            {
                prvprdbrdcod = value;
            }
        }

        public string prdcom
        {
            get
            {
                return prvprdcom;
            }
            set
            {
                prvprdcom = value;
            }
        }

        public float prdprc
        {
            get
            {
                return prvprdprc;
            }
            set
            {
                prvprdprc = value;
            }
        }

        public char prdsalsts
        {
            get
            {
                return prvprdsalsts;
            }
            set
            {
                prvprdsalsts = value;
            }
        }

        public float prdsalper
        {
            get
            {
                return prvprdsalper;
            }
            set
            {
                prvprdsalper = value;
            }
        }
    }
    public class clsprdpicprp : intprdpic
    {
        private Int32 prvprdpiccod, prvprdpicprdcod;
        private String prvprdpicpic;
        private Char prvprdmanpicsts;
        public int prdpiccod
        {
            get
            {
                return prvprdpiccod;
            }
            set
            {
                prvprdpiccod = value;
            }
        }

        public int prdpicprdcod
        {
            get
            {
                return prvprdpicprdcod;
            }
            set
            {
                prvprdpicprdcod = value;
            }
        }

        public string prdpicpic
        {
            get
            {
                return prvprdpicpic;
            }
            set
            {
                prvprdpicpic = value;
            }
        }

        public char prdmanpicsts
        {
            get
            {
                return prvprdmanpicsts;
            }
            set
            {
                prvprdmanpicsts = value;
            }
        }
    }
    public class clsstrlstprp : intstrlst
    {
        private Int32 prvstrlstcod, prvstrlstprfcod, prvstrlstprdcod;
        private DateTime prvstrlstdat;
        public int strlstcod
        {
            get
            {
                return prvstrlstcod;
            }
            set
            {
                prvstrlstcod = value;
            }
        }

        public int strlstprfcod
        {
            get
            {
                return prvstrlstprfcod;
            }
            set
            {
                prvstrlstprfcod = value;
            }
        }

        public int strlstprdcod
        {
            get
            {
                return prvstrlstprdcod;
            }
            set
            {
                prvstrlstprdcod = value;
            }
        }

        public DateTime strlstdat
        {
            get
            {
                return prvstrlstdat;
            }
            set
            {
                 prvstrlstdat = value;
            }
        }
  }
    public class clsordprp : intord
    {
        private Int32 prvordcod, prvordprfcod, prvordretcod;
        private DateTime prvorddat;
        private String prvordbiladd, prvordbilcnt, prvordbilzipcod;
        private Char prvorddelsts;
        public int ordcod
        {
            get
            {
                return prvordcod;
            }
            set
            {
                prvordcod = value;
            }
        }

        public DateTime orddat
        {
            get
            {
                return prvorddat;
            }
            set
            {
                prvorddat = value;
            }
        }

        public int ordprfcod
        {
            get
            {
                return prvordprfcod;
            }
            set
            {
                prvordprfcod = value;
            }
        }

        public int ordretcod
        {
            get
            {
                return prvordretcod;
            }
            set
            {
                prvordretcod = value;
            }
        }

        public string ordbiladd
        {
            get
            {
                return prvordbiladd;
            }
            set
            {
                prvordbiladd = value;
            }
        }

        public string ordbilcnt
        {
            get
            {
                return prvordbilcnt;
            }
            set
            {
                prvordbilcnt = value;
            }
        }

        public string ordbilzipcod
        {
            get
            {
                return prvordbilzipcod;
            }
            set
            {
                prvordbilzipcod = value;
            }
        }

        public char orddelsts
        {
            get
            {
                return prvorddelsts;
            }
            set
            {
                prvorddelsts = value;
            }
        }
    }
    public class clsorddetprp : intorddet
    {
        private Int32 prvorddetcod, prvorddetordcod, prvorddetqty, prvorddetprdcod;
        public int orddetcod
        {
            get
            {
                return prvorddetcod;
            }
            set
            {
                prvorddetcod = value;
            }
        }

        public int orddetordcod
        {
            get
            {
                return prvorddetordcod;
            }
            set
            {
                prvorddetordcod = value;
            }
        }

        public int orddetqty
        {
            get
            {
                return prvorddetqty;
            }
            set
            {
                prvorddetqty = value;
            }
        }

        public int orddetprdcod
        {
            get
            {
                return prvorddetprdcod;
            }
            set
            {
                prvorddetprdcod = value;
            }
        }
    }


    //**********connectionclass*********//
    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    //****************MainClass**************//
    public class clsbrd : clscon
    {
        public void save_rec(clsbrdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Parameters.Add("@brdcod", SqlDbType.Int).Value = p.brdcod;
            cmd.Parameters.Add("@brdnam", SqlDbType.VarChar, 100).Value = p.brdnam;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsbrdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@brdcod", SqlDbType.Int).Value = p.brdcod;
            cmd.Parameters.Add("@brdnam", SqlDbType.VarChar, 100).Value = p.brdnam;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsbrdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@brdcod", SqlDbType.Int).Value = p.brdcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsbrdprp> find_rec(Int32 brdcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@brdcod", SqlDbType.Int).Value = brdcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsbrdprp> obj = new List<clsbrdprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsbrdprp k = new clsbrdprp();
                k.brdcod = Convert.ToInt32(dr[0]);
                k.brdnam = dr[1].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsbrdprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsbrdprp> obj = new List<clsbrdprp>();
            while (dr.Read())
            {
                clsbrdprp k = new clsbrdprp();
                k.brdcod = Convert.ToInt32(dr[0]);
                k.brdnam = dr[1].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsprdtyp : clscon
    {
        public void save_rec(clsprdtypprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@prdtypcod", SqlDbType.Int).Value = p.prdtypcod;
            cmd.Parameters.Add("@prdtypnam", SqlDbType.VarChar, 100).Value = p.prdtypnam;
            cmd.Parameters.Add("@prdtypsizsts", SqlDbType.Char, 1).Value = p.prdtypsizsts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsprdtypprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdtypcod", SqlDbType.Int).Value = p.prdtypcod;
            cmd.Parameters.Add("@prdtypnam", SqlDbType.VarChar, 100).Value = p.prdtypnam;
            cmd.Parameters.Add("@prdtypsizsts", SqlDbType.Char, 1).Value = p.prdtypsizsts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsprdtypprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdtypcod", SqlDbType.Int).Value = p.prdtypcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsprdtypprp> find_rec(Int32 prdtypcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdtypcod", SqlDbType.Int).Value = prdtypcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprdtypprp> obj = new List<clsprdtypprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsprdtypprp k = new clsprdtypprp();
                k.prdtypcod = Convert.ToInt32(dr[0]);
                k.prdtypnam = dr[1].ToString();
                k.prdtypsizsts = Convert.ToChar(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsprdtypprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprdtypprp> obj = new List<clsprdtypprp>();
            while (dr.Read())
            {
                clsprdtypprp k = new clsprdtypprp();
                k.prdtypcod = Convert.ToInt32(dr[0]);
                k.prdtypnam = dr[1].ToString();
                k.prdtypsizsts = Convert.ToChar(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsret : clscon
    {
        public Int32 save_rec(clsretprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insret", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //  cmd.Parameters.Add("@retcod", SqlDbType.Int).Value = p.retcod;
            cmd.Parameters.Add("@retbusnam", SqlDbType.VarChar, 100).Value = p.retbusnam;
            cmd.Parameters.Add("@retadd", SqlDbType.VarChar, 100).Value = p.retadd;
            cmd.Parameters.Add("@retlog", SqlDbType.VarChar, 50).Value = p.retlog;
            cmd.Parameters.Add("@retcnt", SqlDbType.VarChar, 100).Value = p.retcnt;
            cmd.Parameters.Add("@retzipcod", SqlDbType.VarChar, 100).Value = p.retzipcod;
            cmd.Parameters.Add("@retmetact", SqlDbType.VarChar, 100).Value = p.retmetact;
    cmd.Parameters.Add("@r", SqlDbType.Int).Direction =
                ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
 Int32 a = Convert.ToInt32(cmd.Parameters["@r"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }

        public void update_rec(clsretprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updret", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@retcod", SqlDbType.Int).Value = p.retcod;
            cmd.Parameters.Add("@retbusnam", SqlDbType.VarChar, 100).Value = p.retbusnam;
            cmd.Parameters.Add("@retadd", SqlDbType.VarChar, 100).Value = p.retadd;
            cmd.Parameters.Add("@retlog", SqlDbType.VarChar, 50).Value = p.retlog;
            cmd.Parameters.Add("@retcnt", SqlDbType.VarChar, 100).Value = p.retcnt;
            cmd.Parameters.Add("@retzipcod", SqlDbType.VarChar, 100).Value = p.retzipcod;
            cmd.Parameters.Add("@retmetact", SqlDbType.VarChar, 100).Value = p.retmetact;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsretprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delret", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@retcod", SqlDbType.Int).Value = p.retcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsretprp> find_rec(Int32 retcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndret", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@retcod", SqlDbType.Int).Value = retcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsretprp> obj = new List<clsretprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsretprp k = new clsretprp();
                k.retcod = Convert.ToInt32(dr[0]);
                k.retbusnam = dr[1].ToString();
                k.retadd = dr[2].ToString();
                k.retlog = dr[3].ToString();
                k.retcnt = dr[4].ToString();
                k.retzipcod = dr[5].ToString();
                k.retmetact = dr[6].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsretprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispret", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsretprp> obj = new List<clsretprp>();
            while (dr.Read())
            {
                clsretprp k = new clsretprp();
                k.retcod = Convert.ToInt32(dr[0]);
                k.retbusnam = dr[1].ToString();
                k.retadd = dr[2].ToString();
                k.retlog = dr[3].ToString();
                k.retcnt = dr[4].ToString();
                k.retzipcod = dr[5].ToString();
                k.retmetact = dr[6].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsusr : clscon
    {
        public Int32 logincheck(String eml, String pwd, out char typ)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("logincheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@eml", SqlDbType.VarChar, 50).Value = eml;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = pwd;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Direction = 
                ParameterDirection.Output;
            cmd.Parameters.Add("@typ", SqlDbType.Char, 1).Direction
                = ParameterDirection.Output ;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@cod"].Value);
            typ = Convert.ToChar(cmd.Parameters["@typ"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }
        public void save_rec(clsusrprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //  cmd.Parameters.Add("@usrcod", SqlDbType.Int).Value = p.usrcod;
            cmd.Parameters.Add("@usreml", SqlDbType.VarChar, 100).Value = p.usreml;
            cmd.Parameters.Add("@usrpass", SqlDbType.VarChar, 100).Value = p.usrpass;
            cmd.Parameters.Add("@usrretprfcod", SqlDbType.Int).Value = p.usrretprfcod;
            cmd.Parameters.Add("@usrtyp", SqlDbType.Char, 1).Value = p.usrtyp;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsusrprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@usrcod", SqlDbType.Int).Value = p.usrcod;
            cmd.Parameters.Add("@usreml", SqlDbType.VarChar, 100).Value = p.usreml;
            cmd.Parameters.Add("@usrpass", SqlDbType.VarChar, 100).Value = p.usrpass;
            cmd.Parameters.Add("@usrretprfcod", SqlDbType.Int).Value = p.usrretprfcod;
            cmd.Parameters.Add("@usrtyp", SqlDbType.Char, 1).Value = p.usrtyp;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsusrprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@usrcod", SqlDbType.Int).Value = p.usrcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsusrprp> find_rec(Int32 usrcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@usrcod", SqlDbType.Int).Value = usrcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsusrprp> obj = new List<clsusrprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsusrprp k = new clsusrprp();
                k.usrcod = Convert.ToInt32(dr[0]);
                k.usreml = dr[1].ToString();
                k.usrpass = dr[2].ToString();
                k.usrretprfcod = Convert.ToInt32(dr[3]);
                k.usrtyp = Convert.ToChar(dr[4]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsusrprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispusr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsusrprp> obj = new List<clsusrprp>();
            while (dr.Read())
            {
                clsusrprp k = new clsusrprp();
                k.usrcod = Convert.ToInt32(dr[0]);
                k.usreml = dr[1].ToString();
                k.usrpass = dr[2].ToString();
                k.usrretprfcod = Convert.ToInt32(dr[3]);
                k.usrtyp = Convert.ToChar(dr[4]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsprf : clscon
    {
        public Int32 save_rec(clsprfprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insprf", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@prfcod", SqlDbType.Int).Value = p.prfcod;
            cmd.Parameters.Add("@prfdep", SqlDbType.VarChar, 100).Value = p.prfdep;
            cmd.Parameters.Add("@prftopsiz", SqlDbType.VarChar, 100).Value = p.prftopsiz;
            cmd.Parameters.Add("@prfbotsiz", SqlDbType.VarChar, 100).Value = p.prfbotsiz;
            cmd.Parameters.Add("@prfshosiz", SqlDbType.VarChar, 100).Value = p.prfshosiz;
            cmd.Parameters.Add("@prfnam", SqlDbType.VarChar, 100).Value = p.prfnam;
            cmd.Parameters.Add("@prfemlwhn", SqlDbType.VarChar, 100).Value = p.prfemlwhn;
            cmd.Parameters.Add("@prfgnd", SqlDbType.Char, 1).Value = p.prfgnd;
            cmd.Parameters.Add("@prfyob", SqlDbType.Int).Value = p.prfyob;
            cmd.Parameters.Add("@prfcnt", SqlDbType.VarChar, 100).Value = p.prfcnt;
            cmd.Parameters.Add("@prfzipcod", SqlDbType.VarChar, 100).Value = p.prfzipcod;
            cmd.Parameters.Add("@r", SqlDbType.Int).Direction =
                                ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@r"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }
        public void update_rec(clsprfprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updprf", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfcod", SqlDbType.Int).Value = p.prfcod;
            cmd.Parameters.Add("@prfdep", SqlDbType.VarChar, 100).Value = p.prfdep;
            cmd.Parameters.Add("@prftopsiz", SqlDbType.VarChar, 100).Value = p.prftopsiz;
            cmd.Parameters.Add("@prfbotsiz", SqlDbType.VarChar, 100).Value = p.prfbotsiz;
            cmd.Parameters.Add("@prfshosiz", SqlDbType.VarChar, 100).Value = p.prfshosiz;
            cmd.Parameters.Add("@prfnam", SqlDbType.VarChar, 100).Value = p.prfnam;
            cmd.Parameters.Add("@prfemlwhn", SqlDbType.VarChar, 100).Value = p.prfemlwhn;
            cmd.Parameters.Add("@prfgnd", SqlDbType.Char, 1).Value = p.prfgnd;
            cmd.Parameters.Add("@prfyob", SqlDbType.Int).Value = p.prfyob;
            cmd.Parameters.Add("@prfcnt", SqlDbType.VarChar, 100).Value = p.prfcnt;
            cmd.Parameters.Add("@prfzipcod", SqlDbType.VarChar, 100).Value = p.prfzipcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsprfprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delprf", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfcod", SqlDbType.Int).Value = p.prfcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsprfprp> find_rec(Int32 prfcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndprf", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfcod", SqlDbType.Int).Value = prfcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprfprp> obj = new List<clsprfprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsprfprp k = new clsprfprp();
                k.prfcod = Convert.ToInt32(dr[0]);
                k.prfdep = dr[1].ToString();
                k.prftopsiz = dr[2].ToString();
                k.prfbotsiz = dr[3].ToString();
                k.prfshosiz = dr[4].ToString();
                k.prfnam = dr[5].ToString();
                k.prfemlwhn = dr[6].ToString();
                k.prfgnd = Convert.ToChar(dr[7]);
                k.prfyob = Convert.ToInt32(dr[8]);
                k.prfcnt = dr[9].ToString();
                k.prfzipcod = dr[10].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsprfprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispprf", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprfprp> obj = new List<clsprfprp>();
            while (dr.Read())
            {
                clsprfprp k = new clsprfprp();
                k.prfcod = Convert.ToInt32(dr[0]);
                k.prfdep = dr[1].ToString();
                k.prftopsiz = dr[2].ToString();
                k.prfbotsiz = dr[3].ToString();
                k.prfshosiz = dr[4].ToString();
                k.prfnam = dr[5].ToString();
                k.prfemlwhn = dr[6].ToString();
                k.prfgnd = Convert.ToChar(dr[7]);
                k.prfyob = Convert.ToInt32(dr[8]);
                k.prfcnt = dr[9].ToString();
                k.prfzipcod = dr[10].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsprfbrd : clscon
    {
        public void save_rec(clsprfbrdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insprfbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //  cmd.Parameters.Add("@prfbrdcod", SqlDbType.Int).Value = p.prfbrdcod;
            cmd.Parameters.Add("@prfbrdprfcod", SqlDbType.Int).Value = p.prfbrdprfcod;
            cmd.Parameters.Add("@prfbrdbrdcod", SqlDbType.Int).Value = p.prfbrdbrdcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsprfbrdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updprfbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfbrdcod", SqlDbType.Int).Value = p.prfbrdcod;
            cmd.Parameters.Add("@prfbrdprfcod", SqlDbType.Int).Value = p.prfbrdprfcod;
            cmd.Parameters.Add("@prfbrdbrdcod", SqlDbType.Int).Value = p.prfbrdbrdcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsprfbrdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delprfbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfbrdcod", SqlDbType.Int).Value = p.prfbrdcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsprfbrdprp> find_rec(Int32 prfbrdcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndprfbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfbrdcod", SqlDbType.Int).Value = prfbrdcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprfbrdprp> obj = new List<clsprfbrdprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsprfbrdprp k = new clsprfbrdprp();
                k.prfbrdcod = Convert.ToInt32(dr[0]);
                k.prfbrdprfcod = Convert.ToInt32(dr[1]);
                k.prfbrdbrdcod = Convert.ToInt32(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        
        public List<clsprfbrdprp> disp_rec(Int32 prfcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispprfbrd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfcod", SqlDbType.Int).Value = prfcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprfbrdprp> obj = new List<clsprfbrdprp>();
            while (dr.Read())
            {
                clsprfbrdprp k = new clsprfbrdprp();
                k.prfbrdcod = Convert.ToInt32(dr[0]);
                k.prfbrdprfcod = Convert.ToInt32(dr[1]);
                k.prfbrdbrdcod = Convert.ToInt32(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsprfprdtyp : clscon
    {
        public void save_rec(clsprfprdtypprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insprfprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.Add("@prfprdtypcod", SqlDbType.Int).Value = p.prfprdtypcod;
            cmd.Parameters.Add("@prfprdtypprfcod", SqlDbType.Int).Value = p.prfprdtypprfcod;
            cmd.Parameters.Add("@prfprdtypprdtypcod", SqlDbType.Int).Value = p.prfprdtypprdtypcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsprfprdtypprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updprfprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfprdtypcod", SqlDbType.Int).Value = p.prfprdtypcod;
            cmd.Parameters.Add("@prfprdtypprfcod", SqlDbType.Int).Value = p.prfprdtypprfcod;
            cmd.Parameters.Add("@prfprdtypprdtypcod", SqlDbType.Int).Value = p.prfprdtypprdtypcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsprfprdtypprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delprfprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfprdtypcod", SqlDbType.Int).Value = p.prfprdtypcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsprfprdtypprp> find_rec(Int32 prfprdtypcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndprfbrdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfprdtypcod", SqlDbType.Int).Value = prfprdtypcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprfprdtypprp> obj = new List<clsprfprdtypprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsprfprdtypprp k = new clsprfprdtypprp();
                k.prfprdtypcod = Convert.ToInt32(dr[0]);
                k.prfprdtypprfcod = Convert.ToInt32(dr[1]);
                k.prfprdtypprdtypcod = Convert.ToInt32(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
       
        public List<clsprfprdtypprp> disp_rec(Int32 prfcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispprfprdtyp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prfcod", SqlDbType.Int).Value = prfcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprfprdtypprp> obj = new List<clsprfprdtypprp>();
            while (dr.Read())
            {
                clsprfprdtypprp k = new clsprfprdtypprp();
                k.prfprdtypcod = Convert.ToInt32(dr[0]);
                k.prfprdtypprfcod = Convert.ToInt32(dr[1]);
                k.prfprdtypprdtypcod = Convert.ToInt32(dr[2]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsprd : clscon
    {
        public DataSet dspsalmalusr(Int32 prdcod)
        {
            SqlDataAdapter adp = new SqlDataAdapter("dspsalmalusr", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add("@prdcod", SqlDbType.Int).Value =
                prdcod;
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds;
        }
        public DataSet srcprd(String brd, String prdtyp)
        {
            SqlDataAdapter adp = new SqlDataAdapter("srcprd", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add("@brd", SqlDbType.VarChar
                , 100).Value = brd;
         adp.SelectCommand.Parameters.Add("@prdtyp", SqlDbType.VarChar
                , 100).Value = prdtyp;
         DataSet ds = new DataSet();
         adp.Fill(ds);
         return ds;
        }
        public void updprdsalsts(clsprdprp p)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("updprdsalsts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdcod", SqlDbType.Int).Value = p.prdcod;
            cmd.Parameters.Add("@prdsalsts", SqlDbType.Char, 1).Value = p.prdsalsts;
            cmd.Parameters.Add("@prdsalper", SqlDbType.Float).Value = p.prdsalper;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }



    public DataSet dspretprd(Int32 retcod, Int32 brdcod, Int32 prdtypcod)
    {
        SqlDataAdapter adp = new SqlDataAdapter("dspretprd1", con);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
adp.SelectCommand.Parameters.Add("@retcod", SqlDbType.Int).Value = retcod;
adp.SelectCommand.Parameters.Add("@brdcod", SqlDbType.Int).Value = brdcod;
adp.SelectCommand.Parameters.Add("@prdtypcod", SqlDbType.Int).Value
    = prdtypcod;
DataSet ds = new DataSet();
adp.Fill(ds);
return ds;
    }
        public Int32 save_rec(clsprdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insprd", con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.Add("@prdcod", SqlDbType.Int).Value = p.prdcod;
            cmd.Parameters.Add("@prdnam", SqlDbType.VarChar, 100).Value = p.prdnam;
            cmd.Parameters.Add("@prdretcod", SqlDbType.Int).Value = p.prdretcod;
            cmd.Parameters.Add("@prddet", SqlDbType.VarChar, 1000).Value = p.prddet;
            cmd.Parameters.Add("@prdcol", SqlDbType.VarChar, 100).Value = p.prdcol;
            cmd.Parameters.Add("@prdsiz", SqlDbType.VarChar, 100).Value = p.prdsiz;
            cmd.Parameters.Add("@prdprdtypcod", SqlDbType.Int).Value = p.prdprdtypcod;
            cmd.Parameters.Add("@prdbrdcod", SqlDbType.Int).Value = p.prdbrdcod;
            cmd.Parameters.Add("@prdcom", SqlDbType.VarChar, 200).Value = p.prdcom;
            cmd.Parameters.Add("@prdprc", SqlDbType.Float).Value = p.prdprc;
            cmd.Parameters.Add("@prdsalsts", SqlDbType.Char, 1).Value = p.prdsalsts;
            cmd.Parameters.Add("@prdsalper", SqlDbType.Float).Value = p.prdsalper;
            cmd.Parameters.Add("@r", SqlDbType.Int)
                .Direction = ParameterDirection.ReturnValue;
            
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@r"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }
        public void update_rec(clsprdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updprd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdcod", SqlDbType.Int).Value = p.prdcod;
            cmd.Parameters.Add("@prdnam", SqlDbType.VarChar, 100).Value = p.prdnam;
            cmd.Parameters.Add("@prdretcod", SqlDbType.Int).Value = p.prdretcod;
            cmd.Parameters.Add("@prddet", SqlDbType.VarChar, 1000).Value = p.prddet;
            cmd.Parameters.Add("@prdcol", SqlDbType.VarChar, 100).Value = p.prdcol;
            cmd.Parameters.Add("@prdsiz", SqlDbType.VarChar, 100).Value = p.prdsiz;
            cmd.Parameters.Add("@prdprdtypcod", SqlDbType.Int).Value = p.prdprdtypcod;
            cmd.Parameters.Add("@prdbrdcod", SqlDbType.Int).Value = p.prdbrdcod;
            cmd.Parameters.Add("@prdcom", SqlDbType.VarChar, 200).Value = p.prdcom;
            cmd.Parameters.Add("@prdprc", SqlDbType.Float).Value = p.prdprc;
          //  cmd.Parameters.Add("@prdsalsts", SqlDbType.Char, 1).Value = p.prdsalsts;
           // cmd.Parameters.Add("@prdsalper", SqlDbType.Float).Value = p.prdsalper;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsprdprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delprd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdcod", SqlDbType.Int).Value = p.prdcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsprdprp> find_rec(Int32 prdcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndprd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdcod", SqlDbType.Int).Value = prdcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprdprp> obj = new List<clsprdprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsprdprp k = new clsprdprp();
                k.prdcod = Convert.ToInt32(dr[0]);
                k.prdnam = dr[1].ToString();
                k.prdretcod = Convert.ToInt32(dr[2]);
                k.prddet = dr[3].ToString();
                k.prdcol = dr[4].ToString();
                k.prdsiz = dr[5].ToString();
                k.prdprdtypcod = Convert.ToInt32(dr[6]);
                k.prdbrdcod = Convert.ToInt32(dr[7]);
                k.prdcom = dr[8].ToString();
                k.prdprc = Convert.ToSingle(dr[9]);
                k.prdsalsts= Convert.ToChar(dr[10]);
                k.prdsalper = Convert.ToSingle(dr[11]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsprdprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispprd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprdprp> obj = new List<clsprdprp>();
            while (dr.Read())
            {
                clsprdprp k = new clsprdprp();
                k.prdcod = Convert.ToInt32(dr[0]);
                k.prdnam = dr[1].ToString();
                k.prdretcod = Convert.ToInt32(dr[2]);
                k.prddet = dr[3].ToString();
                k.prdcol = dr[4].ToString();
                k.prdsiz = dr[5].ToString();
                k.prdprdtypcod = Convert.ToInt32(dr[6]);
                k.prdbrdcod = Convert.ToInt32(dr[7]);
                k.prdcom = dr[8].ToString();
                k.prdprc = Convert.ToSingle(dr[9]);
                k.prdsalsts = Convert.ToChar(dr[10]);
                k.prdsalper = Convert.ToSingle(dr[11]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsprdpic : clscon
    {
        public Int32 save_rec(clsprdpicprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insprdpic", con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.Add("@prdpiccod", SqlDbType.Int).Value = p.prdpiccod;
            cmd.Parameters.Add("@prdpicprdcod", SqlDbType.Int).Value = p.prdpicprdcod;
            cmd.Parameters.Add("@prdpicpic", SqlDbType.VarChar,50).Value = p.prdpicpic;
            cmd.Parameters.Add("@prdmanpicsts", SqlDbType.Char, 1).Value = p.prdmanpicsts;
            cmd.Parameters.Add("@r", SqlDbType.Int)
                .Direction = ParameterDirection.ReturnValue;

            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@r"]
                .Value);
            cmd.Dispose();
            con.Close();
            return a;
        }
        public void update_rec(clsprdpicprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updprdpic", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdpiccod", SqlDbType.Int).Value = p.prdpiccod;
            cmd.Parameters.Add("@prdpicprdcod", SqlDbType.Int).Value = p.prdpicprdcod;
            cmd.Parameters.Add("@prdpicpic", SqlDbType.VarChar, 50).Value = p.prdpicpic;
            cmd.Parameters.Add("@prdmanpicsts", SqlDbType.Char, 1).Value = p.prdmanpicsts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsprdpicprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delprdpic", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdpiccod", SqlDbType.Int).Value = p.prdpiccod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsprdpicprp> find_rec(Int32 prdpiccod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndprdpic", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdpiccod", SqlDbType.Int).Value = prdpiccod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprdpicprp> obj = new List<clsprdpicprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsprdpicprp k = new clsprdpicprp();
                k.prdpiccod = Convert.ToInt32(dr[0]);
                k.prdpicprdcod = Convert.ToInt32(dr[1]);
                k.prdpicpic =dr[2].ToString();
                k.prdmanpicsts = Convert.ToChar(dr[3]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
     
        public List<clsprdpicprp> disp_rec(Int32 prdcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispprdpic", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prdcod", SqlDbType.Int)
                .Value = prdcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsprdpicprp> obj = new List<clsprdpicprp>();
            while (dr.Read())
            {
                clsprdpicprp k = new clsprdpicprp();
                k.prdpiccod = Convert.ToInt32(dr[0]);
                k.prdpicprdcod = Convert.ToInt32(dr[1]);
                k.prdpicpic = dr[2].ToString();
                k.prdmanpicsts = Convert.ToChar(dr[3]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsstrlst : clscon
    {
        public DataSet dispstrlst(Int32 prfcod)
        {
       SqlDataAdapter adp = new SqlDataAdapter("dispstrlst", con);
       adp.SelectCommand.CommandType = CommandType.StoredProcedure;
       adp.SelectCommand.Parameters.Add("@prfcod", SqlDbType.Int).Value
           = prfcod;
       DataSet ds = new DataSet();
       adp.Fill(ds);
       return ds;
        }
        public void save_rec(clsstrlstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insstrlst", con);
            cmd.CommandType = CommandType.StoredProcedure;
          //  cmd.Parameters.Add("@strlstcod", SqlDbType.Int).Value = p.strlstcod;
            cmd.Parameters.Add("@strlstprfcod", SqlDbType.Int).Value = p.strlstprfcod;
            cmd.Parameters.Add("@strlstprdcod", SqlDbType.Int).Value = p.strlstprdcod;
            cmd.Parameters.Add("@strlstdst", SqlDbType.DateTime).Value = p.strlstdat;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsstrlstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updstrlst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@strlstcod", SqlDbType.Int).Value = p.strlstcod;
            cmd.Parameters.Add("@strlstprfcod", SqlDbType.Int).Value = p.strlstprfcod;
            cmd.Parameters.Add("@strlstprdcod", SqlDbType.Int).Value = p.strlstprdcod;
            cmd.Parameters.Add("@strlstdat", SqlDbType.DateTime).Value = p.strlstdat;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsstrlstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delstrlst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@strlstcod", SqlDbType.Int).Value = p.strlstcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsstrlstprp> find_rec(Int32 strlstcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndstrlst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@strlstcod", SqlDbType.Int).Value = strlstcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsstrlstprp> obj = new List<clsstrlstprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsstrlstprp k = new clsstrlstprp();
                k.strlstcod= Convert.ToInt32(dr[0]);
                k.strlstprfcod = Convert.ToInt32(dr[1]);
                k.strlstprdcod = Convert.ToInt32(dr[2]);
                k.strlstdat = Convert.ToDateTime(dr[3]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsstrlstprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispstrlst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsstrlstprp> obj = new List<clsstrlstprp>();
            while (dr.Read())
            {
                clsstrlstprp k = new clsstrlstprp();
                k.strlstcod = Convert.ToInt32(dr[0]);
                k.strlstprfcod = Convert.ToInt32(dr[1]);
                k.strlstprdcod = Convert.ToInt32(dr[2]);
                k.strlstdat = Convert.ToDateTime(dr[3]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsord : clscon
    {
        public DataSet dsppndord(Int32 retcod)
        {
            SqlDataAdapter adp = new SqlDataAdapter("dsppndord",
                     con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add("@retcod", SqlDbType.Int)
                     .Value = retcod;
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds;
        }

     public DataSet dspretord(Int32 retcod, DateTime strdat,
            DateTime enddat)
        {
       SqlDataAdapter adp = new SqlDataAdapter("dspretord",
                con);
       adp.SelectCommand.CommandType = CommandType.StoredProcedure;
  adp.SelectCommand.Parameters.Add("@retcod", SqlDbType.Int)
           .Value = retcod;
  adp.SelectCommand.Parameters.Add("@strdat", SqlDbType.DateTime)
      .Value = strdat;
  adp.SelectCommand.Parameters.Add("@enddat", SqlDbType.DateTime)
      .Value = enddat;
  DataSet ds = new DataSet();
  adp.Fill(ds);
  return ds;
        }
        public DataSet dspusrord(Int32 usrcod)
        {
   SqlDataAdapter adp = new SqlDataAdapter("dspusrord", con);
   adp.SelectCommand.CommandType = CommandType.StoredProcedure;
   adp.SelectCommand.Parameters.Add("@usrcod", SqlDbType.Int)
       .Value = usrcod;
   DataSet ds = new DataSet();
   adp.Fill(ds);
   return ds;
        }
        public Int32 save_rec(clsordprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insord", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@ordcod", SqlDbType.Int).Value = p.ordcod;
            cmd.Parameters.Add("@orddat", SqlDbType.DateTime).Value = p.orddat;
            cmd.Parameters.Add("@ordprfcod", SqlDbType.Int).Value = p.ordprfcod;
            cmd.Parameters.Add("@ordretcod", SqlDbType.Int).Value = p.ordretcod;
            cmd.Parameters.Add("@ordbiladd", SqlDbType.VarChar, 200).Value = p.ordbiladd;
            cmd.Parameters.Add("@ordbilcnt", SqlDbType.VarChar, 100).Value = p.ordbilcnt;
            cmd.Parameters.Add("@ordbilzipcod", SqlDbType.VarChar, 100).Value = p.ordbilzipcod;
            cmd.Parameters.Add("@orddelsts", SqlDbType.Char, 1).Value = p.orddelsts;
            cmd.Parameters.Add("@r", SqlDbType.Int).Direction
                = ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@r"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }

        public void update_rec(clsordprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updord", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ordcod", SqlDbType.Int).Value = p.ordcod;
          
            cmd.Parameters.Add("@orddelsts", SqlDbType.Char, 1).Value = p.orddelsts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsordprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delord", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ordcod", SqlDbType.Int).Value = p.ordcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsordprp> find_rec(Int32 ordcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndord", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ordcod", SqlDbType.Int).Value = ordcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsordprp> obj = new List<clsordprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsordprp k = new clsordprp();
                k.ordcod= Convert.ToInt32(dr[0]);
                k.orddat = Convert.ToDateTime(dr[1]);
                k.ordprfcod = Convert.ToInt32(dr[2]);
                k.ordretcod = Convert.ToInt32(dr[3]);
                k.ordbiladd = dr[4].ToString();
                k.ordbilcnt = dr[5].ToString();
                k.ordbilzipcod = dr[6].ToString();
                k.orddelsts=Convert.ToChar(dr[7]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsordprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispord", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsordprp> obj = new List<clsordprp>();
            while (dr.Read())
            {
                clsordprp k = new clsordprp();
                k.ordcod = Convert.ToInt32(dr[0]);
                k.orddat = Convert.ToDateTime(dr[1]);
                k.ordprfcod = Convert.ToInt32(dr[2]);
                k.ordretcod = Convert.ToInt32(dr[3]);
                k.ordbiladd = dr[4].ToString();
                k.ordbilcnt = dr[5].ToString();
                k.ordbilzipcod = dr[6].ToString();
                k.orddelsts = Convert.ToChar(dr[7]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsorddet : clscon
    {
        public void save_rec(clsorddetprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insorddet", con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.Add("@orddetcod", SqlDbType.Int).Value = p.orddetcod; ;
            cmd.Parameters.Add("@orddetordcod", SqlDbType.Int).Value = p.orddetordcod;
            cmd.Parameters.Add("@orddetqty", SqlDbType.Int).Value = p.orddetqty;
            cmd.Parameters.Add("@orddetprdcod", SqlDbType.Int).Value = p.orddetprdcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void update_rec(clsorddetprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updorddet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@orddetcod", SqlDbType.Int).Value = p.orddetcod; ;
            cmd.Parameters.Add("@orddetordcod", SqlDbType.Int).Value = p.orddetordcod;
            cmd.Parameters.Add("@orddetqty", SqlDbType.Int).Value = p.orddetqty;
            cmd.Parameters.Add("@orddetprdcod", SqlDbType.Int).Value = p.orddetprdcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public void delete_rec(clsorddetprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delorddet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@orddetcod", SqlDbType.Int).Value = p.orddetcod ;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsorddetprp> find_rec(Int32 orddetcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndorddet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@orddetcod", SqlDbType.Int).Value = orddetcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsorddetprp> obj = new List<clsorddetprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsorddetprp k = new clsorddetprp();
                k.orddetcod = Convert.ToInt32(dr[0]);
                k.orddetordcod = Convert.ToInt32(dr[1]);
                k.orddetqty = Convert.ToInt32(dr[2]);
                k.orddetprdcod = Convert.ToInt32(dr[3]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsorddetprp> disp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disporddet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsorddetprp> obj = new List<clsorddetprp>();
            while (dr.Read())
            {
                clsorddetprp k = new clsorddetprp();
                k.orddetcod = Convert.ToInt32(dr[0]);
                k.orddetordcod = Convert.ToInt32(dr[1]);
                k.orddetqty = Convert.ToInt32(dr[2]);
                k.orddetprdcod = Convert.ToInt32(dr[3]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
}


    

     