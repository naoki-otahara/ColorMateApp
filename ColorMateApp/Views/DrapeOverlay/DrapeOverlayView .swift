import SwiftUI

struct DrapeOverlayView: View {
    let baseImage: UIImage
    @State private var selectedColor: Color = .orange
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // 顔画像 + カラーシート
                VStack(spacing: 0) {
                    Image(uiImage: baseImage)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 300)
                        .clipped()
                    
                    selectedColor
                        .frame(height: 300)
                        .frame(maxWidth: .infinity)
                }
                
                // パレット
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(colorOptions, id: \.self) { color in
                            Rectangle()
                                .fill(color)
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                                .onTapGesture {
                                    selectedColor = color
                                }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 16)
                
                // 診断ボタン
                NavigationLink(destination: DiagnosisResultView()) {
                    Text("診断結果へ進む")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.mint)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .padding(.top, 16)
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 32)
            }
        }
    }
    
    let colorOptions: [Color] = [
        .orange, .brown, .yellow, .mint, .cyan, .red, .green
    ]
}

#Preview {
    DrapeOverlayView(baseImage: UIImage(named: "sample") ?? UIImage())
}
