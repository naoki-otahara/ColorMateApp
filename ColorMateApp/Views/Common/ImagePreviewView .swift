import SwiftUI

struct ImagePreviewView: View {
    let image: UIImage
    
    var body: some View {
        VStack(spacing: 24) {
            Text("画像プレビュー")
                .font(.title2.bold())
            
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 400)
                .cornerRadius(12)
                .shadow(radius: 4)
            
            Button("この画像で診断を続ける") {
                // TODO: ドレープ選択画面へ遷移する処理
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.mint)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ImagePreviewView(image: UIImage(named: "sample") ?? UIImage())
}
