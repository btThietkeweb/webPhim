using Microsoft.AspNetCore.Mvc;

namespace WebPhimBTL.Controllers
{
    public class EpisodeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
