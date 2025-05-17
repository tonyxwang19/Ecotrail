import SwiftUI

struct ExploreView: View {
    @State private var selectedCardNum: Int? = nil
    @State private var showDetail = false
    @State private var selectedTab: Int = 1
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Leave No Trace (LNT)")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Text("7 Principles When You Explore The Outdoors")
                            .font(.headline)
                            .padding(.leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(0..<7) { index in
                                    LNTCardView(cardNum: index)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Get to Know Outdoor Trash")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Text("How can they impact our environment?")
                            .font(.headline)
                            .padding(.leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(0..<4) { index in
                                    TrashCardView(cardNum: index)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Explore Trails")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Text("Popular Trails")
                            .font(.headline)
                            .padding(.leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(0..<4) { index in
                                    TrailCardView(cardNum: index)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}
