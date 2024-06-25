using BL;
using Domains;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using TawredatProject.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class HighestSalesApiController : ControllerBase
    {
        SalesInvoiceProductService _salesInvoiceProductService;
        TawredatDbContext _context;
        public HighestSalesApiController(SalesInvoiceProductService salesInvoiceProductService, TawredatDbContext Context)
        {
            _salesInvoiceProductService = salesInvoiceProductService;
            _context = Context;
        }


        // GET: api/<HighestSalesApiController>
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            //  List<TbSalesInvoiceProduct> products = _salesInvoiceProductService.getAll();

            //var ProductIds = await _context.TbSalesInvoiceProducts.Select(x=> x.ProductId ).Distinct().ToListAsync();
            //var ListProduct = await _context.TbSalesInvoiceProducts.ToListAsync();

            //var GroupProduct = from product in ListProduct 
            //                   group product by product.ProductId into Newgroup
            //                   orderby Newgroup.Key
            //                   select Newgroup ;


            var categories = await _context.TbProductCategories.ToListAsync();
            List<OfferCategory> ListCategory = new List<OfferCategory>();
            // List<TbProduct> products = productService.getAll();

            foreach (var item in categories)
            {
                OfferCategory Category = new OfferCategory()
                {
                    ProductCategoryId = item.ProductCategoryId,
                    ProductCategoryName = item.ProductCategoryName,
                    ProductCategoryDescription = item.ProductCategoryDescription,
                    ProductCategoryImage = item.ProductCategoryImage,


                };


                // var products = await _context.TbOffers.Where(a => a.ProductCategoryId == Category.ProductCategoryId).ToListAsync();
                var products = await _context.TbSalesInvoiceProducts.Where(a => a.ProductCategoryId == Category.ProductCategoryId).ToListAsync();

                var GProduct = from product in products
                               group product by product.ProductId
                                   //SupplierId =    product.SupplierId,
                                   // Qu = Convert.ToDecimal(product.ProductQty).Sum() 
                                   // }
                                   into Newgroup
                               orderby Newgroup.Key
                               select Newgroup;

                List<OfferVM> productVMs = new List<OfferVM>();

                foreach (var cat in GProduct)
                {
                    foreach (var product in cat)
                    {
                        OfferVM productVM = new OfferVM()
                        {
                            ProductName = product.ProductName,
                            //PriceAfterOffer = product.PriceAfterOffer,
                            //PriceBeforeOffer = product.PriceBeforeOffer,
                            //ProductEvaluationNumber = product.ProductEvaluationNumber,
                            //ProductEvaluationStarts = product.ProductEvaluationStarts,
                            ProductImage = product.ProductImage,
                            SupplierName = product.SupplierName,

                        };

                        productVMs.Add(productVM);

                    }
                }

                foreach (var product in products)
                {


                }


                Category.products = productVMs;

                if (products.Count > 0)
                    ListCategory.Add(Category);


            }



            //foreach (var newGroup in GroupProduct)
            //{
            //    foreach (var prodc in newGroup)
            //    {

            //    }
            //}

            //foreach (var product in ListProduct)
            //{


            //}

            //foreach (var productId in ProductIds) 
            //{
            //    var Product = await _context.TbSupplierProducts.Where(x => x.ProductId.Equals(productId)).FirstOrDefaultAsync();


            //}
            return Ok();
        }

        // GET api/<HighestSalesApiController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<HighestSalesApiController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<HighestSalesApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<HighestSalesApiController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
