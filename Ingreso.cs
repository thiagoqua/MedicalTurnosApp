using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppEscritorio
{
    public partial class Ingreso : Form
    {
        public Ingreso()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)   //texto bienvenida
        {

        }

        private void button1_Click(object sender, EventArgs e)  //boton registro
        {
            this.Hide();
            Verificacion reg = new Verificacion();
            reg.Show();
            //this.Close();
            
        }

        private void button2_Click(object sender, EventArgs e)  //boton login
        {
            this.Hide();
            Login login = new Login();
            login.Show();
            //this.Close();
        }
    }
}
