//
//  ViewController.swift
//  MotoTestApp
//
//  Created by 蔡尚諺 on 2021/12/17.
//

import UIKit

class MainVC: UIViewController {
    
    var questionNumber = 0 //題目序號
    var point = 0   //總分
    var questionsAll = [Question]() //總題目
    var questions = [Question]() //顯示的10個題目
    var question = Question()   //頁面當前的題目
    
    @IBOutlet weak var questionText: UITextView!
    @IBOutlet weak var answerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionText.layer.cornerRadius = questionText.bounds.width / 20
        
        title = "題目\(questionNumber + 1)"
        answerTableView.dataSource = self
        answerTableView.delegate = self
        initQuestion()
        getQuestion(index: questionNumber)
    }
    
    func getQuestion(index: Int) {
        question = questions[index]
        questionText.text = question.questionText
    }
    
    func initQuestion() {
        
        questionsAll.removeAll()
        questionsAll.append(Question(questionText: "為了趕時間，", answer: [Answer(answerText: "可以超速行駛", right: false),Answer(answerText: "不必遵守交通規則", right: false),Answer(answerText: "仍要依規定駕駛", right: true)]))
        questionsAll.append(Question(questionText: "防衛駕駛就是", answer: [Answer(answerText: "能儘力採取合理謹慎行為加以防止車禍發生", right: true),Answer(answerText: "優良駕駛技術", right: false),Answer(answerText: "良好生活習慣", right: false)]))
        questionsAll.append(Question(questionText: "行車速度愈快，則煞車距離愈長，速度若增加 1 倍，煞車距離即會增為", answer: [Answer(answerText: "2 倍", right: false),Answer(answerText: "4 倍", right: true),Answer(answerText: "8 倍", right: false)]))
        questionsAll.append(Question(questionText: "行車速度愈快，駕駛人的視野", answer: [Answer(answerText: "不變", right: false),Answer(answerText: "愈狹窄", right: true),Answer(answerText: "愈寬廣", right: false)]))
        questionsAll.append(Question(questionText: "夜間行駛，應使用燈光，如市區照明清楚時，", answer: [Answer(answerText: "戴有色眼鏡", right: false),Answer(answerText: "使用遠光燈", right: false),Answer(answerText: "使用近光燈", right: true)]))
        questionsAll.append(Question(questionText: "行駛在積水路段，應", answer: [Answer(answerText: "低速行駛", right: true),Answer(answerText: "快速通過", right: false),Answer(answerText: "多使用煞車", right: false)]))
        questionsAll.append(Question(questionText: "肇事後，", answer: [Answer(answerText: "保持現場，報警處理", right: true),Answer(answerText: "與我無關趕快駛離", right: false),Answer(answerText: "據理力爭，以脫責任", right: false)]))
        questionsAll.append(Question(questionText: "對肇事責任鑑定有異議，", answer: [Answer(answerText: "絕對服從", right: false),Answer(answerText: "向覆議機關申請覆議", right: true),Answer(answerText: "向警察機關提出告訴", right: false)]))
        questionsAll.append(Question(questionText: "變換車道時，為預防因自己的駕駛死角而發生危險，應", answer: [Answer(answerText: "提前顯示 方向燈，觀看照後鏡並擺頭查看", right: true),Answer(answerText: "緊盯前方注意路況", right: false),Answer(answerText: "與前方車輛保持安全距離", right: false)]))
//        questionsAll.append(Question(questionText: "下列何者最接近防衛駕駛觀念?", answer: [Answer(answerText: "即使自己遵守交通規則，還是必 須小心防範他人違規對自己造成傷害", right: true),Answer(answerText: "選購耐撞車種，並加強安全 配備", right: false),Answer(answerText: "騎在路中間，大家都看得到", right: false)]))
        questionsAll.append(Question(questionText: "行車安全距離的描述，下列何者錯誤?", answer: [Answer(answerText: "因機車車身小，故行駛其 後所保持的安全距離與同車速的汽車相比，可以再縮短一些因機車車身小，故行駛其 後所保持的安全距離與同車速的汽車相比，可以再縮短一些因機車車身小，故行駛其 後所保持的安全距離與同車速的汽車相比，可以再縮短一些因機車車身小，故行駛其 後所保持的安全距離與同車速的汽車相比，可以再縮短一些因機車車身小，故行駛其 後所保持的安全距離與同車速的汽車相比，可以再縮短一些", right: true),Answer(answerText: "即使停車時也該保持安全距離", right: false),Answer(answerText: "被超車後應該略為減速重新取得安全距離", right: false)]))
//        questionsAll.append(Question(questionText: "關於「購買安全帽注意事項」，下列何者錯誤?", answer: [Answer(answerText: "必須貼有標準檢驗 局之認證合格標籤", right: false),Answer(answerText: "安全帽受過強力撞擊後，若外觀沒有損壞則不必更換", right: true),Answer(answerText: "應選擇顏色鮮明或有反光材料之安全帽", right: false)]))
//        questionsAll.append(Question(questionText: "請問應如何選購機車安全帽較為適當?", answer: [Answer(answerText: "用工程用安全帽，又輕又透風", right: false),Answer(answerText: "選擇貼有標準檢驗局之認證合格標籤，比較有保障", right: true),Answer(answerText: "選深 色的，比較不容易髒", right: false)]))
//        questionsAll.append(Question(questionText: "關於內輪差的敘述，何者錯誤?", answer: [Answer(answerText: "車輛在轉彎時，後輪向內偏移", right: false),Answer(answerText: "軸距越長的車輛內輪差越大", right: false),Answer(answerText: "小客車沒有內輪差", right: true)]))
//        questionsAll.append(Question(questionText: "機車駕駛人行經路面積水路段時應如何操作較恰當?", answer: [Answer(answerText: "低速行駛", right: true),Answer(answerText: "多使用煞車", right: false),Answer(answerText: "快速通過", right: false)]))
//        questionsAll.append(Question(questionText: "下列何者不是機車駕駛人在交岔路口轉彎前必要做的動作?", answer: [Answer(answerText: "減速、禮讓", right: false),Answer(answerText: "開亮頭燈", right: true),Answer(answerText: "顯示方向燈", right: false)]))
//        questionsAll.append(Question(questionText: "騎機車時若發現煞車系統失靈，第一時間應如何作較為適當?", answer: [Answer(answerText: "開亮頭燈", right: false),Answer(answerText: "放鬆油門", right: true),Answer(answerText: "鳴按喇叭", right: false)]))
//        questionsAll.append(Question(questionText: "騎乘機車時，看見前方路邊有球滾動出來，應", answer: [Answer(answerText: "減速慢行，握穩把手", right: true),Answer(answerText: "臨時閃避，快速通過", right: false),Answer(answerText: "鳴按喇叭，騎至對向車道", right: false)]))
//        questionsAll.append(Question(questionText: "騎乘機車經過煙塵路段時，應該如何駕駛?", answer: [Answer(answerText: "行駛於大型車旁有助看清路況", right: false),Answer(answerText: "減速慢行", right: true),Answer(answerText: "快速通過", right: false)]))
//        questionsAll.append(Question(questionText: "夜間騎車，駕駛人不易發現的目標是", answer: [Answer(answerText: "移動中的行人", right: false),Answer(answerText: "站立的人物", right: true),Answer(answerText: "移動中的車輛", right: false)]))
        
        questions = getTenQuestions(questions: &questionsAll)
    }
    
    func getTenQuestions(questions: inout [Question]) -> [Question]{
        var tenQuestions = [Question]()
        //直接改變原本的
        questions.shuffle()
        tenQuestions.removeAll()
        tenQuestions = Array(questions.prefix(10))

        return tenQuestions
    }
    
    @IBSegueAction func toScorePage(_ coder: NSCoder) -> ResultViewController? {
        
        let resultVC = ResultViewController(coder: coder)
        resultVC?.point = self.point
        point = 0
        return resultVC
    }
}

//TableView實作
extension MainVC: UITableViewDelegate, UITableViewDataSource{
    
    //一個section中有多少cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return question.answer.count
    }
    
    //cell的內容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "AnswerTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! AnswerTableViewCell
        let answer = question.answer[indexPath.row]
        cell.answerTextView.text = answer.answerText
        //cell設定圓角
        cell.layer.cornerRadius = cell.bounds.width / 20
        return cell
        
    }
    
    //選取以後要做的事情
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let answer = question.answer[indexPath.row]
        questionNumber += 1
        //累計分數
        if answer.right {
            point += 10
        }
        //去下一頁
        if questionNumber == 10 {
            let identifier = "scoreSegue"
            questionNumber = 0  //歸零題目號碼
            initQuestion() //重新放入題目（為了打亂答案順序）
            getQuestion(index: questionNumber ) //重新取得10題
            title = "題目\(questionNumber + 1)"
            performSegue(withIdentifier: identifier, sender: nil)
        }else{
           getQuestion(index: questionNumber)
            title = "題目\(questionNumber + 1)"
        }
        
        tableView.reloadData()
    }
    
}



