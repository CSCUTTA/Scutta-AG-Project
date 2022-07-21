//
//  Profile.swift
//  Scutta_AG_Project
//
//  Created by Cody Scutta on 7/21/22.
//

import SwiftUI

struct Profile: View {
    @EnvironmentObject var modelData: ModelData
    var profile: ProfileModel
    
    var body: some View {
        VStack {
            Image(uiImage: profile.image)
                .resizable()
                .frame(width: 300, height: 150)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.blue, lineWidth: 5)
            )
            List {
                VStack(alignment: .leading) {
                    Text("Name")
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    Text(profile.name)
                        .bold()
                }
                VStack(alignment: .leading) {
                    Text("Phone")
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    Text(profile.phone)
                        .bold()
                }
                VStack(alignment: .leading) {
                    Text("Email")
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    Text(profile.email)
                        .bold()
                }
                VStack(alignment: .leading) {
                    Text("Tell us about yourself")
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    Text(profile.bio)
                        .bold()
                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(profile: ProfileModel.default).environmentObject(ModelData())
    }
}
