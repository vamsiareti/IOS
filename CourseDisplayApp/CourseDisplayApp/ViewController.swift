//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Areti,Vamsi Krishna on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var crsSemester: UILabel!
    @IBOutlet weak var crsTitle: UILabel!
    @IBOutlet weak var crsNum: UILabel!
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
    ["img02", "44643", "ios", "Spring 2022"],
    ["img03", "44656", "Straming Data", "Summer 2022"]]
    
    var imageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the details(image, num, title and sem) of the first(0th element) course.
        updateUI(imageNumber);
        //Previous button is disabled
        previousButton.isEnabled = false;
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        
        //UI should be updated with the next course details
        imageNumber += 1
        updateUI(imageNumber)
        
        //previous button should be enabled
        previousButton.isEnabled = true
        
        //Once reaching the end of the courses array, nextButton should be displayed
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
        
        
    }
    @IBAction func previousButtpnClicked(_ sender: Any) {
        //next button should be enabled
        nextButton.isEnabled = true
        
        //update th UI
        imageNumber -= 1
        updateUI(imageNumber)
        
        //if the course position is at the 0th position, previous button should be disabled
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
    }
    @IBOutlet weak var previousButton: UIButton!
    
    func updateUI(_ imageNumber: Int){
        ImageViewOutlet.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsSemester.text = courses[imageNumber][3]
    }
    
    
}

