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
using System.Windows.Shapes;

namespace Проект
{
    /// <summary>
    /// Логика взаимодействия для Window3.xaml
    /// </summary>
    public partial class Window3 : Window
    {
        IQueryable<Выдача> global;
        public Window3(object id)
        {
            InitializeComponent();
            int x = (int)id;
            //DataContext = Выдача;
            var выдача = Class1.GetContext().Выдача.Where(p => p.Номер_Выдачи == x);
            global = выдача;
            var books = from Книги in Class1.GetContext().Книги
                        select Книги.Название;
            var readers = from Читатели in Class1.GetContext().Читатели
                          select Читатели.Номер_читательского_билеты;
            readerConboBox.ItemsSource = readers.ToList();
            boolConboBox.ItemsSource = books.ToList();
            //var v = Class1.GetContext().Выдача.Where(p => p.Код_книги == id).First();
            //readerConboBox.SelectedItem = v.Номер_читательного_билета;

            var massive = from Выдача in Class1.GetContext().Выдача
                          select new
                          {
                              Дата_выдачи = Выдача.Дата_выдачи,
                              Дата_Возврата = Выдача.Дата_Возврата,
                              Сдано = Выдача.Сдано,
                              Срок = Выдача.Срок,
                              Название_книги = Выдача.Название_книги,
                              Код_книги = Выдача.Код_книги,

                          };
            dataExtraditionDatePicter.Text = выдача.First().Дата_выдачи.ToString();
            dataReturnDatePicker.Text = выдача.First().Дата_Возврата.ToString();
            sdanonDatePicter.Text = выдача.First().Сдано.ToString();

        }

        private void edit_button_Click(object sender, RoutedEventArgs e)
        {
            global.First().Дата_выдачи = Convert.ToDateTime(dataExtraditionDatePicter.Text);
            global.First().Дата_Возврата = Convert.ToDateTime(dataReturnDatePicker.Text);
            global.First().Сдано = Convert.ToDateTime(dataReturnDatePicker.Text);
            global.First().Название_книги = boolConboBox.SelectedItem.ToString();
            global.First().Номер_читательного_билета = Convert.ToInt32(readerConboBox.SelectedItem);
            Class1.GetContext().SaveChanges();
            ((Window1)this.Owner).Upldate();
        }
    }
}
