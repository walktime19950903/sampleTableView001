//
//  DetailViewController.swift
//  sampleTableView001
//
//  Created by ryousuke on 2017/11/03.
//  Copyright © 2017年 ryousuke Takahashi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var mylabel: UILabel!
    var teaList = ["オレンジペコ","ダージリン","アッサム","アールグレイ"]
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var myImage: UIImageView!
    
    var teaimage = ["tea0.jpeg","tea1.jpeg","tea2.jpeg","tea3.jpeg"]
    
    var complain = [
/*オレンジペコ*/ "オレンジ・ペコは西洋の茶、特に紅茶の取引において使用される等級（オレンジ・ペコー等級）。OPと略される。中国語起源とする説もあるが、一般的にこの等級は、非中国語圏のスリランカやインドなど中国以外の産地の茶にも用いられる。この等級は、茶葉のサイズの大きさや形状に基づいている。茶産業では、オレンジ・ペコーの用語を特定の大きさの茶葉のうち、標準的な中等級の紅茶に用いているが[1]、北アメリカなど、地域によってはノーブランドの紅茶の名称として使われている。"
/*ダージリン*/  ,"紅茶の中でも特に香りを重視される紅茶である。香りを楽しむためストレートティーで飲まれることが多い。ダージリンが強い香りを持つのは、寒暖の差の激しい標高の高い山地で生産されているためである。セカンドフラッシュではマスカテルフレーバー（マスカットフレーバー）と呼ばれる特徴的な香りの顕著なものが上質とされる。マスカテルフレーバーの香気成分の生成には茶葉に対するウンカの吸汁が関与するとされる。ウンカはセカンドフラッシュが摘まれる時期にもっとも多く発生する。"
/*アッサム*/   ,"北東インドのブラマプトラ河の両岸に広がるアッサム平原は、世界有数の雨量の多い土地であり、世界最大の紅茶産地です。4～5月に摘まれるファーストフラッシュから11月までの間が生産期です。甘みが強くコクのある味わいと濃い茶褐色の水色、芳醇な香りをもっています。ダージリンと同様、ファーストフラッシュは特徴が弱く、6～7月のセカンドフラッシュがアッサム特有のパンチの効いたコクと濃い水色をもち、最良品とされています。味わいが濃いため、特にミルクティーに向くとされています。"
/*アールグレイ*/ ,"アールグレイ（英: Earl Grey）とは、ベルガモットで柑橘系の香りをつけた紅茶で、フレーバーティーの一種。原料は中国茶のキーマン茶（祁門茶）が使われることが多いが、茶葉のブレンドは特に規定がないため、セイロン茶や、中国茶とセイロン茶のブレンド、稀にダージリンなども用いられる[1]。「Earl Grey」 とは「グレイ伯爵」の意であり、1830年代のイギリス首相、第二代グレイ伯チャールズ・グレイに由来すると言われている"]

    
    //受け取った行番号を保存しておく変数
    var passedIndex:Int = -1

    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("二枚め表示されたよ")
        print("受け取った行番号\(passedIndex)")
        
        mylabel.text = teaList[passedIndex]
        
         let myimage = UIImage(named: "\(teaimage[passedIndex])")
        
        myImage.image = myimage
        
        myTextView.text = "\(complain[passedIndex])"
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
