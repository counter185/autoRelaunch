   M S B A M L   `   `   `  ����G  CautoRelaunch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:autoRelaunchautoRelaunch  5   	       autoRelaunch.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :xctk)http://schemas.xceed.com/wpf/xaml/toolkit     5   	   ,localclr-namespace:autoRelaunch     5   	   -   5          �Name$  	appwindow��5   	    � Title$ AutoRelaunch��5	   	   $��189.488��6   $��466.381��6/    � SizeToContent$ Width=�6?    � 
ResizeMode$ NoResize=�6U    � WindowStyle$ ThreeDBorderWindow=�6k   .��5
      � $��0,0,-1,0q�6    � ColumnDefinitions 5   
   �� 5      �� 5      $��0* �6   .+�5   
   �� -   5         ��Name$ toCheck��5      $
��Left=�6#   $��23��6>   $��
215,14,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��cmd��6r   $	��Top=�6}   $	��229��6�   $��Center=�6�   �� 5   
   -   5        $ 
PathToFile��5      $
��Left=�6&   $��23��6A   $��
215,40,0,0q�6M   $
 Wrap=�6a   $��cmd.exe��6u   $	��Top=�6�   $	��207��6�   $��Center=�6�   �� 5   
   $+��%Process to check (without extension!)��6   $
��Left=�6@   $��	10,10,0,0q�6[   $	��Top=�6n   $	��205��6�   $��26��6�   �� 5   
   $��Path to file��6   $
��Left=�6'   $��	10,36,0,0q�6B   $	��Top=�6U   $��99��6m   $��26��6x   �� 5   
   -   5         ��Name$ RunBtn��5      $��Activate��6!   $
��Left=�64   $��
10,122,0,0q�6O   $	��Top=�6c   $��90��6{   $��28��6�   6�   �� 5   
   -   5        $ 
HideWindow��5      $,��&Hide this window (only when activated)��6%   $
��Left=�6V   $��194,122,0,0q�6q   $	��Top=�6�   $	��257��6�   $��28��6�   6�   �� 5   
   -   5        $ OpenFD��5      $	��...��6!   $
��Left=�6/   $��
422,40,0,0q�6J   $	��Top=�6^   $��22��6v   $��23��6�   6�   �� 5   
   $'��!Delay between next relaunch (sec)��6   $
��Left=�6<   $��	10,67,0,0q�6W   $	��Top=�6j   $	��205��6�   �� 5   
   -   5        	 ��Name$	 waitForLaunch��5      $"��Wait for the next app launch��6*   $
��Left=�6Q   $��	10,98,0,0q�6l   $	��Top=�6   $	��353��6�   $��17��6�   $��10(�6�   
 J� IsHitTestVisible
 . $��Center=�6�   �� 5   
   -   5        $ delay��5      $
��Left=�6!   $��25��6<   $��
215,67,0,0q�6H   $
 Wrap=�6\   $��2��6p   $	��Top=�6y   $	��124��6�   $��Center=�6�   5      5      