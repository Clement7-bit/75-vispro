﻿namespace saloon
{
    partial class ProductCom
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            pictureBox1 = new PictureBox();
            ProductMinBtn = new Button();
            ProductNameLbl = new Label();
            DescProductLbl = new Label();
            ProductMaxBtn = new Button();
            ProductCountLbl = new Label();
            PriceLbl = new Label();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // pictureBox1
            // 
            pictureBox1.BorderStyle = BorderStyle.FixedSingle;
            pictureBox1.Image = Properties.Resources.pngtree_no_image_available_icon_flatvector_illustration_pic_design_profile_vector_png_image_40966566;
            pictureBox1.Location = new Point(1, 3);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(170, 129);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            // 
            // ProductMinBtn
            // 
            ProductMinBtn.Location = new Point(34, 203);
            ProductMinBtn.Name = "ProductMinBtn";
            ProductMinBtn.Size = new Size(30, 23);
            ProductMinBtn.TabIndex = 1;
            ProductMinBtn.Text = "-";
            ProductMinBtn.UseVisualStyleBackColor = true;
            ProductMinBtn.Click += ProductMinBtn_Click;
            // 
            // ProductNameLbl
            // 
            ProductNameLbl.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            ProductNameLbl.Location = new Point(3, 135);
            ProductNameLbl.Name = "ProductNameLbl";
            ProductNameLbl.Size = new Size(170, 19);
            ProductNameLbl.TabIndex = 2;
            ProductNameLbl.Text = "Product Name";
            ProductNameLbl.TextAlign = ContentAlignment.TopCenter;
            // 
            // DescProductLbl
            // 
            DescProductLbl.Location = new Point(1, 168);
            DescProductLbl.Name = "DescProductLbl";
            DescProductLbl.Size = new Size(170, 29);
            DescProductLbl.TabIndex = 3;
            DescProductLbl.Text = "Description";
            DescProductLbl.TextAlign = ContentAlignment.TopCenter;
            // 
            // ProductMaxBtn
            // 
            ProductMaxBtn.Location = new Point(114, 203);
            ProductMaxBtn.Name = "ProductMaxBtn";
            ProductMaxBtn.Size = new Size(30, 23);
            ProductMaxBtn.TabIndex = 4;
            ProductMaxBtn.Text = "+";
            ProductMaxBtn.UseVisualStyleBackColor = true;
            ProductMaxBtn.Click += ProductMaxBtn_Click;
            // 
            // ProductCountLbl
            // 
            ProductCountLbl.Location = new Point(70, 203);
            ProductCountLbl.Name = "ProductCountLbl";
            ProductCountLbl.Size = new Size(38, 23);
            ProductCountLbl.TabIndex = 5;
            ProductCountLbl.Text = "1";
            ProductCountLbl.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // PriceLbl
            // 
            PriceLbl.Location = new Point(1, 149);
            PriceLbl.Name = "PriceLbl";
            PriceLbl.Size = new Size(170, 16);
            PriceLbl.TabIndex = 6;
            PriceLbl.Text = "Description";
            PriceLbl.TextAlign = ContentAlignment.TopCenter;
            // 
            // ProductCom
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            BorderStyle = BorderStyle.FixedSingle;
            Controls.Add(PriceLbl);
            Controls.Add(ProductCountLbl);
            Controls.Add(ProductMaxBtn);
            Controls.Add(DescProductLbl);
            Controls.Add(ProductNameLbl);
            Controls.Add(ProductMinBtn);
            Controls.Add(pictureBox1);
            Name = "ProductCom";
            Size = new Size(174, 235);
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private PictureBox pictureBox1;
        private Button ProductMinBtn;
        private Label ProductNameLbl;
        private Label DescProductLbl;
        private Button ProductMaxBtn;
        private Label ProductCountLbl;
        private Label PriceLbl;
    }
}
