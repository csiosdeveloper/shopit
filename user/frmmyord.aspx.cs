﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected String getsts(char sts)
    {
        switch (sts)
        {
            case 'N':
                return "Pending";
            case 'D':
                return "Delivered";
            default:
                return "";
        }
    }
}