#pragma checksum "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "588eddf2b8cacda28a9e652dbcdacbc150f093ae"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Stock_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/Stock/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"588eddf2b8cacda28a9e652dbcdacbc150f093ae", @"/Areas/Admin/Views/Stock/Index.cshtml")]
    public class Areas_Admin_Views_Stock_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
  
    ViewData["Title"] = "Stock Manage";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<h1>Index</h1>

<p>
    <a href=""/admin/stock/create"">Create New</a>
</p>
<table class=""table"">
    <thead>
        <tr>
            <th>
                Store
            </th>
            <th>
                Product
            </th>
            <th>
                Quantity
            </th>
            <th></th>
        </tr>
    </thead>
    <tbody>
");
#nullable restore
#line 27 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
         foreach (var item in ViewBag.listStock)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr>\r\n                <td>\r\n                    <b>");
#nullable restore
#line 31 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                  Write(item.StoreId);

#line default
#line hidden
#nullable disable
            WriteLiteral("</b> | ");
#nullable restore
#line 31 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                                      Write(ViewBag.listStore[item.StoreId]);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    <b>");
#nullable restore
#line 34 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                  Write(item.ProductId);

#line default
#line hidden
#nullable disable
            WriteLiteral("</b> | ");
#nullable restore
#line 34 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                                        Write(ViewBag.listProduct[item.ProductId]);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
#nullable restore
#line 37 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
               Write(item.Quantity);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    <a");
            BeginWriteAttribute("href", " href=\"", 930, "\"", 1002, 4);
            WriteAttributeValue("", 937, "/admin/stock/edit?storeid=", 937, 26, true);
#nullable restore
#line 40 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 963, item.StoreId, 963, 13, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 976, "&productid=", 976, 11, true);
#nullable restore
#line 40 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 987, item.ProductId, 987, 15, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Edit</a> | \r\n                    <a");
            BeginWriteAttribute("href", " href=\"", 1039, "\"", 1113, 4);
            WriteAttributeValue("", 1046, "/admin/stock/delete?storeid=", 1046, 28, true);
#nullable restore
#line 41 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 1074, item.StoreId, 1074, 13, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1087, "&productid=", 1087, 11, true);
#nullable restore
#line 41 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 1098, item.ProductId, 1098, 15, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Delete</a>\r\n                </td>\r\n            </tr>\r\n");
#nullable restore
#line 44 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </tbody>\r\n</table>\r\n\r\n<nav>\r\n");
#nullable restore
#line 49 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
      
        var pre = ViewBag.page - 1;
        var next = ViewBag.page + 1;

    

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 55 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
     if (ViewBag.numberPage > 1)
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <ul class=\"pagination pagination-rounded mb-0\">\r\n            <li class=\"page-item\">\r\n                <a class=\"page-link\"");
            BeginWriteAttribute("href", " href=\"", 1477, "\"", 1512, 2);
            WriteAttributeValue("", 1484, "/admin/stock/index?page=", 1484, 24, true);
#nullable restore
#line 59 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 1508, pre, 1508, 4, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" aria-label=\"Previous\">\r\n                    <span aria-hidden=\"true\">&laquo;</span>\r\n                    <span class=\"sr-only\">Previous</span>\r\n                </a>\r\n            </li>\r\n");
#nullable restore
#line 64 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
             for (var i = 1; i < ViewBag.numberPage; i++)
            {
                

#line default
#line hidden
#nullable disable
#nullable restore
#line 66 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                 if (i == ViewBag.page)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <li class=\"page-item active\"><a class=\"page-link\"");
            BeginWriteAttribute("href", " href=\"", 1902, "\"", 1935, 2);
            WriteAttributeValue("", 1909, "/admin/stock/index?page=", 1909, 24, true);
#nullable restore
#line 68 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 1933, i, 1933, 2, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 68 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                                                                                                   Write(i);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 69 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                }
                else
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <li class=\"page-item\"><a class=\"page-link\"");
            BeginWriteAttribute("href", " href=\"", 2072, "\"", 2105, 2);
            WriteAttributeValue("", 2079, "/admin/stock/index?page=", 2079, 24, true);
#nullable restore
#line 72 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 2103, i, 2103, 2, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 72 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                                                                                            Write(i);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 73 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                }

#line default
#line hidden
#nullable disable
#nullable restore
#line 73 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
                 

            }

#line default
#line hidden
#nullable disable
            WriteLiteral("            <li class=\"page-item\">\r\n                <a class=\"page-link\"");
            BeginWriteAttribute("href", " href=\"", 2228, "\"", 2264, 2);
            WriteAttributeValue("", 2235, "/admin/stock/index?page=", 2235, 24, true);
#nullable restore
#line 77 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
WriteAttributeValue("", 2259, next, 2259, 5, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" aria-label=\"Next\">\r\n                    <span aria-hidden=\"true\">&raquo;</span>\r\n                    <span class=\"sr-only\">Next</span>\r\n                </a>\r\n            </li>\r\n        </ul>\r\n");
#nullable restore
#line 83 "D:\ki_5_2022,may\PRN211\project\Flower_shop_Project\ShopFlower\ShopFlower\Areas\Admin\Views\Stock\Index.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("</nav>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
