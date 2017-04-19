//
//  ViewController.swift
//  CollectioonView
//
//  Created by iFlame on 14/04/17.
//  Copyright © 2017 IFlame. All rights reserved.
//

import UIKit
import AlamofireImage

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
    
    var actors=[
        
        ["name":"Aamir Khan","movie":"Movie: 3 Idiots","song":"Song: Bam Bam Bole..","imageName":"https://s-media-cache-ak0.pinimg.com/originals/f5/19/3a/f5193afc947bb7165091d5c72b672d77.jpg"],
        
        ["name":"Ajay Devgan","movie":"Movie: Singham","song":"Song: Badamash Dil..","imageName":"http://www.celebritycurry.com/wp-content/gallery/ajay-devgan/ajay-devgan-wiki.jpg"],
        
        ["name":"Amitabh Bachchan","movie":"Movie: Don","song":"Song: Paan Banaras..","imageName":"http://www.bollywoodcolor.com/wp-content/uploads/2015/08/Amitabh-Bachchan-Favourite-Perfume-Color-Movie-Car-Dialogue-Food-Cricketer-Brand.jpg"],
        
        ["name":"Anil kapoor","movie":"Movie: Beta","song":"Song: Koyal si...","imageName":"http://sekho.in/wp-content/uploads/2016/09/Anil-Kapoor-Family-Photo-Wife-Daughter-Son-Age-Biography.jpg"],
        
        ["name":"Hrithik Roshan","movie":"Movie: Krish 3","song":"Song: God Allah..","imageName":"http://static.dnaindia.com/sites/default/files/2015/04/20/329149-hrithik-hi-res-2.jpg"],
        ["name":"Salman Khan","movie":"Movie: Sultan","song":"Song: Jag Ghumiya...","imageName":"http://www.hindustantimes.com/rf/image_size_640x362/HT/p2/2015/12/12/Pictures/salman-khan_ba0561a0-a0ac-11e5-94b5-bfaeb774c8f3.jpg"],
        
        ["name":"Shahrukh Khan","movie":"Movie: Main Hoon na","song":"Song: Tumse Mil..","imageName":"https://s-media-cache-ak0.pinimg.com/originals/ad/9b/b1/ad9bb1d4c11a44661e9753bfa96da853.jpg"],
        
        ["name":"Varun Dhavan","movie":"Movie: Main Tera Hiro","song":"Song: Galat Baat Hai..","imageName":"http://7-themes.com/data_images/out/18/6831090-varun-dhawan.jpg"]
        
             ]
    
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:actorCell=collectionView.dequeueReusableCell(withReuseIdentifier: "actorCell", for: indexPath) as! actorCell
        
        cell.name.text=self.actors[indexPath.row]["name"]
        cell.movie.text=self.actors[indexPath.row]["movie"]
        cell.song.text=self.actors[indexPath.row]["song"]
        //cell.actorImage.image=UIImage(named:self.actors[indexPath.row]["imageName"]!)
        
        let url=NSURL(string:self.actors[indexPath.row]["imageName"]!)
        
        cell.actorImage.af_setImage(withURL: url!as URL, placeholderImage: UIImage(named:"loading"), filter: nil,  runImageTransitionIfCached: true, completion: nil)

      

        return cell
    }
}

