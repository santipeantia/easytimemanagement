﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sendmail.aspx.cs" Inherits="SaleSpec.pages.report.sendmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Password Verification</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

    <!-- Google Font -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
    <link href="https://fonts.googleapis.com/css?family=Athiti" rel="stylesheet" />

    <style>
        .txtLabel {
            font-family: 'Athiti', sans-serif;
            font-size: 14px;
            font-weight: normal;
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>

<body class="txtLabel" style="background: #f2f9fe; padding-bottom: 50px">
    <form id="form1" runat="server">

        <div style="max-width: 600px; margin: auto; padding: 22px 50px 22px 0; box-sizing: border-box">
            <img src="http://203.154.45.40/salespec/image/Logo-ampel-Big.png" width="200" />
        </div>
        <div style="background-color: #fff; max-width: 600px; box-sizing: border-box; padding-bottom: 35px; margin: auto;">
            <table width="100%" style="border-collapse: collapse; background-color: #FFFFFF; max-width: 600px;" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td style="text-align: center; padding-top: 11px; padding-bottom: 20px;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="border-collapse: collapse; background-color: #FFFFFF;" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td style="text-align: left; color: #00a0e9; font-size: 22px; padding: 0px 30px;">Hi&nbsp;{strEmail},
                        </td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="border-collapse: collapse; background-color: #FFFFFF;" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td style="text-align: left; color: #333; font-size: 16px; line-height: 20px; padding: 30px 30px 30px 30px;">
                            <span>According as your request some report in the sales spec system. we need to confirm as your criteria requested as below.</span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="border-collapse: collapse; background-color: #FFFFFF; max-width: 600px;" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 250px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Reprot Type :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strRepType}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Reprot Option :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strOptName}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                From Date :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strFrom} &nbsp;&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;&nbsp; {strEnd}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Port Request :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strPort}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Quantity :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strQty} &nbsp;&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;&nbsp; {strQtyTo}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Keyword :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strSearch}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Requested by :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strFullName}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Requested Date :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strRequestDate}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Expiration Date :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                Tuesday, 2020-03-31 09:34:22 AM
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                OTP Password :
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 20px; color: rgba(250, 92, 18, 0.767); padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                {strVerifyCode}
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td style="line-height: 22px; font-size: 14px; color: #666; padding-right: 30px; padding-left: 30px; width: 100px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                &nbsp;&nbsp;
                            </p>
                        </td>
                        <td style="line-height: 22px; font-size: 20px; color: rgba(250, 92, 18, 0.767); padding-right: 30px; padding-left: 30px;">
                            <p style="padding: 0px 0px 10px 0px; margin: 0;">
                                <a href="http://203.154.45.40/salespec/pages/report/verify-password-projectstatus.aspx" class="btn btn-success">DOWNLOAD</a>
                            </p>
                        </td>
                    </tr>

                </tbody>
            </table>


            <table width="100%" style="border-collapse: collapse; margin: auto" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td style="text-align: left; padding-left: 30px; color: #666; font-size: 16px; line-height: 20px; display: flex; padding-top: 20px; padding-bottom: 10px;">Have a good day..!
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; color: #666; padding: 0px 30px 0px 30px;">For additional help,
                            <br>
                            contact our&nbsp; +662 312 4300 Ext. 190-193
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--!doctype-->
        <table width="100%" style="border-collapse: collapse; margin: auto" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td style="text-align: center; color: #444; font-size: 16px; line-height: 20px; display: flex; justify-content: center; padding-top: 35px; padding-bottom: 10px; font-size: 14px;">
                        <div style="margin: 0 auto">
                            <span style="margin-right: 15px;">
                                <a style="text-decoration: none;"
                                    href="#">
                                    <span style="color: rgb(68, 68, 68); font-family: Microsoft YaHei; font-size: 14px; text-align: center; white-space: normal; margin-right: 15px;"></span>
                                </a><a style="text-decoration: none;"
                                    href="#">
                                    <img style="border-width: 0px; border-style: initial;"
                                        src="http://203.154.45.40/salespec/image/f0929.png" />&nbsp;
                                </a>
                            </span><span style="color: rgb(68, 68, 68); font-family: Microsoft YaHei; font-size: 14px; text-align: center; white-space: normal; margin-right: 15px;">
                                <a style="text-decoration: none;"
                                    href="#">
                                    <img style="border-width: 0px; border-style: initial;"
                                        src="http://203.154.45.40/salespec/image/i0929.png" />&nbsp;
                                </a>
                            </span><span style="color: rgb(68, 68, 68); font-family: Microsoft YaHei; font-size: 14px; text-align: center; white-space: normal; margin-right: 15px;">
                                <a style="text-decoration: none;"
                                    href="#">
                                    <img style="border-width: 0px; border-style: initial;"
                                        src="http://203.154.45.40/salespec/image/t0929.png" />&nbsp;
                                </a>
                            </span><span style="color: rgb(68, 68, 68); font-family: Microsoft YaHei; font-size: 14px; text-align: center; white-space: normal; margin-right: 15px;">
                                <a style="text-decoration: none;"
                                    href="#">
                                    <img style="border-width: 0px; border-style: initial;"
                                        src="http://203.154.45.40/salespec/image/g0929.png" />
                                </a>
                            </span>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="100%" style="border-collapse: collapse; margin: auto; max-width: 600px; box-sizing: border-box" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td style="text-align: left; color: #999; padding: 0px 30px 0px 30px; font-size: 14px;">This message was sent from a notification-only email address that does not accept incoming email.
                    Please do not reply to this message.
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; color: #999; padding: 10px 30px 00px 30px; font-size: 14px;">Copyright ©2020 IT of Ampelite Group Company Limited. All rights reserved.
                    </td>
                </tr>
            </tbody>
        </table>

    </form>
</body>
</html>
