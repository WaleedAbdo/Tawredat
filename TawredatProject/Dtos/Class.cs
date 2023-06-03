using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System;

namespace TawredatProject.Dtos
{
    public class SupplierDto
    {
        public Guid SupplierId { get; set; }
        public string SupplierName { get; set; }
        public string SupplierAddress { get; set; }
        public string SupplierPhone { get; set; }
        public List<CategoryDto> Categories { get; set; }
    }

    public class CategoryDto
    {
        public Guid ProductCategoryId { get; set; }
        public string ProductCategoryName { get; set; }
        public List<ProductDto> Products { get; set; }
    }

    public class ProductDto
    {
        public Guid ProductId { get; set; }
        public string ProductName { get; set; }
    }

    //public SupplierDto GetSupplier(Guid supplierId)
    //{
    //    var result = new SupplierDto();

    //    using (var context = new MyDbContext())
    //    {
    //        var query = from s in context.TbSupplier
    //                    join sp in context.TbSupplierProduct on s.SupplierId equals sp.SupplierId into supplierProducts
    //                    from sup in supplierProducts.DefaultIfEmpty()
    //                    join c in context.TbProductCategory on
    //                                    sup.ProductCategoryId equals c.ProductCategoryId into supplierCategories
    //                    from category in supplierCategories.DefaultIfEmpty()
    //                    join p in context.TbProduct on sup.ProductId equals p.ProductId into categoryProducts
    //                    from product in categoryProducts.DefaultIfEmpty()
    //                    where s.SupplierId == supplierId
    //                    select new
    //                    {
    //                        s.SupplierId,
    //                        s.SupplierName,
    //                        s.SupplierAddress,
    //                        s.SupplierPhone,
    //                        CategoryId = category != null ? category.ProductCategoryId : null,
    //                        CategoryName = category != null ? category.ProductCategoryName : null,
    //                        ProductId = product != null ? product.ProductId : null,
    //                        ProductName = product != null ? product.ProductName : null
    //                    };

    //        var suppliers = query.GroupBy(x => new { x.SupplierId, x.SupplierName, x.SupplierAddress, x.SupplierPhone })
    //                             .ToList();

    //        foreach (var supplier in suppliers)
    //        {
    //            var supplierDto = new SupplierDto
    //            {
    //                SupplierId = supplier.Key.SupplierId,
    //                SupplierName = supplier.Key.SupplierName,
    //                SupplierAddress = supplier.Key.SupplierAddress,
    //                SupplierPhone = supplier.Key.SupplierPhone,
    //                Categories = supplier.GroupBy(x => new { x.CategoryId, x.CategoryName })
    //                                    .Where(x => x.Key.CategoryId != null)
    //                                    .Select(x => new CategoryDto
    //                                    {
    //                                        ProductCategoryId = x.Key.CategoryId.Value,
    //                                        ProductCategoryName = x.Key.CategoryName,
    //                                        Products = x.Where(y => y.ProductId != null)
    //                                                   .Select(y => new ProductDto
    //                                                   {
    //                                                       ProductId = y.ProductId.Value,
    //                                                       ProductName = y.ProductName
    //                                                   })
    //                                                   .ToList()
    //                                    })
    //                                    .ToList()
    //            };

    //            result = supplierDto;
    //        }
    //    }

    //    return result;


    //}
}
