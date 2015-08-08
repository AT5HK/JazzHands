//
//  TourController.swift
//  JazzHands
//
//  Created by Auston Salvana on 8/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

import UIKit

class TourController: IFTTTAnimatedPagingScrollViewController, UIScrollViewDelegate {
    
    var newAnimator:IFTTTAnimator!
    
    var appNameLabel: UILabel!
    
    var label1: UILabel!
    var label2: UILabel!
    var label3: UILabel!
    var label4: UILabel!
    
    var detail: UIImageView!
    var magicMike: UIImageView!
    var nearby: UIImageView!
    var mangoLogo: UIImageView!
    var tour1: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newAnimator = IFTTTAnimator()
        self.animateCurrentFrame()
        self.newAnimator.animate(0)
        
        setupViews()
        setupAnimations()
    }

    override func numberOfPages() -> UInt {
        return 5
    }

    //MARK - Setup methods
    
    func setupViews() {
        

        appNameLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        view.backgroundColor = UIColor.whiteColor()
        contentView.backgroundColor = UIColor.clearColor()
        
        label1 = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        label2 = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        label3 = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        label4 = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        
        detail = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        magicMike = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        nearby = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mangoLogo = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        tour1 = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        appNameLabel.text = "Jazz Hands"
        label1.text = "Find a great movie near you"
        label2.text = "See all the movies playing nearby"
        label3.text = "Read reviews by top critics"
        label4.text = "See great films"
        
        
        
        detail.image = UIImage(named: "detail")
        magicMike.image = UIImage(named: "magic_mike")
        nearby.image = UIImage(named: "nearby")
        mangoLogo.image = UIImage(named: "mango_logo")
        tour1.image = UIImage(named: "tour1")
        
        
        contentView.addSubview(appNameLabel)
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        contentView.addSubview(label3)
        contentView.addSubview(label4)
        
        contentView.addSubview(detail)
        contentView.addSubview(magicMike)
        contentView.addSubview(nearby)
        contentView.addSubview(mangoLogo)
        contentView.addSubview(tour1)
        
        
        //appNameLabel title constraints
        
        let appNameLabelConstraint = NSLayoutConstraint(
            item: appNameLabel,
            attribute: NSLayoutAttribute.TopMargin,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.TopMargin,
            multiplier: 1, constant: 60)
        
        view.addConstraint(appNameLabelConstraint)
        
        //label1 Constraint
        
        let label1Constraint = NSLayoutConstraint(
            item: label1,
            attribute: NSLayoutAttribute.BottomMargin,
            relatedBy: NSLayoutRelation.Equal, toItem: appNameLabel,
            attribute: NSLayoutAttribute.BottomMargin,
            multiplier: 1, constant: 60)
        
        view.addConstraint(label1Constraint)
        
        //mango constraint
        
        let mangoLogoConstraintY = NSLayoutConstraint(
            item: mangoLogo,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: view,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1, constant: 0)
        
        mangoLogo.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addConstraint(mangoLogoConstraintY)
        
        //label2 constraint
        
        let label2Constraint = NSLayoutConstraint(
            item: label2,
            attribute: NSLayoutAttribute.TopMargin,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.TopMargin,
            multiplier: 1, constant: 160)
        
        view.addConstraint(label2Constraint)
        
        //tour1 constraints
        
        let tour1ConstraintY = NSLayoutConstraint(
            item: tour1,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1, constant: 0)
        
        let tour1WidthConstraint = NSLayoutConstraint(
            item: tour1,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1, constant: 0)
        
        let tour1HeightConstraint = NSLayoutConstraint(
            item: tour1,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1, constant: 0)
        
        view.addConstraint(tour1WidthConstraint)
        view.addConstraint(tour1HeightConstraint)
        view.addConstraint(tour1ConstraintY)
        
        //magicMike constraint
        
        let magicMikeConstraintY = NSLayoutConstraint(
            item: magicMike,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1, constant: 0)
        
        magicMike.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addConstraint(magicMikeConstraintY)
        
        //label3 constraint
        
        let label3Constraint = NSLayoutConstraint(
            item: label3,
            attribute: NSLayoutAttribute.TopMargin,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.TopMargin,
            multiplier: 1, constant: 160)
        
        view.addConstraint(label3Constraint)
        
        //detail constraint
        
        let detailConstraint = NSLayoutConstraint(
            item: detail,
            attribute: NSLayoutAttribute.BottomMargin,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.BottomMargin,
            multiplier: 1, constant: 0)
        
        let detailWidthConstraint = NSLayoutConstraint(
            item: detail,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1, constant: 0)
        
        let detailHeightConstraint = NSLayoutConstraint(
            item: detail,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.3, constant: 0)
        
        view.addConstraint(detailConstraint)
        view.addConstraint(detailWidthConstraint)
        view.addConstraint(detailHeightConstraint)
        
        //label4 constraint
        
        let label4Constraint = NSLayoutConstraint(
            item: label4,
            attribute: NSLayoutAttribute.TopMargin,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.TopMargin,
            multiplier: 1, constant: 160)
        
        view.addConstraint(label4Constraint)
        
        //nearby constraint
        
        let nearbyConstraint = NSLayoutConstraint(
            item: nearby,
            attribute: NSLayoutAttribute.TopMargin,
            relatedBy: NSLayoutRelation.Equal, toItem: label4,
            attribute: NSLayoutAttribute.BottomMargin,
            multiplier: 1, constant: 40)
        
        let nearbyWidthConstraint = NSLayoutConstraint(
            item: nearby,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1, constant: 0)
        
        let nearbyHeightConstraint = NSLayoutConstraint(
            item: nearby,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal, toItem: view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.5, constant: 0)
        
        view.addConstraint(nearbyConstraint)
        view.addConstraint(nearbyWidthConstraint)
        view.addConstraint(nearbyHeightConstraint)
        
        //backgroundColorAnimation
        
        let viewBackgroundColor = IFTTTBackgroundColorAnimation(view: self.view)
        
        newAnimator.addAnimation(viewBackgroundColor)
        
        viewBackgroundColor.addKeyframeForTime(0, color: UIColor.flatBlueColor())
        viewBackgroundColor.addKeyframeForTime(1, color: UIColor.flatRedColor())
        viewBackgroundColor.addKeyframeForTime(2, color: UIColor.flatWhiteColor())
        viewBackgroundColor.addKeyframeForTime(3, color: UIColor.flatBlackColor())
        viewBackgroundColor.addKeyframeForTime(4, color: UIColor.clearColor())
        
        //mangoLogo animation
        let constraintAnimationML = IFTTTConstraintConstantAnimation(superview: view, constraint: mangoLogoConstraintY)
        let shrinkAnimationML = IFTTTScaleAnimation(view: mangoLogo)
        
        newAnimator.addAnimation(constraintAnimationML)
        newAnimator.addAnimation(shrinkAnimationML)
        
        constraintAnimationML.addKeyframeForTime(0, constant:(mangoLogo.frame.height/2) - mangoLogo.frame.height)
        constraintAnimationML.addKeyframeForTime(1, constant:-(view.frame.height/2))
        shrinkAnimationML.addKeyframeForTime(0, scale: 1.0)
        shrinkAnimationML.addKeyframeForTime(1, scale: 0.5)
        
        //magicMike animation
        
        let shrinkAnimationMM = IFTTTScaleAnimation(view: magicMike)
        
        newAnimator.addAnimation(shrinkAnimationMM)
        
        shrinkAnimationMM.addKeyframeForTime(1, scale: 0.8)
        shrinkAnimationMM.addKeyframeForTime(3, scale: 0.1)
        
        //view fadeout animation
        let fadeAnimation = IFTTTAlphaAnimation(view: self.view)
        
        newAnimator.addAnimation(fadeAnimation)
        
//        fadeAnimation.addKeyframeForTime(<#time: CGFloat#>, alpha: <#CGFloat#>)
        
//        Let's divide our tour into 5 pages, each with the following elements displayed:
//        
//        Front page:
//        Title: "Rotten Mangoes"
//        Image: Logo - big and centered
//        Text: "Find great movies near you!"
//        Detail 1:
//        Title: "See all the movies playing nearby"
//        Image: Logo - same view as previous page, but small and above the title
//        Image: a movie poster
//        Image: screengrab of a collection view, with space for a movie poster
//        Detail 2:
//        Title: "Read reviews by top critics"
//        Image: Movie poster - same view as previous page
//        Image: Movie detail with review
//        Detail 3:
//        Title: "See great films"
//        Image: Map of theatres
//        Fadeout:
//        No views, just fades to transparent, to show the tour ending.
    }
    
    func setupAnimations() {
        //initial page
        keepView(appNameLabel, onPage: 0)
        keepView(label1, onPage: 0)
        
        //second page
        keepView(label2, onPage: 1)
        keepView(tour1, onPage: 1)
        
        //third page
        keepView(label3, onPage: 2)
        keepView(detail, onPage: 2)
        
        //fourth page
        keepView(label4, onPage: 3)
        keepView(nearby, onPage: 3)
        
        //multi page
        keepView(mangoLogo, onPages: [(0), (1)])
        keepView(magicMike, onPages: [(1), (2)])

    }
    
    //MARK scrollview delegate
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        super.scrollViewDidScroll(scrollView)
        newAnimator.animate(scrollView.contentOffset.x/400)
        
        if (scrollView.contentOffset.x > view.frame.width * 3.5) {
            dismissViewControllerAnimated(false, completion: nil)
        }
    }
    
}
