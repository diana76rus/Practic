   M S B A M L   `   `   `  ����G  CПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ПроектПроект  5   	       Проект.Window3   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Проект     5   	     � Title$  Window3��5   	   $��398.177��6   $��500.113��6*   .��5	      � $��0,0,2,4q�6   .+�5
   
   �� -   5         ��Name$ edit_xag_lable1��5
      $-��'Редактировать аренду��6)   $
��Left=�6H   $��	62,26,0,0q�6c   $	��Top=�6v   $
��Bold"�6�   $��20(�6�   �� 5   
   -   5        $ dataExtradition_lable1��5      $��Дата выдачи��60   $
��Left=�6F   $��	20,75,0,0q�6a   $	��Top=�6t   �� 5   
   -   5        $ dateReturnDate_lable1��5      $��Дата возврата��6/   $
��Left=�6G   $��
25,123,0,0q�6b   $	��Top=�6v   �� 5   
   -   5        $ book_lable1��5      $!��Название книги��6%   $
��Left=�6>   $��
25,202,0,0q�6Y   $	��Top=�6m   �� 5   
   -   5        $ reader_lable1��5      $8��2Номер читательского билета��6'   $
��Left=�6L   $��
20,239,0,0q�6g   $	��Top=�6{   �� 5   
   -   5         ��Name$ edit_button��5      $��Изменить��6&   $
��Left=�69   $��
31,272,0,0q�6T   $	��Top=�6h   $��75��6�   6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dataExtraditionDatePicter��5      $
��Left=�6U   $��
127,77,0,0q�6p   $	��Top=�6�    J� RenderTransformOrigin$ 0.981,0.533&�6�      Text 68   �� *Дата_выдачи+6�     5   
   -   5        $ dataReturnDatePicker��5      $
��Left=�6S   $��127,125,0,0q�6n   $	��Top=�6�    63   �� *Дата_возврата+6�   �� 5   
   -	   5         ��Name$ boolConboBox��5      $
��Left=�6Q   $��141,202,0,0q�6l   $	��Top=�6�   $	��120��6�    �� SelectedItem 6)   �� *Название_книги+6�   �� 5   
   -
   5        $ readerConboBox��5      $
��Left=�6`   $��202,239,0,0q�6{   $	��Top=�6�    � DataContext$ readers��6�   $	��120��6�    6+   �� *42Номер_читательского_билета+6�   �� 5   
   -   5        $ sdano_button��5      $��
Сдано��6'   $
��Left=�68   $��
31,160,0,0q�6S   $	��Top=�6g     5   
   -   5        $ sdanonDatePicter��5      $
��Left=�6F   $��107,162,0,0q�6a   $	��Top=�6v    6/   �� *
Сдано+6v   5      5      