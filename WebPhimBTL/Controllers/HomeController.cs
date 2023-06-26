using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebPhimBTL.Models;

namespace WebPhimBTL.Controllers
{
    public class HomeController : Controller
    {
        DbphimContext db=new DbphimContext();
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult Index()
        {
            return View();
        }
        [Route("thongtintaikhoan")]
        public IActionResult ThongTinTaiKhoan(string tenTaiKhoan)
        {
            var taiKhoan = db.TaiKhoans.FirstOrDefault(x => x.TenTaiKhoan == tenTaiKhoan);
            return View(taiKhoan);
        }

        [Route("SuaThongTin")]
        [HttpGet]
        public IActionResult SuaThongTin(string tenTaiKhoan)
        {
            var taiKhoan = db.TaiKhoans.Where(x => x.TenTaiKhoan == tenTaiKhoan).FirstOrDefault();
            //var taiKhoan = db.TaiKhoans.Find(tenTaiKhoan);
            return View(taiKhoan);
        }
        [Route("SuaThongTin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SuaThongTin(TaiKhoan taiKhoan)
        {
            if (ModelState.IsValid)
            {
                db.Entry(taiKhoan).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("ThongTinTaiKhoan", "Home",taiKhoan.TenTaiKhoan);
                //"ThongTinTaiKhoan", "Home", taiKhoan.TenTaiKhoan
            }
            return View(taiKhoan);
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        
    }
}