using Microsoft.AspNetCore.Mvc;

namespace WebPhimBTL.Controllers
{
    public class FilmController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
