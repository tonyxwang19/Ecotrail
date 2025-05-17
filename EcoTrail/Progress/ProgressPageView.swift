//
//  ProgressPageView.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 2/19/25.
//

import SwiftUI

struct TrashStatView: View {
    
    let systemImage: String
    let title: String
    let count: Int

    var body: some View {
        VStack {
            Image(systemName: systemImage)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .foregroundColor(.blue)
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
                .padding(.top)
            Text("\(count) collected")
                .font(.subheadline)
                .padding(.bottom)
        }
        .padding(.horizontal)
    }
}

struct ProgressPageView: View {
    @EnvironmentObject var counter: ClassificationCounter
    @State private var userName: String = "Xining Wang"
    @State private var userBio: String = "I'm an Outdoor enthusiast."
    @State private var userLocation: String = "Beijing, China"
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                Image("BackgroundPic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 250.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .padding(.bottom)
                VStack(alignment: .leading) {
                    HStack {
                        Text(userName)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                        NavigationLink(destination: EditProfileView(userName: $userName, userBio: $userBio, userLocation: $userLocation)) {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .foregroundColor(.green)
                                .padding(.trailing)
                        }
                    }
                    HStack {
                        Text(userBio)
                            .font(.subheadline)
                            .padding(.leading)
                        Spacer()
                        Text(userLocation)
                            .font(.subheadline)
                            .padding(.horizontal)
                    }
                }
                
                Divider()
                VStack(alignment: .leading) {
                    Text("Weekly Challenge")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)
                    Text("Collecting 10 Packaging")
                        .font(.subheadline)
                        .padding(.leading)
                    HStack {
                        ProgressView(value: Double(counter.packageCount), total: 10)
                            .progressViewStyle(LinearProgressViewStyle())
                            .padding(.horizontal)
                            .padding(.top, 5)
                        Text("\(counter.packageCount)/10")
                            .font(.subheadline)
                            .padding(.trailing)
                    }
                    
                    Text("Collecting 10 Water Bottles")
                        .font(.subheadline)
                        .padding(.leading)
                    HStack {
                        ProgressView(value: Double(counter.bottleCount), total: 10)
                            .progressViewStyle(LinearProgressViewStyle())
                            .padding(.horizontal)
                            .padding(.top, 5)
                        Text("\(counter.bottleCount)/10")
                            .font(.subheadline)
                            .padding(.trailing)
                    }
                }
                Divider()
                VStack(alignment: .leading) {
                    Text("My Stats")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            TrashStatView(systemImage: "waterbottle.fill", title: "Plastic Waterbottle", count: counter.bottleCount)
                            TrashStatView(systemImage: "bag", title: "Plastic Bag", count: counter.bagCount)
                            TrashStatView(systemImage: "fork.knife", title: "Food Packaging", count: counter.packageCount)
                            TrashStatView(systemImage: "carrot.fill", title: "Fruit", count: counter.fruitCount)
                        }
                    }
                }
                .padding(.bottom)
                Divider()
                VStack(alignment: .leading) {
                    Text("You Protect Our Nature")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading)
                    Text("By Collecting \(counter.totalWeightInGrams)g of Trash")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)
                }.padding(.bottom)
            }
        }
    }
}

struct EditProfileView: View {
    @Binding var userName: String
    @Binding var userBio: String
    @Binding var userLocation: String
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("Name", text: $userName)
                TextField("Bio", text: $userBio)
                TextField("Location", text: $userLocation)
            }
        }
        .navigationTitle("Edit Profile")
    }
}
