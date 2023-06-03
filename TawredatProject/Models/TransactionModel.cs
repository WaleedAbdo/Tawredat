namespace TawredatProject.Models
{
    public class TransactionModel
    {
        public int NumOfTransaction { get; set; }
        public decimal Total_tax { get; set; }
        public decimal TotalWithTax { get; set; }
        public decimal Profit { get; set; }
        public decimal TotalCost { get; set; }
        public string YearMonth { get; set; }
        public string Month { get; set; }
        public string Year { get; set; }
    }
}
