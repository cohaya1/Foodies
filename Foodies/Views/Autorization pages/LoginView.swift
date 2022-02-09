//
//  LoginView.swift
//  Foodies
//
//  Created by Chika Ohaya on 2/2/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 0.949999988079071, green: 0.949999988079071, blue: 0.949999988079071, alpha: 1)))
            .frame(width: 464, height: 956)
           
            VStack(spacing:10) {
      
            Text("Email address").font(.system(size: 15, weight: .semibold))
                .foregroundColor(Color .gray)
                .padding(.trailing,195.22)
              emailtextfield
                    .padding(.leading,90)
                
              Image("Line 1")
                    .resizable()
                    .frame(width: 294, height: 1 )
            }.padding(.bottom,100)
           
            VStack{
                Text("Password").font(.system(size: 15, weight: .semibold))
                    .foregroundColor(Color .gray)
                    .padding(.trailing,225.22)
                  passwordtextfield
                        .padding(.leading,90)
                    
                  Image("Line 1")
                        .resizable()
                        .frame(width: 294, height: 1 )
                
                
            }.padding(.top,150)
            
            VStack(spacing:140){
              forgetpasscodebutton
                    .padding(.trailing,150)
              
             loginbutton
                
            }.padding(.top,530)
            
           
      
           
                
            
    }
    
   
    }
    var loginbutton: some View{
        Button(action: {}, label: {
            //Rectangle 2
            ZStack {
                //Login
                
                //Forgot passcode?
            //Rectangle 2
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(#colorLiteral(red: 0.9803921580314636, green: 0.29019609093666077, blue: 0.0470588244497776, alpha: 1)))
            .frame(width: 314, height: 70)
                Text("Login").font(.system(size: 17, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.96, green: 0.96, blue: 0.98, alpha: 1)))
            }
               })
    
    }
               
    var forgetpasscodebutton: some View {
        Button(action: {}, label: {
            //Rectangle 2
           
                //Forgot passcode?
                Text("Forgot passcode?").font(.system(size: 17, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.98, green: 0.29, blue: 0.05, alpha: 1)))
                         
               })
    
    }
    var emailtextfield: some View{
        TextField("", text: $email)
        .foregroundColor(.black)
        .font(.system(size: 17, weight: .semibold))
           
    }
    var passwordtextfield: some View{
        SecureField("",text: $password)
            .foregroundColor(.black)
            
           
    }
       
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
