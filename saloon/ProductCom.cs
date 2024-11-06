using System;
using System.Windows.Forms;

namespace saloon
{
    public partial class ProductCom : UserControl
    {
        public int ProductId { get; private set; }
        public string ProductName { get; private set; }
        public decimal PriceIdr { get; private set; }

        public event EventHandler<(int productId, string productName, int quantity, decimal priceIdr)> ProductCountChanged;

        public ProductCom()
        {
            InitializeComponent();
            ProductCountLbl.Text = "0";
            ProductMinBtn.Enabled = false;
        }

        private void ProductMaxBtn_Click(object sender, EventArgs e)
        {
            int currentCount = int.Parse(ProductCountLbl.Text);
            currentCount += 1;
            ProductCountLbl.Text = currentCount.ToString();

            ProductMinBtn.Enabled = true;

            // Trigger event with updated count
            ProductCountChanged?.Invoke(this, (ProductId, ProductName, currentCount, PriceIdr));
        }

        private void ProductMinBtn_Click(object sender, EventArgs e)
        {
            int currentCount = int.Parse(ProductCountLbl.Text);
            if (currentCount > 0)
            {
                currentCount -= 1;
                ProductCountLbl.Text = currentCount.ToString();

                ProductMinBtn.Enabled = currentCount > 0;

                // Trigger event with updated count
                ProductCountChanged?.Invoke(this, (ProductId, ProductName, currentCount, PriceIdr));
            }
        }

        public void SetProductDetails(int id, string productName, string description, decimal priceIdr)
        {
            ProductId = id;
            ProductName = productName;
            PriceIdr = priceIdr;

            ProductNameLbl.Text = productName;
            DescProductLbl.Text = description;
            PriceLbl.Text = "Rp. " + priceIdr.ToString("N2");
        }

        public void ResetProductCount()
        {
            ProductCountLbl.Text = "0";
            ProductMinBtn.Enabled = false;

            // Trigger event with count zero to update the cart display
            ProductCountChanged?.Invoke(this, (ProductId, ProductName, 0, PriceIdr));
        }
    }
}
