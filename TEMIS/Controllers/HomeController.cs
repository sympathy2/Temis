﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TEMIS.Controllers
{
    public class HomeController : Controller
    {
        
        public ActionResult Index()
        {
            /*if ("ok" != Session["start"])
            {
                return RedirectToAction("Index", "Login");
            }*/
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "TEMIS";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Pagina de contacto";

            return View();
        }
    }
}