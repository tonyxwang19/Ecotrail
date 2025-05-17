//
//  TrashCardView.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 2/19/25.
//

import SwiftUI

struct trashDetail {
    let trashName: String
    let trashNum: Int
    let trashImgName: String
    let detailedDescription: String
    let trashIcon: String
}

private let trash: [trashDetail] = [
    trashDetail(
        trashName: "Plastic Water Bottle",
        trashNum: 1,
        trashImgName: "waterbottle.fill",
        detailedDescription: "The environmental impact of water bottles, especially single-use plastic ones, is significant, from resource extraction to waste pollution. Producing plastic bottles requires fossil fuels, consuming energy and releasing carbon emissions, while transportation further adds to their footprint. Most plastic bottles are not recycled, contributing to landfill overflow, ocean pollution, and microplastic contamination. Additionally, bottled water production is highly inefficient, often using more water than it provides. Switching to reusable bottles and tap water can drastically reduce waste and environmental harm.",
        trashIcon: "waterbottle.fill"
    ),
    trashDetail(
        trashName: "Plastic Bag",
        trashNum: 2,
        trashImgName: "bag",
        detailedDescription: "Plastic bags have a severe environmental impact due to their production, usage, and disposal. Made from fossil fuels like crude oil and natural gas, their manufacturing contributes to carbon emissions. Lightweight and easily carried by wind, plastic bags often end up as litter, polluting oceans, harming wildlife through ingestion or entanglement, and breaking down into microplastics that contaminate ecosystems. With low recycling rates and long decomposition times—often hundreds of years—they persist in landfills and waterways. Reusable bags, biodegradable alternatives, and stricter regulations can help mitigate their environmental damage.",
        trashIcon: "bag"
    ),
    trashDetail(
        trashName: "Food Packaging",
        trashNum: 2,
        trashImgName: "fork.knife",
        detailedDescription: "Food packaging, especially single-use plastic, has a major environmental impact due to resource consumption, waste generation, and pollution. Made from materials like plastic, aluminum, and paper, its production requires significant energy and raw materials, contributing to carbon emissions. Most food packaging is not recycled due to contamination, leading to landfill overflow, marine pollution, and microplastic contamination. Plastic packaging, in particular, takes hundreds of years to degrade, harming wildlife and ecosystems. Sustainable alternatives like biodegradable materials, minimal packaging, and improved recycling systems can help reduce its environmental footprint.",
        trashIcon: "fork.knife"
    ),
    trashDetail(
        trashName: "Fruit",
        trashNum: 2,
        trashImgName: "carrot.fill",
        detailedDescription: "Improperly disposing of fruit peels in the outdoor environment can have several negative impacts. While biodegradable, peels do not break down instantly and can attract pests like rodents and insects, disrupting local ecosystems. In natural areas, discarded peels can introduce non-native bacteria, affecting soil and plant health. Additionally, in colder or drier climates, decomposition takes much longer, leading to litter accumulation. When left on roads or trails, peels create an eyesore and contribute to the misconception that dumping organic waste is harmless. Responsible disposal, such as composting, is essential to prevent ecological disruption and maintain clean outdoor spaces.",
        trashIcon: "carrot.fill"
    )
]


struct TrashCardView: View {
    var cardNum: Int
    
    var body: some View {
        NavigationLink(destination: TrashDetailView(cardNum: cardNum)) {
            VStack(alignment: .center, spacing: 3) {
                Image(systemName: trash[cardNum].trashIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.blue)
                    .padding([.leading, .bottom, .trailing])
                Text(trash[cardNum].trashName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(2)
            }
            .frame(width: 140, height: 180)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 2.0)
            )
            .padding(.all, 5)
        }
    }
}

struct TrashDetailView: View {
    var cardNum: Int
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Image(systemName: trash[cardNum].trashImgName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 200)
                        .cornerRadius(10)
                    
                    Text(trash[cardNum].trashName)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(trash[cardNum].detailedDescription)
                        .font(.body)
                    Spacer()
                }
                .padding()
            }

    }
}



