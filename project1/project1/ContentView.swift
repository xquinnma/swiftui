//
//  ContentView.swift
//  project1
//
//  Created by Quinn Ma on 10/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var res : Int = 0
    
    //Display String
    @State var display_str : String = ""
    
    //Numbers
    @State var num1: Double = 0
    @State var operation = ""
    @State var num2: Double = 0
    @State var result: Double = 0

    var body: some View {
        VStack(){
            
            //Display
            Text(display_str.count>0 ? "\(display_str)" : floor(num1)==num1 ? "\(Int(num1))" : "\(num1)")
                .font(.system(size:80))
                .multilineTextAlignment(.center)
                .frame(width: 300, height: 300, alignment: .trailing)
                //.border(Color.black, width: 1)
                

            //Buttons
            VStack(spacing:15){
                
                HStack(spacing: 10){
                    
                    Button("AC", action:{display_str=""})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("+/-", action:{
                        if display_str[display_str.startIndex]=="-"{
                            
                        }
                    })
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("%", action:{res+=1})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("÷", action:{res+=1})
                        .frame(width: 75, height: 75)
                        .background(Color.green.opacity(0.4))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                }
                
                HStack(spacing: 10){
                    
                    Button("7", action:{display_str+="7"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                        
                    Button("8", action:{display_str+="8"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("9", action:{display_str+="9"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("×", action:{res+=1})
                        .frame(width: 75, height: 75)
                        .background(Color.green.opacity(0.4))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                }
                HStack(spacing: 10){
                    
                    Button("4", action:{display_str+="4"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                        
                    Button("5", action:{display_str+="5"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("6", action:{display_str+="6"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("-", action:{
                        if operation == "-"{
                            return
                        }
                        if num1 == 0 {
                        num1 = (display_str as NSString).doubleValue
                            
                        }
                        operation = "-"
                        display_str = ""
                    })
                        .frame(width: 75, height: 75)
                        .background(Color.green.opacity(0.4))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                }
                HStack(spacing: 10){
                    
                    Button("1", action:{display_str+="1"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                        
                    Button("2", action:{display_str+="2"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("3", action:{display_str+="3"})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("+", action:{
                        if operation == "+"{
                            return
                        }
                        num1 = (display_str as NSString).doubleValue
                        operation = "+"
                        display_str = ""
                    })
                        .frame(width: 75, height: 75)
                        .background(Color.green.opacity(0.4))
                        .clipShape(Circle())
                        .accentColor(Color.black)

                }
                HStack(spacing: 10){
                        
                    Button("0", action:{display_str+="0"})
                        .frame(width: 160, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .accentColor(Color.black)
                        
                    Button(".", action:{res+=1})
                        .frame(width: 75, height: 75)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .accentColor(Color.black)
                    
                    Button("=", action:{
                        num2  = (display_str as NSString).doubleValue
                        if operation == "+"{
                            result = num1 + num2
                            num1 = result
                            display_str=""
                        }else if operation == "-"{
                            result = num1 - num2
                            num1 = result
                            display_str=""
                        }
                    })
                        .frame(width: 75, height: 75)
                        .background(Color.green.opacity(0.4))
                        .clipShape(Circle())
                        .accentColor(Color.black)

                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
