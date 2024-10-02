using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static FullNameProject.PersonViewModel;
using System.Windows;

namespace FullNameProject
{
    public static class FullNameConfig
    {
        //forms 
        public static Window FrmFullName { get; set; }

        public static Window FrmEditFullName { get; set; }
        //view model
        public static PersonViewModel VueModel { get; set; }

        static FullNameConfig()
        {
            VueModel = new PersonViewModel();
            FrmFullName= new FullNameWindow();
            FrmEditFullName= new EditFullNameWindow();

        }
    }
}
