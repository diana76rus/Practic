   M S B A M L   `   `   `  ����G  CПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ПроектПроект  5   	       Проект.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Проект     5   	     � Title$  Window1��5   	   $��476.786��6   $��965.381��6*   .��5	      � $��	0,0,-8,-2q�6    � ColumnDefinitions 5
   
   �� 5      $
��622* �6   �� 5      $
��291* �6   �� 5      $
��118* �6   �� 5      $	��15* �6   .+�5   
   �� -   5         ��Name$ 
name_label��5      $��Имя��6$   $
��Left=�62   $��49.5,24,0,0q�6M   $	��Top=�6b   $��93��6z    J� RenderTransformOrigin$ 1.034,-0.862&�6�   $��1��6�   �� 5   
   -   5        $ family_label��5      $��Фамилия��6&   $
��Left=�68   $��49.5,55,0,0q�6S   $	��Top=�6h   $��93��6�   $��25��6�   $��1��6�   �� 5   
   -   5         ��Name$ Exit_button��5      $��
Выйти��6&   $
��Left=�66   $��49.5,85,0,0q�6Q   $	��Top=�6f   $��80��6~   $��1��6�   �� 5   
   -   5         ��Name$ image_profiel��5      $
��Left=�6'   $	��122��6B   $��
485,24,0,0q�6O   $	��Top=�6c   $	��162��6{   $��2��6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��dataGrid��5   /      AutoGenerateColumns .  $
��Left=�6?   $	��213��6Z   $��
33,161,0,0q�6g   $	��Top=�6{   $	��771��6�   $��2��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Номер выдачи��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6;   �� *Код_Выдачи+6\     5      $ Дата выдачи��6%   	 6:   �� *Дата_выдачи+6\     5      $ Дата Возврата��6%   	 6<   �� *Дата_Возврата+6`     5      $ 
Сдано��6%   	 64   �� *
Сдано+6P     5      $ Срок��6%   	 63   �� *
Срок+6N     5      $! Название книги��6%   	 6=   �� *Название_книги+6b   4  .System.Windows.Controls.DataGridTemplateColumn  5      $( "Информация о книге��6)   
   CellTemplate
 5      �� 5      .R�5      �� -   5        $(��"Информация о книге��5   ?   
 � Tag 6%   �� *Код_книги+6x   5       5"        5#      $  Редактировать��6)   
 5$      �� 5%      .R�5&      �� -   5        $ ��Редактировать��5&   @    6%   �� *Код_Выдачи+6t   5'      5)        5*      $ Добавить��6)   
 5+      �� 5,      .R�5-      �� -   5        $��Добавить��5-   ?    6%   �� *Код_книги+6n   5.      50        51      $ Удалить��6)   
 52      �� 53      .R�54      �� -	   5        $��Удалить��54   ?    6%   �� *Код_книги+6k   55      57      59      �� 5:   
   $
��Left=�6   $	��100��60   $��
385,46,0,0q�6=   $	��Top=�6Q   $	��100��6i   �� 5;   
   -
   5        $( "Редактировать_profiel��5;      $ ��Редактировать��60   $
��Left=�6H   $��40.5,126,0,0q�6c   $	��Top=�6y   $	��102��6�   $��1��6�   5<      5>      