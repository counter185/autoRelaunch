using System;
using System.Windows;
using System.Diagnostics;
using System.ComponentModel;
using System.Threading;
using Microsoft.Win32;
using System.IO;

namespace autoRelaunch
{
    public partial class MainWindow : Window
    {
        public volatile bool isRunning;
        public volatile bool isProcessRunning;
        public volatile string ProcessToCheck;
        public volatile string FilePath;
        public volatile int DelayMS;
        public volatile bool initialStart;

        public const string versionName = "1.0";

        protected override void OnClosing(CancelEventArgs e) {
            e.Cancel = true;
            Process.GetCurrentProcess().Kill();
        }

        public MainWindow()
        {
            InitializeComponent();
            appwindow.Title = String.Concat("AutoRelaunch ", versionName);
        }

        private void Stealth_Click(object sender, RoutedEventArgs e)
        {
            if (isRunning)
            {
                this.Hide();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (isRunning)
            {
                isRunning = false;
                delay.IsEnabled = true;
                waitForLaunch.IsEnabled = true;
                toCheck.IsEnabled = true;
                PathToFile.IsEnabled = true;
                OpenFD.IsEnabled = true;
            }
            else
            {
                isRunning = true;
                if (waitForLaunch.IsChecked == true)
                {
                    initialStart = true;
                }
                else {
                    initialStart = false;
                }
                toCheck.IsEnabled = false;
                PathToFile.IsEnabled = false;
                OpenFD.IsEnabled = false;
                delay.IsEnabled = false;
                ProcessToCheck = toCheck.Text;
                FilePath = PathToFile.Text;
                waitForLaunch.IsEnabled = false;
                if (IsStringInt32(delay.Text))
                {
                    DelayMS = Int32.Parse(delay.Text) * 1000;
                }
                else {
                    DelayMS = 2000;
                }

                Thread newThread = new Thread(Exec);
                newThread.Start();
            }

        }

        public void Exec()
        { 
            do
            {
                Process[] processes = Process.GetProcessesByName(ProcessToCheck);
                if (processes.Length == 0)
                {
                    isProcessRunning = false;
                    if (initialStart==false) {
                        Thread.Sleep(DelayMS);
                        Process.Start(FilePath);
                    }
                }
                else
                {
                    isProcessRunning = true;
                    if (initialStart) {
                        initialStart = false;
                    }
                }

            } while (isRunning);
        }

        private void OpenFD_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ProcPathFD = new OpenFileDialog
            {
                Filter = "exe files (*.exe)|*.exe",
                FilterIndex = 1,
                RestoreDirectory = true,
            };
            ProcPathFD.ShowDialog();
            PathToFile.Text = ProcPathFD.FileName;
            toCheck.Text = Path.GetFileNameWithoutExtension(ProcPathFD.FileName);
        }

        public bool IsStringInt32(string b) {
            return Int32.TryParse(b, out int m);
        }

    }
}