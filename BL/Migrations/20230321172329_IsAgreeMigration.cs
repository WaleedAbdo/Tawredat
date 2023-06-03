using Microsoft.EntityFrameworkCore.Migrations;

namespace BL.Migrations
{
    public partial class IsAgreeMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Type",
                table: "TbSlider",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsAgree",
                table: "AspNetUsers",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Type",
                table: "TbSlider");

            migrationBuilder.DropColumn(
                name: "IsAgree",
                table: "AspNetUsers");
        }
    }
}
