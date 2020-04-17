using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SQLite;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("perfil.aspx");
    }


    protected void BtnLoginUsuario_Click1(object sender, EventArgs e)
    {
        string dbConnectionString = @"Data Source=C:\Users\chian\Downloads\DoBem\DoBem\Bin\dobem.db";
        SQLiteConnection sqliteCon = new SQLiteConnection(dbConnectionString);
        sqliteCon.Open();
        string checkUser = "select Count(*) from usuarios where email = '" + EmailUsuario.Text + "'";
        SQLiteCommand checkCommand = new SQLiteCommand(checkUser, sqliteCon);
        if (checkCommand.ExecuteScalar().ToString() == "1")
        {
            Response.Write("<script>alert('Email já cadastrado.');</script>");
            Response.Redirect("index.aspx");
        }
        else
        {
            SQLiteCommand cmd = new SQLiteCommand("INSERT INTO usuarios(email, nome, senha) VALUES (@email, @nome, @senha)", sqliteCon);
            cmd.Parameters.AddWithValue("email", EmailUsuario.Text.Trim());
            cmd.Parameters.AddWithValue("nome", NomeUsuario.Text.Trim());
            cmd.Parameters.AddWithValue("senha", SenhaUsuario.Text.Trim());

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("index.aspx");
            }
            catch (SQLiteException x)
            {

                Response.Write("<script>alert('Ocorreu algum erro, verifique seus dados!');</script>");
            }
            sqliteCon.Close();
        }
    }

    protected void BtnLoginInst_Click(object sender, EventArgs e)
    {
        string dbConnectionString = @"Data Source=C:\Users\chian\Downloads\DoBem\DoBem\Bin\dobem.db";
        SQLiteConnection sqliteCon = new SQLiteConnection(dbConnectionString);
        sqliteCon.Open();
        string checkUser = "select Count(*) from instituicao where email = '" + EmailInst.Text + "'";
        SQLiteCommand checkCommand = new SQLiteCommand(checkUser, sqliteCon);
        if (checkCommand.ExecuteScalar().ToString() == "1")
        {
            Response.Write("<script>alert('Email já cadastrado.');</script>");
        }
        else
        {
            SQLiteCommand cmd = new SQLiteCommand("INSERT INTO instituicao(email, nome, cnpj, telefone, senha) VALUES (@email, @nome, @cnpj, @telefone, @senha)", sqliteCon);
            cmd.Parameters.AddWithValue("email", EmailInst.Text.Trim());
            cmd.Parameters.AddWithValue("nome", NomeInst.Text.Trim());
            cmd.Parameters.AddWithValue("cnpj", CNPJInst.Text.Trim());
            cmd.Parameters.AddWithValue("telefone", TelInst.Text.Trim());
            cmd.Parameters.AddWithValue("senha", SenhaInst.Text.Trim());

            try
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Instituição cadastrada com sucesso.');</script>");
                Response.Redirect("index.aspx");
            }
            catch (SQLiteException x)
            {

                Response.Write("<script>alert('Ocorreu algum erro, verifique seus dados!');</script>");
            }
            sqliteCon.Close();
        }
    }
}