using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string randomnumber
    {
        get
        {
            return ViewState["randomnumber"] != null ? (string)ViewState["randomnumber"] : "";
        }
        set
        {
            ViewState["randomnumber"] = value;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand cmd;
        DataTable table = new DataTable();
        con = new SqlConnection(@"Data Source=LAPTOP-U52PRQIS\SQLEXPRESS;Initial Catalog=onlineexam;Integrated Security=True");
        con.Open();
        string selectquery = "select * from users where user_id =" + int.Parse(txt_id.Text);
        cmd = new SqlCommand(selectquery, con);
        SqlDataReader reader1;
        reader1 = cmd.ExecuteReader();
        if (reader1.Read())
        {
            txt_mail.Text = reader1.GetValue(3).ToString();


        }
        else
        {
            pnl_warning.Visible = true;
            lbl_warning.Text = "Use correct email and password</br>";
        }
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string to, from, pass;
        to = txt_mail.Text.ToString();
        from = "21cse351.subhashreemohanty@giet.edu";
        pass = "Ganu4444";
        MailMessage message = new MailMessage();
        message.To.Add(to);
        message.From = new MailAddress(from);
        message.Subject = "OTP FOR LOGIN";

        message.Subject = "GET OTP";
        Random random = new Random();
        randomnumber = (random.Next(10000, 99999)).ToString();
        message.Body = "Hey " + "your otp is" + int.Parse(randomnumber);
        SmtpClient smtp = new SmtpClient("smtp.gmail.com");
        smtp.EnableSsl = true;
        smtp.Port = 587;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential(from, pass);

        try
        {
            smtp.Send(message);
            lbl_warning.Text = "message sent sucessfully</br>";
        }
        catch (Exception ex)
        {
            pnl_warning.Visible = true;
            lbl_warning.Text = "Something went wrong! Contact your devloper </br>" + ex.Message;
        }

    }

    public void btn_login_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == randomnumber)
        {
            Response.Redirect("index.aspx");

        }
        else
        {
            pnl_warning.Visible = true;
            lbl_warning.Text = "fvfvfail and password</br>";
        }
    }



}