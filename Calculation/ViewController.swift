//
//  ViewController.swift
//  Calculation
//
//  Created by JHJG on 2016. 3. 13..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //이것을 func에서 바로 참조하는 방법은 ?
    @IBOutlet weak var result: UILabel!
    
    //이전 데이터선언
    var beforeData,nowData : String?
    
    //.이 있는지 확인하는 변수와, 계산을 이어갈때 글자가 겹치지 않게 도와준다.
    var dotExist,signFlag : Bool?
    
    //부호를 저장할 변수
    var sign :String?
    
    //계산할 Double형 변수
    var doubleBeforeData,doubleNowData : Double?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 일반적인 Array 인스턴스 생성
        
        //dot이 몇 번 찍혔는지 알려줄 변수
        dotExist = false;
        
        //부호로 계산을 이어가는지 찍어주는 플래그
        signFlag = false;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AcAction(sender: AnyObject) {
        //초기화
        beforeData = nil
        nowData = nil
        dotExist = false;
        sign = nil
        result.text = ""
        
    }
    @IBAction func MarkAction(sender: AnyObject) {
        //부호 바꿔줌.
        if let resultMark = result.text{
            let currentMark = resultMark.characters.first
            if currentMark == "-"{
                let replaced = (resultMark as NSString).stringByReplacingOccurrencesOfString("-", withString: "")
                result.text = replaced
            }else{
                result.text = "-"+resultMark
            }
        }
        
    }
    @IBAction func PercentAction(sender: AnyObject) {
        
        if let percent = result.text{
            if let percentN = Double(percent){
                result.text = String(percentN / 100)
            }else if percent == ""{
                return;
            }else{
                
            }
        }
        
    }
    @IBAction func DivisionAction(sender: AnyObject) {
        //text가 비어있지 않을때만
        if let _ =  result.text{
            
            //dotExist을 초기화
            dotExist = false;
            
            //이전데이터가 있을때
            if let _ = nowData{
                //원래 있던것을 beforeData로 옮기고 현재 창에 있는것을 nowData변수에 저장
                beforeData = nowData
                nowData = result.text
                
                //옵셔널 풀면서 현재 데이터를 int형으로 변환
                if let beforeTemp = beforeData{
                    doubleBeforeData = Double(beforeTemp)
                }
                if let nowTemp = nowData{
                    doubleNowData = Double(nowTemp)
                }
                
                //옵셔널 형 다 풀어주고 부호에 따른 계산
                if let beforeTemp = doubleBeforeData{
                    if let nowTemp = doubleNowData{
                        if sign == "+"{
                            result.text = String(beforeTemp+nowTemp)
                        }else if sign == "-"{
                            result.text = String(beforeTemp-nowTemp)
                        }else if sign == "*"{
                            result.text = String(beforeTemp*nowTemp)
                        }else if sign == "/"{
                            result.text = String(beforeTemp/nowTemp)
                        }else{
                            
                        }
                    }
                }
                signFlag = true;
            }else{//이전데이터가 없을때
                //현재 데이터에 result Text에 저장된 값을 넣고
                nowData = result.text
                //result Text 비우기
                result.text = ""
            }
            //부호 저장
            sign = "/"
            
            
        }
    }
    @IBAction func MultipleAction(sender: AnyObject) {
        //text가 비어있지 않을때만
        if let _ =  result.text{
            
            //dotExist을 초기화
            dotExist = false;
            
            
            //이전데이터가 있을때
            if let _ = nowData{
                //원래 있던것을 beforeData로 옮기고 현재 창에 있는것을 nowData변수에 저장
                beforeData = nowData
                nowData = result.text
                
                //옵셔널 풀면서 현재 데이터를 int형으로 변환
                if let beforeTemp = beforeData{
                    doubleBeforeData = Double(beforeTemp)
                }
                if let nowTemp = nowData{
                    doubleNowData = Double(nowTemp)
                }
                
                //옵셔널 형 다 풀어주고 부호에 따른 계산
                if let beforeTemp = doubleBeforeData{
                    if let nowTemp = doubleNowData{
                        if sign == "+"{
                            result.text = String(beforeTemp+nowTemp)
                        }else if sign == "-"{
                            result.text = String(beforeTemp-nowTemp)
                        }else if sign == "*"{
                            result.text = String(beforeTemp*nowTemp)
                        }else if sign == "/"{
                            result.text = String(beforeTemp/nowTemp)
                        }else{
                            
                        }
                    }
                }
                signFlag = true;
            }else{//이전데이터가 없을때
                //현재 데이터에 result Text에 저장된 값을 넣고
                nowData = result.text
                //result Text 비우기
                result.text = ""
            }
            //부호 저장
            sign = "*"
            
            
        }
    }
    @IBAction func MinusAction(sender: AnyObject) {
        //text가 비어있지 않을때만
        if let _ =  result.text{
            
            //dotExist을 초기화
            dotExist = false;
            
            
            //이전데이터가 있을때
            if let _ = nowData{
                //원래 있던것을 beforeData로 옮기고 현재 창에 있는것을 nowData변수에 저장
                beforeData = nowData
                nowData = result.text
                
                //옵셔널 풀면서 현재 데이터를 int형으로 변환
                if let beforeTemp = beforeData{
                    doubleBeforeData = Double(beforeTemp)
                }
                if let nowTemp = nowData{
                    doubleNowData = Double(nowTemp)
                }
                
                //옵셔널 형 다 풀어주고 부호에 따른 계산
                if let beforeTemp = doubleBeforeData{
                    if let nowTemp = doubleNowData{
                        if sign == "+"{
                            result.text = String(beforeTemp+nowTemp)
                        }else if sign == "-"{
                            result.text = String(beforeTemp-nowTemp)
                        }else if sign == "*"{
                            result.text = String(beforeTemp*nowTemp)
                        }else if sign == "/"{
                            result.text = String(beforeTemp/nowTemp)
                        }else{
                            
                        }
                    }
                }
                signFlag = true;
            }else{//이전데이터가 없을때
                //현재 데이터에 result Text에 저장된 값을 넣고
                nowData = result.text
                //result Text 비우기
                result.text = ""
            }
            //부호 저장
            sign = "-"
            
            
        }
    }
    @IBAction func PlusAction(sender: AnyObject) {
        //text가 비어있지 않을때만
        if let _ =  result.text{
            
            //dotExist을 초기화
            dotExist = false;
            
            
            //이전데이터가 있을때
            if let _ = nowData{
                //원래 있던것을 beforeData로 옮기고 현재 창에 있는것을 nowData변수에 저장
                beforeData = nowData
                nowData = result.text
                
                //옵셔널 풀면서 현재 데이터를 int형으로 변환
                if let beforeTemp = beforeData{
                    doubleBeforeData = Double(beforeTemp)
                }
                if let nowTemp = nowData{
                    doubleNowData = Double(nowTemp)
                }
                
                //옵셔널 형 다 풀어주고 부호에 따른 계산
                if let beforeTemp = doubleBeforeData{
                    if let nowTemp = doubleNowData{
                        if sign == "+"{
                            result.text = String(beforeTemp+nowTemp)
                        }else if sign == "-"{
                            result.text = String(beforeTemp-nowTemp)
                        }else if sign == "*"{
                            result.text = String(beforeTemp*nowTemp)
                        }else if sign == "/"{
                            result.text = String(beforeTemp/nowTemp)
                        }else{
                            
                        }
                    }
                }
                signFlag = true;
            }else{//이전데이터가 없을때
                //현재 데이터에 result Text에 저장된 값을 넣고
                nowData = result.text
                //result Text 비우기
                result.text = ""
            }
            //부호 저장
            sign = "+"
            
            
        }
        
    }
    @IBAction func EqualAction(sender: AnyObject) {
        
        //원래 있던것을 beforeData로 옮기고 현재 창에 있는것을 nowData변수에 저장
        beforeData = nowData
        nowData = result.text
        
        //옵셔널 풀면서 현재 데이터를 int형으로 변환
        if let beforeTemp = beforeData{
            doubleBeforeData = Double(beforeTemp)
        }
        if let nowTemp = nowData{
            doubleNowData = Double(nowTemp)
        }
        
        //옵셔널 형 다 풀어주고 부호에 따른 계산
        if let beforeTemp = doubleBeforeData{
            if let nowTemp = doubleNowData{
                if sign == "+"{
                    result.text = String(beforeTemp+nowTemp)
                }else if sign == "-"{
                    result.text = String(beforeTemp-nowTemp)
                }else if sign == "*"{
                    result.text = String(beforeTemp*nowTemp)
                }else if sign == "/"{
                    result.text = String(beforeTemp/nowTemp)
                }else{
                    
                }
            }
            
        }
        signFlag = true;
        dotExist = false;
        
    }
    @IBAction func DotAction(sender: AnyObject) {
        
        if dotExist == false{
            if let before = result.text {
                result.text = before + "."
            }
            dotExist = true;
        }
    }
    @IBAction func ZeroAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "0"
        }
    }
    @IBAction func OneAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "1"
        }
    }
    @IBAction func TwoAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "2"
        }
    }
    @IBAction func ThreeAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "3"
        }
    }
    @IBAction func FourAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "4"
        }
    }
    @IBAction func FiveAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "5"
        }
    }
    @IBAction func SixAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "6"
        }
    }
    @IBAction func SevenAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "7"
        }
    }
    @IBAction func EightAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "8"
        }
    }
    @IBAction func NineAction(sender: AnyObject) {
        //부호로 계산하는 중일때
        if let identyfy = signFlag {
            if identyfy{
                nowData = result.text
                result.text = ""
                signFlag = false;
            }
        }
        
        if let before = result.text {
            result.text = before + "9"
        }
    }
    
    
//    여기서 클래스 내 변수에 바로 접근하는 방법?
//    func SignMethod(sendSign: String,sendResult: UILabel){
//        
//        
//    }
    
    
    
}

