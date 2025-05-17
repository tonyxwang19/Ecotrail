//import SwiftUI
//
//class CameraData: ObservableObject {
//    @Published var bottleCollectedNum = 5
//    @Published var bagCollectedNum = 5
//    @Published var packagingCollectedNum = 5
//    @Published var fruitCollectedNum = 5
//}
//
//struct CameraButton: View {
//    @Binding var isImagePickerPresented: Bool
//    @Binding var selectedImage: UIImage?
//    @Binding var collectedNum: Int
//    @Binding var showImageAlert: Bool
//    @Binding var selectedButtonName: String?  
//    
//    var icon: String
//    var name: String
//    
//    var body: some View {
//        VStack {
//            Button(action: {
//                isImagePickerPresented = true
//                selectedButtonName = name
//            }) {
//                VStack {
//                    Image(systemName: icon)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.blue)
//                        .padding([.leading, .bottom, .trailing])
//                    Text(name)
//                        .font(.headline)
//                        .foregroundColor(.primary)
//                        .lineLimit(2)
//                }
//                .frame(width: 140, height: 180)
//                .background(
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(Color.white)
//                        .shadow(color: .gray, radius: 2.0)
//                )
//                .padding(.all, 5)
//            }
//            
//            // select camerapicker
//            .fullScreenCover(isPresented: $isImagePickerPresented) {
//                CameraPicker(isImagePickerPresented: $isImagePickerPresented, selectedImage: $selectedImage)
//                    .edgesIgnoringSafeArea(.all)
//            }
//        }
//        // listening to the change
//        .onChange(of: selectedImage) { newImage in
//            if newImage != nil  {
//                showImageAlert = true
//                collectedNum += 1
//            }
//        }
//    }
//}
//
//struct CameraView: View {
//    @State private var isImagePickerPresented = false
//    @State private var selectedImage: UIImage? = nil
//    @State private var showImageAlert = false
//    @ObservedObject var cameraData: CameraData
//    @State private var selectedButtonName: String? = nil
//
//    var body: some View {
//        VStack {
//            HStack {
//                CameraButton(
//                    isImagePickerPresented: $isImagePickerPresented,
//                    selectedImage: $selectedImage,
//                    collectedNum: $cameraData.bottleCollectedNum,
//                    showImageAlert: $showImageAlert,
//                    selectedButtonName: $selectedButtonName,
//                    icon: "waterbottle",
//                    name: "Bottle"
//                )
//                .padding(.trailing)
//                
//                CameraButton(
//                    isImagePickerPresented: $isImagePickerPresented,
//                    selectedImage: $selectedImage,
//                    collectedNum: $cameraData.bagCollectedNum,
//                    showImageAlert: $showImageAlert,
//                    selectedButtonName: $selectedButtonName,
//                    icon: "bag",
//                    name: "Bag"
//                )
//            }
//            .padding()
//            
//            HStack {
//                CameraButton(
//                    isImagePickerPresented: $isImagePickerPresented,
//                    selectedImage: $selectedImage,
//                    collectedNum: $cameraData.packagingCollectedNum,
//                    showImageAlert: $showImageAlert,
//                    selectedButtonName: $selectedButtonName,
//                    icon: "fork.knife",
//                    name: "Packaging"
//                )
//                .padding(.trailing)
//                
//                CameraButton(
//                    isImagePickerPresented: $isImagePickerPresented,
//                    selectedImage: $selectedImage,
//                    collectedNum: $cameraData.fruitCollectedNum,
//                    showImageAlert: $showImageAlert,
//                    selectedButtonName: $selectedButtonName,
//                    icon: "carrot",
//                    name: "Fruit"
//                )
//            }
//        }
//        .sheet(isPresented: $showImageAlert) {
//            if let image = selectedImage {
//                VStack {
//                    Image(uiImage: image)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 300, height: 300)
//                    Text("You have successfully collected 1 \(selectedButtonName)")
//                }
//            }
//        }
//    }
//}

import SwiftUI

struct CameraView: View {
    @EnvironmentObject var counter: ClassificationCounter
    
    @State private var isImagePickerPresented = true  // 进入页面时自动触发相机
    @State private var selectedImage: UIImage?
    @State private var img_result: String = ""

    var body: some View {
        VStack {
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            } else {
                Text("Take a photo to collect trash!")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            Text("The result is \(img_result)")
                .font(.headline)
                .foregroundColor(.gray)
        }
        .onAppear {
            isImagePickerPresented = true  // 每次进入 CameraView 都自动打开相机
        }
        .onChange(of: selectedImage) {
            if let image = selectedImage {
                print("Got selected image")
                classifyImage(image) { result in
                    if let result = result {
                        print("Got result: \(result)")
                        DispatchQueue.main.async {
                            img_result = result
                            counter.increment(for: result)
                        }
                    } else {
                        print("Classification failed or returned nil")
                    }
                }
            } else {
                print("Image is nil")
            }
        }
        .fullScreenCover(isPresented: $isImagePickerPresented) {
            CameraPicker(isImagePickerPresented: $isImagePickerPresented, selectedImage: $selectedImage)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

