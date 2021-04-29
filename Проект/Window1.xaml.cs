using Microsoft.Win32;
using System;
using System.ComponentModel;
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
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
        }
        Выдача v;

        private Авторизация librarrian;
        public Window1(Авторизация librarrian)
        {
            InitializeComponent();
            this.librarrian = librarrian;
            name_label.Content = librarrian.Имя;
            family_label.Content = librarrian.Фамилия;
            if (!String.IsNullOrEmpty(librarrian.Изображение))
            {
                try
                {
                    image_profiel.Source = new BitmapImage(new Uri(System.IO.Path.GetFullPath($"image/{librarrian.Изображение}")));
                }
                catch (IOException ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            var massive = from Выдача in Class1.GetContext().Выдача
                          select new
                          {
                              Код_Выдачи = Выдача.Номер_Выдачи,
                              Дата_выдачи = Выдача.Дата_выдачи,
                              Дата_Возврата = Выдача.Дата_Возврата,
                              Сдано = Выдача.Сдано,
                              Срок = Выдача.Срок,
                              Название_книги = Выдача.Название_книги,
                              Код_книги = Выдача.Код_книги,
                             
                              
                          };
            dataGrid.ItemsSource = massive.ToList();

        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Редактировать_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image Files|*.png;*.jpg;*.jpeg";
            if (openFileDialog.ShowDialog() == true)
            {
                try
                {
                    File.Copy(openFileDialog.FileName, "image/" + System.IO.Path.GetFileName(openFileDialog.FileName), true);
                    librarrian.Изображение = System.IO.Path.GetFileName(openFileDialog.FileName);
                    Class1.GetContext().SaveChanges();
                    Class1.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                    try
                    {
                        image_profiel.Source = new BitmapImage(new Uri(System.IO.Path.GetFullPath("image/" + librarrian.Изображение)));

                    }
                    catch (IOException exc)
                    {
                        MessageBox.Show(exc.Message);
                    }
                }
                catch (IOException exc)
                {
                   // MessageBox.Show(exc.Message);

                  
                }
            }
           
        }
        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            Button but = sender as Button;
            Window2 window = new Window2(but.Tag);
            window.Show();
        }
        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            Button but = sender as Button;
            Window3 window = new Window3(but.Tag);
            window.Show();
            window.Owner = this;
        }
        public void Upldate()
        {
            Class1.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            var massive = from Выдача in Class1.GetContext().Выдача
                          select new
                          {
                              Код_Выдачи = Выдача.Номер_Выдачи,
                              Дата_выдачи = Выдача.Дата_выдачи,
                              Дата_Возврата = Выдача.Дата_Возврата,
                              Сдано = Выдача.Сдано,
                              Срок = Выдача.Срок,
                              Название_книги = Выдача.Название_книги,
                              Код_книги = Выдача.Код_книги,
                              
                              
                          };
            dataGrid.ItemsSource = massive.ToList();


        }
        private void Button_Click_6(object sender, RoutedEventArgs e)
        {
            Button but = sender as Button;
            Window4 window = new Window4(but.Tag);
            window.Show();
            window.Owner = this;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MessageBoxResult messageBoxResult = MessageBox.Show("Вы действительно  хотите удалить запись?", "Удаление записи", MessageBoxButton.YesNo);
            if(messageBoxResult == MessageBoxResult.Yes)
            {
                int id = Convert.ToInt32(TypeDescriptor.GetProperties(dataGrid.SelectedItem)[0].GetValue(dataGrid.SelectedItem));
                Выдача vidaza = Class1.GetContext().Выдача.Where(p => p.Номер_Выдачи == id).First();
                Class1.GetContext().Выдача.Remove(vidaza);
                Class1.GetContext().SaveChanges();
                Upldate();

            }
        }
    }
}
