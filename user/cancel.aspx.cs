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
        Session["prdcod"] = null;
        Session["qty"] = null;
        Session["retcod"] = null;
        Session["biladd"] = null;
        Session["cnt"] = null;
        Session["zipcod"] = null;
    }
}