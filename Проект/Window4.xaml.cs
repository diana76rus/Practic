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
    /// Логика взаимодействия для Window4.xaml
    /// </summary>
    public partial class Window4 : Window
    {
        IQueryable<Выдача> global;
        public Window4(object id)
        {
            InitializeComponent();
            int x = (int)id;
            var выдача = Class1.GetContext().Выдача.Where(p => p.Номер_Выдачи == x);
            global = выдача;
            var books = from Книги in Class1.GetContext().Книги
                        select Книги.Название;
            var readers = from Читатели in Class1.GetContext().Читатели
                          select Читатели.Номер_читательского_билеты;
            var sdano = from Выдача in Class1.GetContext().Выдача
                        select Выдача.Сдано;
            boollConboBox.ItemsSource = books.ToList();
            riaderConboBox.ItemsSource = readers.ToList();
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
            dataExtraditionDatePicter.Text = выдача.First().Дата_выдачи.ToString();
            dataReturnDatePicker.Text = выдача.First().Дата_Возврата.ToString();
            sdanoDatePicker.Text = выдача.First().Сдано.ToString();
            riaderConboBox.Text = выдача.First().Номер_читательного_билета.ToString();
        }

        private void dobal_lable_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (dataExtraditionDatePicter.SelectedDate == null)
                errors.AppendLine("Укажите дату взятия книги в аренду");
            if (dataReturnDatePicker.SelectedDate == null)
                errors.AppendLine("Укажите дату возврата книги из аренды");
            if (sdanoDatePicker.SelectedDate == null)
                errors.AppendLine("Укажите дату сдачи книги из аренды");
            if (boollConboBox.SelectedItem == null)
                errors.AppendLine("Укажите название книги");
            if (riaderConboBox.SelectedItem == null)
                errors.AppendLine("Укажите номер читательского билета");
            {
                
                

            }
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
            }
            Class1.GetContext().Выдача.Add(new Выдача()
            {
                Номер_читательного_билета = Convert.ToInt32(riaderConboBox.SelectedItem),
                Дата_выдачи = Convert.ToDateTime(dataExtraditionDatePicter.Text),
                Дата_Возврата = Convert.ToDateTime(dataReturnDatePicker.Text),
                Сдано = Convert.ToDateTime(sdanoDatePicker.Text),
                Название_книги = boollConboBox.SelectedItem.ToString(),
                Срок = (int)(Convert.ToDateTime(dataReturnDatePicker.Text) - Convert.ToDateTime(dataExtraditionDatePicter.Text)).TotalDays,
                Код_книги = Class1.GetContext().Книги.Where(p => p.Название == boollConboBox.SelectedItem.ToString()).First().Код_книги
            });
            Class1.GetContext().SaveChanges();
            ((Window1)this.Owner).Upldate();
            MessageBox.Show("Данные успешно добавлены!");
            this.Close();
        }
    }
}
