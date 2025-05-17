//
//  LNTCardView.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 2/13/25.
//

import SwiftUI

struct LntPrinciple {
    let principleName: String
    let principleNum: Int
    let principleImgName: String
    let principleDescription: String
    let detailedDescription: String
    let tips: [String]
}

private let principles: [LntPrinciple] = [
    LntPrinciple(
        principleName: "Plan Ahead & Prepare",
        principleNum: 1,
        principleImgName: "principle1",
        principleDescription: "Proper planning ensures a safe and enjoyable outdoor experience while minimizing impact.",
        detailedDescription: "Know the regulations and special concerns for the area you'll visit. Prepare for extreme weather, hazards, and emergencies. Schedule your trip to avoid times of high use. It helps to accomplish trip goals safely and enjoyably while simultaneously minimizing damage to the land. Poor planning often results in a less enjoyable experience and damage to natural and cultural resources.",
        tips: [
            "Identify and record the goals (expectations) of your trip.",
            "Identify the skill and abilities of trip participants.",
            "Gain knowledge of the area you plan to visit from land managers, maps, and literature.",
            " Choose equipment and clothing for comfort, safety, and Leave No Trace qualities.",
            "Plan trip activities to match your goals, skills, and abilities.",
            "Evaluate your trip upon return and note changes you will make next time."
        ]
    ),
    LntPrinciple(
        principleName: "Travel & Camp on Durable Surfaces",
        principleNum: 2,
        principleImgName: "principle2",
        principleDescription: "Minimize impact by using durable surfaces for travel and camping.",
        detailedDescription: "The goal of travel outdoors is to move through natural areas while avoiding damage to the land, foliage, or waterways. Understanding how travel causes impacts is necessary to accomplish this goal. Travel damage occurs when surface vegetation or communities of organisms are trampled beyond recovery. After traveling to an area, we can have a significant effect on where we decide to camp. The resulting barren area leads to soil erosion and the development of undesirable trails or trampled areas. By understanding the best practices to travel and camp on durable surfaces responsibly, we can minimize human impact on outdoor spaces.",
        tips: [
            "Durable surfaces include established trails, campsites, rock, gravel, and dry grasses or snow.",
            "Protect riparian areas by camping at least 200 feet from lakes and streams.",
            "Good campsites are found, not made. Altering a site is not necessary.",
            "Concentrate use on existing trails and campsites.",
            "Walk single file in the middle of the trail, even when wet or muddy.",
            "Keep campsites small. Focus activity in areas where vegetation is absent."
        ]
    ),
    LntPrinciple(
        principleName: "Dispose of Waste Properly",
        principleNum: 3,
        principleImgName: "principle3",
        principleDescription: "Properly dispose of all waste to prevent contamination and preserve the environment.",
        detailedDescription: "The waste humans create while enjoying outdoor spaces can have severe impacts if not disposed of properly. It is crucial to anticipate the types of waste you will need to dispose of and know the proper techniques for disposing of each type of waste in the area you are visiting. Leave No Trace encourages outdoor enthusiasts to consider the impacts they leave behind, which will undoubtedly affect other people, water, and wildlife.",
        tips: [
            "Pack it in, pack it out. Inspect your campsite and rest areas for trash or spilled food. Pack out all trash, leftover food, and litter. Burning trash is never recommended.",
            "Deposit solid human waste in catholes dug 6-8 inches deep at least 200 feet from water, camp, and trails. Cover and disguise the cathole when finished.",
            "Bury toilet paper deep in a cathole or pack the toilet paper out along with hygiene products.",
            "To wash yourself or your dishes, carry water 200 feet away from streams or lakes and use small amounts of biodegradable soap. Scatter strained dishwater."
        ]
    ),
    LntPrinciple(
        principleName: "Leave What You Find in Outdoors",
        principleNum: 4,
        principleImgName: "principle4",
        principleDescription: "Leave nature as you found it, respecting its beauty and natural state.",
        detailedDescription: "The items we find in nature have a role to play, either in the ecosystem or the story of the landscape. Leaving what we find in place helps to preserve both. Allow others a sense of discovery by leaving rocks, plants, archaeological artifacts, and other objects of interest as you find them.",
        tips: [
            "Preserve the past: observe cultural or historic structures and artifacts, but do not touch them.",
            "Leave rocks, plants, and other natural objects as you find them.",
            "Avoid introducing or transporting non-native species.",
            "Do not build structures, furniture, or dig trenches."
        ]
    ),
    LntPrinciple(
        principleName: "Minimize Campfire Impacts",
        principleNum: 5,
        principleImgName: "principle5",
        principleDescription: "Minimize the impact of campfires on the environment.",
        detailedDescription: "Once necessary for cooking and warmth, campfires are steeped in history and tradition. Some people would not think of camping without a campfire. Campfire building is also an essential skill for every camper. Yet, the natural appearance of many areas has been degraded by the overuse of fires and increasing demand for firewood. Moreover, wildfires continue to threaten outdoor spaces and are primarily caused by humans. We can minimize campfire impacts by keeping a few key things in mind.",
        tips: [
            "Campfires can cause lasting impacts on the environment. Use a lightweight stove for cooking and enjoy a candle lantern for light.",
            "Use established fire rings, pans, or mound fires where fires are permitted.",
            "Keep fires small. Use only sticks from the ground that can be broken by hand.",
            "Burn all wood and coals to ash, put out campfires completely, then scatter cool ashes."
        ]
    ),
    LntPrinciple(
        principleName: "Respect Wildlife in Outdoors",
        principleNum: 6,
        principleImgName: "principle6",
        principleDescription: "Respect wildlife by observing from a distance and avoiding disturbing them.",
        detailedDescription: "Whenever you are in an outdoor space, you are in the natural habitat of many wild animals and should work to minimize your impact on them.  Human impacts on wildlife can result in negative human-wildlife interactions, aggressive animals, a decline in the ecosystem’s health, and relocated or euthanized animals. All these impacts can be avoided if visitors respect wildlife on all outdoor trips.",
        tips: [
            "Observe wildlife from a distance. Do not follow or approach them.",
            "Never feed animals. Feeding wildlife damages their health, alters natural behaviors, and exposes them to predators and other dangers.",
            "Control pets at all times, or leave them at home.",
            "Avoid wildlife during sensitive times: mating, nesting, raising young, or winter."
        ]
    ),
    LntPrinciple(
        principleName: "Be Considerate of Others",
        principleNum: 7,
        principleImgName: "principle7",
        principleDescription: "Be respectful and considerate of other people in the outdoors.",
        detailedDescription: "One of the most important components of outdoor ethics is to maintain courtesy toward others. It helps everyone enjoy their outdoor experience. Excessive noise, uncontrolled pets, and damaged surroundings detract from the natural appeal of the outdoors. Being considerate of others ensures everyone can enjoy nature no matter how they interact with it.",
        tips: [
            "Respect others and protect the quality of their experience.",
            "Be courteous. Yield to other users on the trail.",
            "Greet riders and ask which side of the trail to move to when encountering pack stock.",
            "Take breaks and camp away from trails and others.",
            "Let nature’s sounds prevail. Avoid loud voices and noises."
        ]
    )
]


struct LNTCardView: View {
    var cardNum: Int
    
    var body: some View {
        NavigationLink(destination: LNTDetailView(cardNum: cardNum)) {
            VStack(alignment: .leading, spacing: 0) {
                Image(principles[cardNum].principleImgName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 131)
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
                    Text("Principle \(principles[cardNum].principleNum)")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text(principles[cardNum].principleName)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .lineLimit(2)
                    
                    Text(principles[cardNum].principleDescription)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
                .padding()
                .background(Color.white)
            }
            .frame(width: 200, height: 250)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 2.0)
            )
            .padding(.vertical, 5)
        }
    }
}

struct LNTDetailView: View {
    var cardNum: Int
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Image(principles[cardNum].principleImgName)
                        .resizable()
                        .scaledToFill()
                        .frame(maxHeight: 200)
                        .cornerRadius(10)
                    
                    Text(principles[cardNum].principleName)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(principles[cardNum].detailedDescription)
                        .font(.body)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Key Tips")
                            .font(.headline)
                        
                        ForEach(principles[cardNum].tips, id: \.self) { tip in
                            HStack(alignment: .top, spacing: 12) {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.green)
                                Text(tip)
                            }
                        }
                    }
                    Spacer()
                    Text("Source: 7 Principles - Leave No Trace Organization")
                        .font(.subheadline)
                }
                .padding()
            }

    }
}



