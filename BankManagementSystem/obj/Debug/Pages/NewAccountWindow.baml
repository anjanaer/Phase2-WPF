   M S B A M L   `   `   `  ����O  KBankManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BankManagementSystem.PagesBankManagementSystem.Pages  5   	   Q-clr-namespace:BankManagementSystem.ViewModelsBankManagementSystem.ViewModels  6@   1    +BankManagementSystem.Pages.NewAccountWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:BankManagementSystem.Pages     5   	   D
viewmodels-clr-namespace:BankManagementSystem.ViewModels     6@   -   5          � Title$  NewAccountWindow��5   	   $	��450��6"   $	��800��6/   .��5	      � $
��1200��6   $��0 10 0 0q�6    � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   .+�5   
   �� $��0��6    �� TextAlignment$ center=�6!   $��New Account��68   $��22(�5      $
��Bold"�6"   �� 5   
   $��1��6    �� Orientation$ Vertical=�6"   $��0 10 0 0q�69   .+�5      �� $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5      �� $	��150��6   $��Account Number��6(   $��Center=�6>   �� 5      -   5         ��Name$ txtAcNo��5         MyTextBoxStyle#��[  6+   ��6S   �� *NewAccount.AccountNumber+�� 5      -   5         ��Name$ errAc��5      
���  ��$��20 0 0 0q�6<   $
��bold"�6N   $��10(�6`   $��Center=�6n   5      �� 5      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5      �� $	��150��6   $
��Name��6(   �� 5      -   5        $ txtName��5      #��[  6+   ��6S   �� *NewAccount.Name+�� 5      -   5        $ errName��5      $y�Hidden=�6-   
���  ��$��20 0 0 0q�6R   $
��bold"�6d   $��10(�6v   $��Center=�6�   5      �� 5      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5      �� $	��150��6   $��Balance��6(   �� 5       #��[  6   ��6C   �� *NewAccount.Balance+5"      �� 5$      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5%      �� $	��150��6   $
��Type��6(   	� 5&      -   5         	�Name$ 
rdbCurrent��5&      $��current��62   $��	100 0 0 0q�6D    d� 	IsChecked 6W   �� *NewAccount.Type+   BooleanToVisibilityConverter �� 	Converter# [ 	 �� ConverterParameter$	 current��	� 5'      -   5        $ 
rdbSavings��5'      $��savings��62   $��10 0 0 0q�6D    6V   �� *NewAccount.Type+# [ $	 savings���� 5(      -   5        $ errType��5(      $y�Hidden=�6-   
���  ��$��20 0 0 0q�6R   $
��bold"�6d   $��10(�6v   $��Center=�6�   5)      �� 5+      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5,      �� $	��150��6   $��Email��6(   �� 5-      -	   5        $ txtEmail��5-      #��[  6,   ��6T   �� *NewAccount.Email+�� 5.      -
   5        $ errEmail��5.      $y�Hidden=�6.   
���  ��$��20 0 0 0q�6S   $
��bold"�6e   $��10(�6w   $��Center=�6�   5/      �� 51      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�52      �� $	��150��6   $��Phone��6(   �� 53      -   5        $ txtPhone��53      #��[  6-   ��6U   �� *NewAccount.PhoneNumber+�� 54      -   5        $ errPhone��54      $y�Hidden=�6.   
���  ��$��20 0 0 0q�6S   $
��bold"�6e   $��10(�6w   $��Center=�6�   55      �� 57      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�58      �� $	��150��6   $��Address��6)   �� 59      -   5        $ 
txtAddress��59      #��[  6.   ��6V   �� *NewAccount.Address+�� 5:      -   5        $ 
errAddress��5:      $y�Hidden=�60   
���  ��$��20 0 0 0q�6U   $
��bold"�6g   $��10(�6y   $��Center=�6�   5;      �� 5=      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5>      �� $	��150��6   $��IsActive��6(   �� 5?      $�� ��6   $��	100 0 0 0q�6&   {�.   69   �� *NewAccount.IsActive+6c   5@      �� 5B      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5C      �� $	��150��6   $��Interest Percentage��6(   �� 5D      -   5        
 ��Name$
 cmbInterest��5D   ]   $��	100 0 0 0q�6    �� Text 6.   �� *NewAccount.InterestPercentage+.@�5E      �� $��5��6#   �� 5F      $��10��6#   �� 5G      $��15��6#   5H      �� 5I      -   5        $ errInterest��5I      $y�Hidden=�61   
���  ��$��20 0 0 0q�6V   $
��bold"�6h   $��10(�6z   $��Center=�6�   5J      �� 5L      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5M      �� $	��150��6   $��Transaction Count��6(   �� 5N      #��[  6   $��	100 0 0 0q�6B   ��6U   �� *NewAccount.TransactionCount+5O      �� 5Q      $ 
Horizontal=�6   $��10 10 10 10q�62   .+�5R      �� $	��150��6   $��Last Transaction Date��6(   �� 5S      #��[  6   $��	100 0 0 0q�6B   ��6U   �� * NewAccount.LastTransactionDate+5T      5U      �� 5W   
   $��right=�6   $��2��6-   $	��200��6:   
����� �$
��Save��6X   
�������$
��bold"�6z   $��50��5X      $��
0 10 20 20q�5Y      ��5Z      �� *CreateCommand+5\      5]      