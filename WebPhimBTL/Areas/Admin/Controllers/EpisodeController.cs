using Microsoft.AspNetCore.Mvc;

namespace WebPhimBTL.Areas.Admin.Controllers
{
    public class EpisodeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
