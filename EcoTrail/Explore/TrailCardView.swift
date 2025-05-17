//
//  TrailCardView.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 2/19/25.
//

import SwiftUI

struct trailDetail {
    let trailName: String
    let trailNum: Int
    let trailImgName: String
    let trailDescription: String
    let detailedDescription: String
    let location: String
}

private let trail: [trailDetail] = [
    trailDetail(
        trailName: "The Mount Gongga Loop Trail",
        trailNum: 1,
        trailImgName: "gongga",
        trailDescription: "One of the greatest trails in China.",
        detailedDescription: "The Mount Gongga Loop Trail is a challenging but breathtaking route that circles Mount Gongga, known as the 'King of Sichuan's Mountains.' The trail features stunning views of glaciers, deep valleys, and high-altitude alpine meadows. Hikers will experience a range of terrains, from rugged paths to scenic riverside walks, and an immersive view of the Tibetan culture along the way.",
        location: "Sichuan, China"
    ),
    trailDetail(
        trailName: "Tour du Mont Blanc (TMB)",
        trailNum: 2,
        trailImgName: "tmb",
        trailDescription: "The greatest well-known alpine experience.",
        detailedDescription: "The Tour du Mont Blanc is one of the most famous long-distance hiking trails in the world, circling the Mont Blanc massif through France, Italy, and Switzerland. With stunning views of towering peaks, glaciers, and valleys, this classic trek takes hikers through picturesque alpine villages and offers a diverse range of landscapes, including lush meadows, dramatic cliffs, and high mountain passes.",
        location: "Alps, Europe"
    ),
    trailDetail(
        trailName: "Continental Divide Trail",
        trailNum: 3,
        trailImgName: "cdt",
        trailDescription: "A long-distance hiking trail with epic views.",
        detailedDescription: "The Continental Divide Trail (CDT) is one of the most challenging and remote long-distance hiking trails in North America, stretching from Mexico to Canada. It follows the Continental Divide, traversing the Rocky Mountains and offering jaw-dropping vistas of mountain ranges, deserts, and forests. Hikers will face diverse terrain, from remote wilderness areas to high-altitude sections, with abundant wildlife and scenic beauty throughout.",
        location: "United States"
    ),
    trailDetail(
        trailName: "The Greater Patagonia Trail",
        trailNum: 4,
        trailImgName: "patagonia",
        trailDescription: "Trail with the greatest mountain range in South America.",
        detailedDescription: "The Greater Patagonia Trail is an expansive, multi-day hiking route that traverses some of the most breathtaking and remote wilderness areas in southern Chile and Argentina. Hikers will encounter towering granite peaks, expansive glaciers, pristine lakes, and windswept plains. This trail offers an unparalleled opportunity to experience the wild beauty of Patagonia’s mountains, fjords, and forests, as well as the diverse wildlife, including guanacos, condors, and pumas.",
        location: "Patagonia, Argentina"
    ),
]

struct TrailCardView: View {
    var cardNum: Int
    
    var body: some View {
        NavigationLink(destination: trailDetailView(cardNum: cardNum)) {
            VStack(alignment: .leading, spacing: 0) {
                Image(trail[cardNum].trailImgName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 143.9)
                    .clipped()
                    .mask(
                        UnevenRoundedRectangle(
                            cornerRadii: RectangleCornerRadii(
                                topLeading: 15,
                                bottomLeading: 0, bottomTrailing: 0, topTrailing: 15
                            )
                        )
                    )
                VStack(alignment: .leading, spacing: 8) {
                    Text(trail[cardNum].trailName)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .lineLimit(2)
                    
                    Text(trail[cardNum].trailDescription)
                        .font(.caption)
                        .background(Color.clear)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                    Divider()
                    Text("Location: \(trail[cardNum].location)")
                        .font(.caption)
                        .background(Color.clear)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
                .padding()
                .background(Color.white)
            }
            .frame(width: 220, height: 250)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 2.0)
            )
            .padding(.vertical, 5)
        }
    }
}

struct trailDetailView: View {
    var cardNum: Int
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Image(trail[cardNum].trailImgName)
                        .resizable()
                        .scaledToFill()
                        .frame(maxHeight: 200)
                        .cornerRadius(10)
                    
                    Text(trail[cardNum].trailName)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(trail[cardNum].detailedDescription)
                        .font(.body)
                    Spacer()
                    Divider()
                    Text("Location: \(trail[cardNum].location)")
                        .font(.body)
                    Text("Source: Wikipedia")
                        .font(.subheadline)
                }
                .padding()
            }

    }
}
