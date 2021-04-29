using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Проект
{
    /// <summary>
    /// Логика взаимодействия для Window2.xaml
    /// </summary>
    public partial class Window2 : Window
    {
        public int id_book;

        public Window2(object window)
        {
            InitializeComponent();
            id_book = (int)window;
            var result = Class1.GetContext().Книги.Where(p => p.Код_книги == id_book);
            id_book_textBlock.Text += id_book.ToString();
            name_book_textBlock.Text = result.First().Название;
            year_book_textBlock.Text += result.First().Год_издательства;
            razdel_textBlock.Text += result.First().Раздел;
            if (!String.IsNullOrEmpty(result.First().Изображение))
            {
                try
                {
                    image_book.Source = new BitmapImage(new Uri(System.IO.Path.GetFullPath("image/" + result.First().Изображение)));
                }
                catch (IOException ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void ixmen_button_Click(object sender, RoutedEventArgs e)
        {
            Window3 window = new Window3(id_book);
            window.Show();
            window.Owner = this.Owner;
            
        }
    }
}
    

