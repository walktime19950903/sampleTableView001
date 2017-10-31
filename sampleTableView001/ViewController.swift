
import UIKit


//1.プロトコルの設定（DataSource,Delegate）
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    //表示したいデータ（配列）
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //Storyboadで設定する（PickerViewの時はプログラムで指定）
        //4.TableViewに指示を出すのがViewControllerだと設定する
        
        //myTableView.delegate = self　プログラムでかく場合
        //myTableView.dataSource = self プログラムでかく場合
        
        //5.tableViewにCellオブジェクトを追加してidentifierに「Cell」という名前をつける
        
    }
    
    //2.行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        
//        var retValue = 0
//        if section == 0{
//            retValue = 10
//        }else{
//            retValue = 20 //20行表示
//        }
//
//        return retValue
        //エラーがなかなか消えない時はcommand+shift+Kで一旦エラーをクリアできる。
        
        return teaList.count
        
    }
    
    //3.リストに表示する文字列を決定し、表示
    
    var sections = [String]()

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        //文字列を表示するセルの取得（セルの再利用）
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //表示したい文字の設定
//        cell.textLabel?.text = "\(indexPath.row)行目"
        cell.textLabel?.text = teaList[indexPath.row]
        
        cell.textLabel?.textColor = UIColor.orange
        cell.backgroundColor = UIColor.gray
        
        //文字を設定したセルを返す
        return cell
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

