   M S B A M L   `   `   `  ����G  CComicHoarder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ComicHoarder.ViewModelsComicHoarder.ViewModels  5   	   | xSystem.Windows.Controls.DataVisualization.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting 5   	       ComicHoarder.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   7local%clr-namespace:ComicHoarder.ViewModels     5   	   �chartingToolkit{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	     � Title$  
MainWindow��5   	   $	��750��6   $
��1200��6)    � DataContext 5      3   -ComicHoarder.ViewModels.ComicHoarderViewModel  5   
   .��5
      � 
������� � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6    � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   .+�5   
   � -   5        $��PublisherGrid��5      $��0��6$   $��0��61   
���   �$��1,1,1,1q�6T    5      �� 5      �� 5      $
��30px �6    .+�5      � $��0��6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgPublishers��5      $��stretch=�61   $��2,2,2,0q�6O   $��Stretch=�6`      AutoGenerateColumns .    
IsReadOnly .     CanUserAddRows .  ��6�   �� *
Publishers+ �� Mode$ TwoWay=�	 �� SelectedIndex	 6�   �� *SelectedPublisher+$ TwoWay=�5      � 5      $��1��6    5      �� 5      $��100px �6'   �� 5      $��3* �6'   �� 5       $��1* �6'   .+�5"      �� $��
Publishers��6   $��0��6-   
�������6=   �� 5#      -   5        
 ��Name$
 btnAddPublisher��5#      $	��Add��62   $��2��6@   $��Stretch=�6P   $��0,0,2,0q�6n   $��Center=�6   ��6�   �� *ShowAddPublisherWindowCommand+5$      5%      � 5&   
   -   5        $��
VolumeGrid��5&      $��0��6!   $��1��6.   
���   �$��1,1,1,1q�6Q    5'      �� 5(      �� 5)      $
��30px �6    .+�5+      � $��0��6   .+�5,        -   5        $ dgVolume��5,      $��stretch=�6-   $��2,2,2,0q�6K   $��Stretch=�6\    .  .   .  ��6�   �� *	Volumes+$ TwoWay=�	 6�   �� *SelectedVolume+$ TwoWay=�5-      � 5.      $��1��6    5/      �� 50      $��100px �6'   �� 51      $��2* �6'   �� 52      $��1* �6'   �� 53      $��1* �6'   .+�55      �� $��Volumes��6   $��0��6*   
�������6:   �� 56      -   5        $
 btnAddVolume��56      $	��Add��6/   $��3��6=   $��Stretch=�6M   $��0,0,2,0q�6k   $��Center=�6|   ��6�   �� *AddVolumesCommand+57      58      � 59   
   -   5        $��	IssueGrid��59      $��1��6    $��0��6-   
���   �$��1,1,1,1q�6P    5:      �� 5;      �� 5<      $
��30px �6    .+�5>      � $��0��6   .+�5?        -   5        $ dgIssue��5?      $��stretch=�6,   $��2,2,2,0q�6J   $��Stretch=�6[    .  .   .  ��6�   �� *Issues+$ TwoWay=�	 6�   �� *SelectedIssue+$ TwoWay=�5@      � 5A      $��1��6    5B      �� 5C      $��100px �6'   �� 5D      $��2* �6'   �� 5E      $��1* �6'   �� 5F      $��1* �6'   .+�5H      �� $��Issues��6   $��0��6)   
�������69   �� 5I      -	   5        $
 btnFindIssues��5I      $
��Find��60   $��2��6?   $��Stretch=�6O   $��0,0,2,0q�6m   $��Center=�6~   ��6�   �� *FindIssuesCommand+�� 5J      -
   5        $
 btnAddIssues��5J      $	��Add��6/   $��3��6=   $��Stretch=�6M   $��0,0,2,0q�6k   $��Center=�6|   ��6�   �� *AddIssuesCommand+5K      5L      � 5M   
   -   5        $��MissingIssueGrid��5M      $��1��6'   $��1��64   
���   �$��1,1,1,1q�6W    5N      �� 5O      �� 5P      $
��30px �6    .+�5R      � $��0��6   .+�5S        -   5        $ dgMissingIssues��5S      $��stretch=�64   $��2,2,2,0q�6R   $��Stretch=�6c    .  .   .  ��6�   �� *MissingIssues+$ TwoWay=�	 6�   �� *SelectedMissingIssues+$ TwoWay=�5T      � 5U      $��1��6    5V      �� 5W      $��100px �6'   �� 5X      $��1* �6'   �� 5Y      $��5* �6'   �� 5Z      $��1* �6'   �� 5[      $��1* �6'   �� 5\      $��1* �6'   .+�5^      �� $��Missing Issues��6   $��0��61   
�������6A   �� 5_      -   5         ��Name$ txtFindMissingIssues��5_      $��2��6`   $��Stretch=�6p   $��0,0,2,0q�6�   $��Center=�6�   ��68   ��  �� Path$
 Path�$ TwoWay=�6�   �� 5`      -   5        $
 btnBrowseMissingIssues��5`      $��Browse��69   $��3��6J   $��Stretch=�6Z   $��0,0,2,0q�6x   $��Center=�6�   ��6�   �� *BrowseMissingIssuesCommand+�� 5a      -   5        $
 btnCollectMissingIssues��5a      $��Collect��6:   $��4��6L   $��Stretch=�6\   $��0,0,2,0q�6z   $��Center=�6�   ��6�   �� *CollectMissingIssuesCommand+�� 5b      -   5        $
 btnExportMissingIssues��5b      $��Export��69   $��5��6J   $��Stretch=�6Z   $��0,0,2,0q�6x   $��Center=�6�   ��6�   �� *ExportMissingIssuesCommand+5c      5d      � 5e   
   -   5        $��DashboardGrid��5e      $��2��6$   $��0��61   
���   �$��1,1,1,1q�6T    5f      �� 5g      $��1* �6#   �� 5h      $��1* �6#   .+�5j      >  8System.Windows.Controls.DataVisualization.Charting.Chart  -   5        $��pieChart��5j   4   $��0��6$      Title$" Issues By Selected Publisher��6D   $��Stretch=�6i   $��Stretch=�6�   $��2,2,2,2q�6�   
�������   Series. 5k      B  <System.Windows.Controls.DataVisualization.Charting.PieSeries  -   5          Name$ piechart��5k   ,   H  BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries   IsSelectionEnabled . $��Stretch=�6�   $��2,2,2,2q�6�   $��Stretch=�6�      DependentValueBinding 6>   �� *Value+   IndependentValueBinding 6f   �� *Key+   ItemsSource 6�   �� *PieChartRatios+6�   5l        5m      -   5        $��barChart��5m   4   $��1��6$   $ Issues By Publisher��6D   $��Stretch=�6`   $��Stretch=�6~   $��2,2,2,2q�6�   
�������. 5n      E  ?System.Windows.Controls.DataVisualization.Charting.ColumnSeries  -   5          Name$ columnchart��5n   /    . $��Stretch=�6�   $��2,2,2,2q�6�   $��Stretch=�6   6D   �� *Value+ 6l   �� *Key+ 6�   �� *BarChartRatios+6  5o      5p      � 5q   
   -   5        $��MessageGrid��5q      $��2��6"   $��2��6/   
���   �$��1,1,1,1q�6R   .+�5r      �� -   5        $ txtMessages��5r      $��Stretch=�6W   $��2,2,2,2q�6u   $��Stretch=�6�    �� TextWrapping$
 Wrap=�6�    �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�6�   ��6+   �� $ Messages�$ OneWay=�6�   5s      5t      5u      