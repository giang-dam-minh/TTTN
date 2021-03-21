using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Data
    {
        public SqlConnection getConnection()
        {
            return new SqlConnection(@"Data Source=DESKTOP-2P2A81O\SQLEXPRESS;Initial Catalog=imua1;Integrated Security=True");
        }
        public DataTable getTable(string sql)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = getConnection();
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public void ExcuteNonQuery(string sql)
        {
            SqlConnection con = getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();
        }
        public List<TaiKhoanDTO> dsTK(string sql)
        {
            SqlConnection conn = getConnection();
            conn.Open();
            List<TaiKhoanDTO> ds = new List<TaiKhoanDTO>();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TaiKhoanDTO a = new TaiKhoanDTO(dr["Username"].ToString(), dr["Password"].ToString());
                ds.Add(a);
            }
            cmd.Dispose();
            cmd.Clone();
            conn.Close();
            return ds;
        }
    }
}
