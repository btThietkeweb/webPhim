using Microsoft.AspNetCore.Mvc;

namespace WebPhimBTL.Areas.Admin.Controllers
{
    public class FilmController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
