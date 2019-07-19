﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.IO;
using System.Text;
using CrystalDecisions.CrystalReports.Engine;
using System.Security.Cryptography;

namespace SaleSpec.pages.report
{
    public partial class architectreport : System.Web.UI.Page
    {
        public string sPage = "report/architectreport";
        string ssql;
        DataTable dt = new DataTable();

        SqlConnection Conn = new SqlConnection();
        SqlCommand Comm = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlTransaction transac;

        public string strMsgAlert = "";
        public string strTblDetail = "";
        public string strTblActive = "";

        dbConnection dbConn = new dbConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            //string strUserID = Session["UserID"].ToString();
            if (Session["UserID"] == null)
            {
                Response.Redirect("../../pages/users/login");
            }

            if (!IsPostBack)
            {
                GetDataBindArchiteceProfile();
            }
        }

        protected void GetDataBindArchiteceProfile()
        {
            try
            {
                ssql = "SELECT distinct b.ID, b.ArchitecID, b.CompanyID, b.Name, b.FirstName, b.LastName, b.NickName, " +
                        "       b.Position, b.Address, b.Phone, b.Mobile, b.Email, b.StatusConID, b.CreatedDate, b.UpdatedDate, b.GradeID,  " +
                        "       c.ConDesc, c.ConDesc2,	d.PositionNameTH, d.PositionNameEN,	e.GradeDesc, e.GradeDetail " +
                        "FROM adProjects a inner join " +
                        "       adArchitecture b on a.ArchitecID = b.ArchitecID left join " +
                        "       adStatusConfirm c on b.StatusConID = c.StatusConID left join " +
                        "       adPositions d on b.Position = d.PositionID left join " +
                        "       adGrade e on b.GradeID = e.GradeID";

                dt = new DataTable();
                dt = dbConn.GetDataTable(ssql);

                if (dt.Rows.Count != 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string strID = dt.Rows[i]["ID"].ToString();
                        string strArchitecID = dt.Rows[i]["ArchitecID"].ToString();
                        string strCompanyID = dt.Rows[i]["CompanyID"].ToString();
                        string strName = dt.Rows[i]["Name"].ToString();
                        string strFirstName = dt.Rows[i]["FirstName"].ToString();
                        string strLastName = dt.Rows[i]["LastName"].ToString();
                        string strNickName = dt.Rows[i]["NickName"].ToString();
                        string strPosition = dt.Rows[i]["Position"].ToString();
                        string strAddress = dt.Rows[i]["Address"].ToString();
                        string strPhone = dt.Rows[i]["Phone"].ToString();
                        string strMobile = dt.Rows[i]["Mobile"].ToString();
                        string strEmail = dt.Rows[i]["Email"].ToString();
                        string strStatusConID = dt.Rows[i]["StatusConID"].ToString();
                        string strCreatedDate = dt.Rows[i]["CreatedDate"].ToString();
                        string strUpdatedDate = dt.Rows[i]["UpdatedDate"].ToString();
                        string strGradeID = dt.Rows[i]["GradeID"].ToString();
                        string strConDesc = dt.Rows[i]["ConDesc"].ToString();
                        string strConDesc2 = dt.Rows[i]["ConDesc2"].ToString();
                        string strPositionNameTH = dt.Rows[i]["PositionNameTH"].ToString();
                        string strPositionNameEN = dt.Rows[i]["PositionNameEN"].ToString();
                        string strGradeDesc = dt.Rows[i]["GradeDesc"].ToString();
                        string strGradeDetail = dt.Rows[i]["GradeDetail"].ToString();

                        strTblDetail += "<tr> " +
                                        "     <td class=\"hidden\">" + strID + "</td> " +
                                        "     <td class=\"hidden\">" + strArchitecID + "</td> " +
                                        "     <td class=\"hidden\">" + strCompanyID + "</td> " +
                                        "     <td class=\"hidden\">" + strName + "</td> " +
                                        "     <td>" + strFirstName + "</td> " +
                                        "     <td>" + strLastName + "</td> " +
                                        "     <td>" + strNickName + "</td> " +
                                        "     <td class=\"hidden\">" + strPosition + "</td> " +
                                        "     <td class=\"hidden\">" + strAddress + "</td> " +
                                        "     <td>" + strPhone + "</td> " +
                                        "     <td>" + strMobile + "</td> " +
                                        "     <td>" + strEmail + "</td> " +
                                        "     <td class=\"hidden\">" + strStatusConID + "</td> " +
                                        "     <td class=\"hidden\">" + strCreatedDate + "</td> " +
                                        "     <td class=\"hidden\">" + strUpdatedDate + "</td> " +
                                        "     <td class=\"hidden\">" + strGradeID + "</td> " +
                                        "     <td class=\"hidden\">" + strConDesc + "</td> " +
                                        "     <td>" + strConDesc2 + "</td> " +
                                        "     <td>" + strPositionNameTH + "</td> " +
                                        "     <td class=\"hidden\">" + strPositionNameEN + "</td> " +
                                        "     <td>" + strGradeDesc + "</td> " +
                                        "     <td>" + strGradeDetail + "</td> " +
                                        "<td style=\"width: 20px; text-align: center;\"> " +
                                        "       <a href=\"../report/architectprofile.aspx\" title=\"Edit\"><i class=\"fa fa-pencil-square-o text-green\"></i></a></td> " +
                                        "<td style=\"width: 20px; text-align: center;\"> " +
                                        "       <a href=\"#\" title=\"Delete\"><i class=\"fa fa-trash text-red\"></i></a></td> " +
                                        "</tr>";
                    }

                    Session["datalist"] = strTblDetail;
                }
            }
            catch (Exception ex)
            {
                strMsgAlert = "<div class=\"alert alert-danger box-title txtLabel\"> " +
                             "      <strong>พบข้อผิดพลาด..!</strong> " + ex.Message + " " +
                             "</div>";
                return;
            }
        }
    }
}