using BL;
using Domains;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using TawredatProject.Models;

namespace TawredatProject.Areas.Admin.Controllers
{

    [Area("Admin")]
    public class MostSearchedCompaniesController : Controller
    {
        SupplierService supplierService;
        SupplierCategoryService supplierCategoryService;
        public MostSearchedCompaniesController(SupplierService SupplierService, 
            SupplierCategoryService SupplierCategoryService)
        {
            supplierService = SupplierService;
            supplierCategoryService = SupplierCategoryService;
        }
        public IActionResult Index()
        {
            List<TbSupplier> products = supplierService.getAll();
            List<SupplierVM> Listproduct = new List<SupplierVM>();

            foreach (var product in products)
            {
                SupplierVM productVM = new SupplierVM()
                {
                    SupplierId = product.SupplierId,
                    SupplierName = product.SupplierName,
                    // SupplierImage = DomainUrl + "Uploads/" + product.SupplierImage,
                   // SupplierCityId = product.SupplierCityId,
                    SupplierCityName = product.SupplierCityName,
                    CustomersNumber = product.CustomersNumber,
                   // SupplierCategoryName = supplierCategoryService.getAll().FirstOrDefault(a => a.SupplierCategoryId == product.SupplierCategoryId).SupplierCategoryName,
                    //  SupplierEvaluationNumber = product.SupplierEvaluationNumber,
                    //SupplierEvaluationStars = product.SupplierEvaluationStars,
                   // SupplierCategoryId = product.SupplierCategoryId,
                };

                Listproduct.Add(productVM);
            }
           
            return View(Listproduct);
        }
    }
}
