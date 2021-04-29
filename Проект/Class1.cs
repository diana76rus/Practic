using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Проект
{
    class Class1
    {
        public static Entities8 _context;
        public static Entities8 GetContext()
        {
            if (_context == null)
                _context = new Entities8();
            return _context;
        }
    }
}
