using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CounterProject
{
    static class CounterConfig
    {
        public static CouterViewModel ViewModel{ get; set; }
        //public static CounterWindow FrmDisplayCounter { get; set; }
        static CounterConfig()
        {
            ViewModel = new CouterViewModel();
            //FrmDisplayCounter = new CounterWindow();
        }
        
    }
}
