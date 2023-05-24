//
//  RegisterView.swift
//  ToDoList


import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel  = RegisterViewViewModel()
    var body: some View {
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form{
                TextField("Full name: ", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("E mail address: ", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account", background: .green){
                    viewModel.register()
                }
                .padding()
            }
            
            .offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
