//
//  ViewController.swift
//  countryApi
//
//  Created by R82 on 30/03/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource  {
   

    @IBOutlet weak var cv: UITableView!
    
    var arr : [WelcomeElement] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getApi()
    }
    
    func getApi(){
        AF.request("https://restcountries.com/v3.1/all", method: .get).responseData { respon in
            switch respon.result{
            case.success(let data):
                do {
                    if data == respon.value{
                        self.arr = try JSONDecoder().decode([WelcomeElement].self, from: data)
                        DispatchQueue.main.async {
                            self.cv.reloadData()
                        }
                        
                    }
    
                }
                catch{
                    print(error.localizedDescription)
                }
            case.failure(let error):
                print(error.localizedDescription)

                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cv.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.lb1.text = "\(arr[indexPath.row].name.common)"
        cell.lb2.text = arr[indexPath.row].name.official
        cell.img.image = stringToImage(link: arr[indexPath.row].flags.png)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 338
    }
    
    func stringToImage(link: String) -> UIImage?{
        let url1 = URL(string: link)
        var data = try? Data(contentsOf: url1! as! URL)
        
        return UIImage(data: data!)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
            navigationController?.pushViewController(navigate, animated: true)
        navigate.label11 = "\(arr[indexPath.row].name.common)"
        navigate.label21 = arr[indexPath.row].population.description
        navigate.img1 = stringToImage(link: arr[indexPath.row].flags.png)!
        navigate.img2 = stringToImage(link: arr[indexPath.row].coatOfArms.png!)!
        }
        



}

