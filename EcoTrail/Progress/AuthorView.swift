import SwiftUI

struct AuthorView: View {
    var body: some View {
        VStack {
            BgPicView()
                .edgesIgnoringSafeArea(.top)
            VStack {
                PictureView()
                    .offset(y: -250)
                    .padding(.bottom, -250)
                VStack(alignment: .leading) {
                    Text("Xining Wang")
                        .font(.title)
                    HStack {
                        Text("I'm a High School student.")
                            .font(.subheadline)
                        Spacer()
                        Text("Beijing, China")
                            .font(.subheadline)
                    }
                }
                .padding()
                Divider()
                VStack(alignment: .leading) {
                    Text("My Description")
                        .padding()
                    Divider()
                    Text("Version 1.0.0")
                        .padding()
                }
                
                Spacer()
            }
        }
    }
}

struct PictureView: View {
    var body: some View {
        Image("AuthorPic")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250.0, height: 250.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct BgPicView: View {
    var body: some View {
        Image("BackgroundPic")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 300.0)
            .clipped()
            .shadow(radius: 10)
    }
}
