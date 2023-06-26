using Microsoft.AspNetCore.Mvc;
using WebPhimBTL.Models;
using System.Diagnostics;

namespace WebPhimBTL.Controllers
{
    public class LogInController : Controller
    {
        DbphimContext db=new DbphimContext();
        [HttpGet]
        public IActionResult Login()
        {
            if(HttpContext.Session.GetString("TenTaiKhoan") == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        [HttpPost]
        public IActionResult Login(TaiKhoan taiKhoan)
        {
            if (HttpContext.Session.GetString("TenTaiKhoan") == null)
            {
                var u = db.TaiKhoans.Where(x => x.TenTaiKhoan.Equals(taiKhoan.TenTaiKhoan) && x.PassWord.Equals
                (taiKhoan.PassWord)).FirstOrDefault();
                if(u != null)
                {
                    HttpContext.Session.SetString("TenTaiKhoan", u.TenTaiKhoan.ToString());
                    return RedirectToAction("Index", "Home");
                }
            }
            return View();
        }
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Register(TaiKhoan taiKhoan)
        {
            if (ModelState.IsValid)
            {
                var check = db.TaiKhoans.FirstOrDefault(x => x.TenTaiKhoan == taiKhoan.TenTaiKhoan);
                if (check == null)
                {
                    db.TaiKhoans.Add(taiKhoan);
                    db.SaveChanges();
                    return RedirectToAction("LogIn");
                }
                else
                {
                    ViewBag.error = "Tên tài khoản đã được sử dụng!Vui lòng nhập 1 tài khoản khác";
                    return View();
                }
            }
            return View();
        }
        
    }
}
