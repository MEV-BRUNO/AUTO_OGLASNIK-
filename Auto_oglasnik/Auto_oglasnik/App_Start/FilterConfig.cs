﻿using System.Web;
using System.Web.Mvc;

namespace Auto_oglasnik
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
