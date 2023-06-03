using Microsoft.EntityFrameworkCore.Migrations;

namespace BL.Migrations
{
    public partial class MyFirstMigrat : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "DeliveryValue",
                table: "TbSalesInvoice",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "DiscValue",
                table: "TbSalesInvoice",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TaxValue",
                table: "TbSalesInvoice",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TotalAfterTax",
                table: "TbSalesInvoice",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TotalInvoiceAfter",
                table: "TbSalesInvoice",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DeliveryValue",
                table: "TbSalesInvoice");

            migrationBuilder.DropColumn(
                name: "DiscValue",
                table: "TbSalesInvoice");

            migrationBuilder.DropColumn(
                name: "TaxValue",
                table: "TbSalesInvoice");

            migrationBuilder.DropColumn(
                name: "TotalAfterTax",
                table: "TbSalesInvoice");

            migrationBuilder.DropColumn(
                name: "TotalInvoiceAfter",
                table: "TbSalesInvoice");
        }
    }
}
