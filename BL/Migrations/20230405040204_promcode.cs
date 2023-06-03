using Microsoft.EntityFrameworkCore.Migrations;

namespace BL.Migrations
{
    public partial class promcode : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Promocode",
                table: "TbSalesInvoice",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Promocode",
                table: "TbSalesInvoice");
        }
    }
}
