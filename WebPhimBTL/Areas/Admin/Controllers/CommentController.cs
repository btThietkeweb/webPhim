using Microsoft.AspNetCore.Mvc;

namespace WebPhimBTL.Areas.Admin.Controllers
{
    public class CommentController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
