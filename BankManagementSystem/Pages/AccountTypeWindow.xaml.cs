﻿using System;
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

namespace BankManagementSystem.Pages
{
    /// <summary>
    /// Interaction logic for AccountTypeWindow.xaml
    /// </summary>
    public partial class AccountTypeWindow : Window
    {
        public AccountTypeWindow()
        {
            InitializeComponent();
            this.DataContext = FormConfig.accountViewModel;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var savingsAccounts = FormConfig.accountViewModel.GetSavingsAccounts();
            var currentAccounts = FormConfig.accountViewModel.GetCurrentAccounts();

            grdSavingsAccounts.ItemsSource = savingsAccounts;
            grdCurrentAccounts.ItemsSource = currentAccounts;
        }
    }
}
