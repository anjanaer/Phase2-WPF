   M S B A M L   `   `   `  ����O  KBankManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BankManagementSystem.PagesBankManagementSystem.Pages  5   	   Q-clr-namespace:BankManagementSystem.ViewModelsBankManagementSystem.ViewModels  6@   2    ,BankManagementSystem.Pages.EditAccountWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:BankManagementSystem.Pages     5   	   D
viewmodels-clr-namespace:BankManagementSystem.ViewModels     6@   -   5          � Title$  EditAccountWindow��5   	   $	��450��6#   $	��800��60   .��5	      � $
��1200��6   $��0 10 0 0q�6    � ColumnDefinitions 5
   
   �� 5      $
��149* �6   �� 5      $
��651* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   .+�5   
   �� $��0��6    �� TextAlignment$ center=�6!   $��Edit Account��68   $��2��6L   $��	0,0,0,328q�6`   $��2��6s   �� 5   
   $��1��6    �� Orientation$ Vertical=�6"   $��2��69   .+�5      �� $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5      �� $	��150��6   $��Account Number��6(   $��Center=�6>   �� 5         MyTextBoxStyle#��[  6   {�.  ��6C   �� *SelectedAccount.AccountNumber+6r   5      �� 5      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5      �� $	��150��6   $
��Name��6(   $��Center=�64   �� 5      #��[  6   {�.  ��6C   �� *SelectedAccount.Name+6i   5      �� 5      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5       �� $	��150��6   $��Balance��6(   $��Center=�67   �� 5!      #��[  6   {�.  ��6C   �� *SelectedAccount.Balance+6l   5"      �� 5$      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5%      �� $	��150��6   $
��Type��6(   $��Center=�64   	� 5&      $��current��6   $��	100 0 0 0q�60    d� 	IsChecked 6C   �� *SelectedAccount.Type+   BooleanToVisibilityConverter �� 	Converter# [  �� ConverterParameter$ current��	� 5'      $��savings��6   $��10 0 0 0q�60    6B   �� *SelectedAccount.Type+# [ $ savings��5(      �� 5*      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5+      �� $	��150��6   $��Email��6(   $��Center=�65   �� 5,      #��[  6   {�.  ��6C   �� *SelectedAccount.Email+6j   5-      �� 5/      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�50      �� $	��150��6   $��Phone��6(   $��Center=�65   �� 51      #��[  6   {�.  ��6C   �� *SelectedAccount.Email+6j   52      �� 54      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�55      �� $	��150��6   $��Address��6(   $��Center=�67   �� 56      #��[  6   ��6C   �� *SelectedAccount.Address+57      �� 59      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5:      �� $	��150��6   $��IsActive��6(   $��Center=�68   �� 5;      $�� ��6   $��	100 0 0 0q�6&   {�.   6K   �� *SelectedAccount.IsActive+5<      �� 5>      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5?      �� $	��150��6   $��Interest Percentage��6(   $��Center=�6C   �� 5@      $��	100 0 0 0q�6   {�.   �� Text 6@   �� *NewAccount.InterestPercentage+.@�5A      �� $��5%��6#   �� 5B      $	��10%��6#   �� 5C      $	��15%��6#   5D      5E      �� 5G      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5H      �� $	��150��6   $��Transaction Count��6(   $��Center=�6A   �� 5I      #��[  6   {�.  ��6T   �� *" SelectedAccount.TransactionCount+5J      �� 5L      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5M      �� $	��150��6   $��Last Transaction Date��6(   $��Center=�6E   �� 5N      #��[  6   {�.  ��6T   �� *%#SelectedAccount.LastTransactionDate+5O      5P      �� 5R   
   $��Right=�6   $��2��6-   $	��200��6:   
����� �$
��Save��6X   
�������$
��bold"�6z   $��50��5S   	   $��
0 10 20 20q�5T   	   $��1��5U   3   ��6   �� *UpdateCommand+63   5W      5X      