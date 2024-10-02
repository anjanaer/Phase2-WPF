using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CounterProject
{
    public class CouterViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        private CounterModel _displayCounter = null;
        public CounterModel DisplayCounter//For display Counter
        {
            get
            {
                return _displayCounter;
            }
            set
            {
                _displayCounter = value; OnPropertyChanged(nameof(DisplayCounter));
            }
        }
        public ICommand Plus{ get; }//Bounding  the UI button with the PlusCommand
        public ICommand Minus{ get; }

        public CouterViewModel()
        {
            this.DisplayCounter = new CounterModel { Count = 0 };
            Plus = new RelayCommand(plus);
            Minus = new RelayCommand(minus);
        }
        public void plus()
        {
            DisplayCounter.Count++;
            OnPropertyChanged(nameof(DisplayCounter));
        }
        public void minus()
        { 
            DisplayCounter.Count--; 
            OnPropertyChanged(nameof(DisplayCounter));
        }

    }

}
