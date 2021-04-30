# **Осуществление интеграции программных модулей **
## Оглавление 
---
1. [Основная информация](#Краткое-описание-программы)
2. [Программный продукт](#Программный-продукт)
---
## Основная информация
**Фамилия и имя студента:**  ```Клюева Диана Александровна```

**Название предметной области:** ```Библиотека```

[:arrow_up_small:Оглавление](#Оглавление)

---
## Программный продукт
**Краткое описание программы:**
```
Программный продукт предназначен для...
Программа выполняет следующие функции:
1.
2.
3....
```
**Пример кода программы:**
```c#
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


//Авторизация в системе по нажатию на кнопку(код в данном примере замените на свой)
private void button1_Click(object sender, EventArgs e)
{
    if(!String.IsNullOrEmpty(login.Text))
    {
        if(!String.IsNullOrEmpty(password.Text))
        {
            IQueryable<User> users = baseEntities.GetContext().
            User.Where(p => p.login == login.Text && p.password 
            == password.Text) as IQueryable<User>;
            if (users.Count() == 0) 
                MessageBox.Show("Неверный логин или пароль!");
            else MessageBox.Show("Успешно!");
         }
    }
}
```
[:arrow_up_small:Оглавление](#Оглавление)

---
