//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Проект
{
    using System;
    using System.Collections.Generic;
    
    public partial class Книги
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Книги()
        {
            this.Авторы_книги = new HashSet<Авторы_книги>();
            this.Выдача = new HashSet<Выдача>();
        }
    
        public int Код_книги { get; set; }
        public string Название { get; set; }
        public int Раздел { get; set; }
        public int Издательство { get; set; }
        public int Год_издательства { get; set; }
        public string Место_Хранения { get; set; }
        public string Изображение { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Авторы_книги> Авторы_книги { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Выдача> Выдача { get; set; }
        public virtual Издательство Издательство1 { get; set; }
        public virtual Разделы Разделы { get; set; }
    }
}
