using Microsoft.AspNetCore.Mvc;

namespace WebPhimBTL.Areas.Admin.Controllers
{
    public class LogInController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
