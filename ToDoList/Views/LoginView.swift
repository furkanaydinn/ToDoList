//
//  LoginView.swift
//  ToDoList


import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    

    
    
    var body: some View {
        
        
        NavigationView{
            VStack{
                
                //HeaderView
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                
                
                
                //Login
                
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    
                    TextField("E mail address: ", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        
                        
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue){
                        viewModel.login()
                    }
                    
                    .padding()
                
                }
                
                .offset(y: -50)
                
                VStack{
                    Text("New account here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                    
                Spacer()
            }
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
