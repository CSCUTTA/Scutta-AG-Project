//
//  ProfileEditor.swift
//  Scutta_AG_Project
//
//  Created by Cody Scutta on 7/21/22.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: ProfileModel
    @State private var image = UIImage()
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(uiImage: profile.image)
                    .resizable()
                    .frame(width: 300, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.blue, lineWidth: 5)
                    )
                    .onTapGesture {
                      showSheet = true
                    }
                    .sheet(isPresented: $showSheet) {
                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$profile.image)
                    }
                Image(systemName: "pencil.circle.fill")
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .frame(width: 200, height: 25)
            }
            List {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Name")
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                        TextField("Name", text: $profile.name)
                            .bold()
                    }
                    Image(systemName: "pencil.circle")
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("Phone")
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                        TextField("Phone", text: $profile.phone)
                            .keyboardType(.numberPad)
                            .bold()
                    }
                    Image(systemName: "pencil.circle")
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("Email")
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                        TextField("Email", text: $profile.email)
                            .bold()
                    }
                    Image(systemName: "pencil.circle")
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("Tell us about yourself")
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                        TextField("Tell us about yourself", text: $profile.bio)
                            .bold()
                    }
                    Image(systemName: "pencil.circle")
                }
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
