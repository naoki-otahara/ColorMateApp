import SwiftUI

struct HomeView: View {
    @State private var selectedImage: UIImage? = nil
    @State private var showCamera = false
    @State private var showPhotoLibrary = false
    @State private var navigateToPreview = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                Text("ColorMate")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.primary)
                    .padding(.top, 40)
                
                Text("画像の取得方法を選択")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Button(action: {
                    showCamera = true
                }) {
                    Text("写真を撮る")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.mint)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 32)
                
                Button(action: {
                    showPhotoLibrary = true
                }) {
                    Text("写真を選ぶ")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.mint)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 32)
                
                NavigationLink(
                    destination: ImagePreviewDestinationView(image: selectedImage),
                    isActive: $navigateToPreview
                ) {
                    EmptyView()
                }
                Spacer()
            }
            .padding()
            .background(Color(.systemGroupedBackground))
            .sheet(isPresented: $showCamera) {
                CameraView(selectedImage: $selectedImage, onImagePicked: {
                    navigateToPreview = true
                })
            }
            .sheet(isPresented: $showPhotoLibrary) {
                PhotoPickerView(selectedImage: $selectedImage, onImagePicked: {
                    navigateToPreview = true
                })
            }
        }
    }
}

#Preview {
    HomeView()
}
