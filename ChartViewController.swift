//
//  ChartViewController.swift
//  
//
//  Created by 陳永展 on 2019/6/8.
//

import UIKit
import Charts
import Firebase

class ChartViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var barChartView: BarChartView!
    @IBOutlet weak var pieChartView: PieChartView!
    @IBOutlet weak var PreChart: UITextField!
    
    @IBOutlet weak var ClickBtn: UIButton!
    var picker = UIPickerView()
     //產生picker
    var Charts = [String]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initPicker()
        ClickBtn.layer.cornerRadius = 30
        //picker裡的選項
        Charts = ["BMI","腰圍","基礎代謝率","燃脂運動心率","靜態能量消耗值"]
        //pickview內部的選項
        print(useraccount!.account_id!)
    }
    

    @IBAction func ClickStart(_ sender: Any) {
                 if  PreChart.text! == "BMI"  {
            print(BMIfirecount)
            print(BMIfirebases)
//            let dataPoint = Array(1...BMIfirebases.count)
            setbarChart(dataPoint:BMIfirecount,values:BMIfirebases)
            setPieChart(dataPoints: BMIfirecount, values: BMIfirebases)}
    }
   
    
    func initPicker(){
        //初始化Picker
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = .black
        //Pickerview內確認即取消按鈕顏色
        toolBar.sizeToFit()
        //Resizes and moves the receiver view so it just encloses its subviews.
        picker.delegate = self
        //The delegate for the picker view.
        picker.dataSource = self
        //The data source for the picker view.
        let doneButton = UIBarButtonItem(title: "確認", style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.doneAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "取消", style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.closeKeyboard))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        PreChart.inputAccessoryView = toolBar
        //讓textfiled的輸入方式改為PickerView
        PreChart.inputView = picker
        //加上手勢按鈕
        let tap = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    // 選項按下確定事件
    @objc func doneAction() {
        let row = picker.selectedRow(inComponent: 0)
        PreChart.text = Charts[row]
        self.view.endEditing(true)
    }

    @objc func closeKeyboard(){
        self.view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Charts.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Charts[row]
}
    
//--------------------------------------------------bar chart
    func setbarChart(dataPoint:[Int],values:[Double]){
        barChartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [BarChartDataEntry] = []
     
        var counter = 0.0
        
        //使用For迴圈,將每筆資料放入dataEntries陣列當中
        for i in 0..<dataPoint.count {
            counter += 1.0
            let dataEntry = BarChartDataEntry(x: counter , y: values[i])
            dataEntries.append(dataEntry)
        }
        let chartDataSet = BarChartDataSet(entries : dataEntries , label: "BMI BarChart")
        
        //建立BarChartData圖表實體存放BarChartDataSet資訊
        let chartData = BarChartData()
        chartData.addDataSet(chartDataSet)
        
        barChartView.data = chartData
        //顯示資料在圖表上
        chartDataSet.colors = ChartColorTemplates.colorful()
        //chartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        //barchart顏色調整
        barChartView.xAxis.labelPosition = .bottom
        //圖表Ｘ軸顯示在下方
        barChartView.animate(xAxisDuration: 1.0, yAxisDuration: 1.0)
        //barchart動畫速度 1.0代表圖表動畫於一秒內完成
    }
//--------------------------------------------------Pie chart
    
    func setPieChart(dataPoints: [Int], values: [Double]) {
        
        var dataEntries: [ChartDataEntry] = []
        var counter = 0.0
        
        for i in 0..<dataPoints.count {
            counter += 1.0
            let dataEntry = ChartDataEntry(x: counter , y: values[i])
            dataEntries.append(dataEntry)
        }
        
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: "BMI PieChart")
        
        let pieChartData = PieChartData()
        pieChartData.addDataSet(pieChartDataSet)
        pieChartView.data = pieChartData
        pieChartDataSet.colors = ChartColorTemplates.material()
       
        
        pieChartView.data = pieChartData
        
//        var colors: [UIColor] = []
//
//        for i in 0..<dataPoints.count {
//            let red = Double(arc4random_uniform(256))
//            let green = Double(arc4random_uniform(256))
//            let blue = Double(arc4random_uniform(256))
//
//            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
//            colors.append(color)
//        }
        
//        pieChartDataSet.colors = colors
    
    pieChartView.animate(xAxisDuration: 1.0, yAxisDuration: 1.0)
    
}
}
