using System;
using System.Collections.Generic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Проект
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (!String.IsNullOrEmpty(log.Text)) //Проверяем, что текст в поле не является пустым
            {
                if (!String.IsNullOrEmpty(pass.Text))
                {
                    IQueryable<Авторизация> Авторизация_List = Class1.GetContext().Авторизация.Where(p => p.Логин == log.Text && p.Пароль == pass.Text);
                    if (Авторизация_List.Count() == 1)
                        MessageBox.Show($"Добро пожаловать, {Авторизация_List.First().Логин}");

                Window1 window = new Window1(Авторизация_List.First());
                 window.Owner = this;
                window.Show();
                 this.Hide();
               }
                else MessageBox.Show("Неверный логин или пароль!");
                
                }
            }
        }
    }

