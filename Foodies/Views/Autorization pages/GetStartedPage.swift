//
//  GetStartedPage.swift
//  Foodies
//
//  Created by Chika Ohaya on 2/1/22.
//

import SwiftUI

struct GetStartedPage: View {
    var body: some View {
        ZStack{
        
            //iPhone 11 Pro Max - 1
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 1, green: 0.29411765933036804, blue: 0.22745098173618317, alpha: 1)))
            .frame(width: 454, height: 996)
            
            toyimagesboy
                .padding(.leading,220)
                .padding(.top,385)
            toyimagesgirl
                .padding(.top,300)
                .padding(.trailing,100)
            
            LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 1, green: 0.2784312963485718, blue: 0.04313725233078003, alpha: 0.10000000149011612)), location: 0),
                    .init(color: Color(#colorLiteral(red: 1, green: 0.2784312963485718, blue: 0.04313725233078003, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5014005758325883, y: -0.40056818596931115),
                        endPoint: UnitPoint(x: 0.5014005597863918, y: 0.7585227121304514))
                .frame(width: 504, height: 195, alignment: .trailing)
               
                .padding(.trailing,70)
                .padding(.top,700)
            
            VStack(spacing:20) {
                haticon
                    
                    .padding(.trailing,249)
                
                Text("Food for \nFoodiez").font(.system(size: 65, weight: .heavy, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(-1.95)
                  
                    .padding(.trailing,60)
                
                
                    
               
            }.padding(.top,-430)
            VStack{
                GetStartedButton
                    .padding(.top,790)
            }
        }
    }
  
}
var GetStartedButton: some View {
    Button(action: {}, label: {
        //Rectangle 2
        ZStack {
            //Get starteed
           
        RoundedRectangle(cornerRadius: 30)
            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .frame(width: 314, height: 70)
            //Get starteed
            Text("Get started").font(.system(size: 17, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.27, blue: 0.04, alpha: 1)))
        }
    })
}
var toyimagesgirl: some View {
  
    HStack {
    Image("ToyfaceGirl")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 318.1, height: 424.4)
      
    .frame(width: 358.1, height: 434.4)
    .rotationEffect(.degrees(-1.1))
        
        
        
    }
}
var haticon: some View {
    ZStack {
        Circle()
            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .frame(width: 73, height: 73)
        //Bella Olonje logo 111 1
        Image("chefhat")
            .resizable()
            .frame(width: 40.2, height: 49.6)
            .clipped()
        .frame(width: 40.2, height: 49.6)
        
    }
}
    var toyimagesboy: some View {
        Image("ToyFaceBoy")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 225.4, height: 298.5)
            .clipped()
        .frame(width: 225.4, height: 298.5)
        .rotationEffect(.degrees(0.17))
    }
//Rectangle 5
struct Rectangle5Shape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0.9144460028*width, y: 0))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()
        return path
    }
}

//Vector 1

struct GetStartedPage_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedPage()
    }
}

