import SwiftUI

struct DrapeOverlayView: View {
    let baseImage: UIImage
    @State private var selectedColor: Color = .red
    
    var body: some View {
        VStack(spacing: 24) {
            Text("カラーシートプレビュー")
                .font(.title3.bold())
            
            ZStack {
                Image(uiImage: baseImage)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 400)
                
                Rectangle()
                    .fill(selectedColor)
                    .frame(height: 150)
                    .opacity(0.4)
                    .overlay(
                        Text("カラーシート")
                            .font(.caption)
                            .foregroundColor(.white)
                    )
                    .offset(y: 100) // 顔の下あたりを想定
            }
            
            // 仮のカラーパレット
            HStack(spacing: 16) {
                ForEach([Color.red, Color.blue, Color.green, Color.yellow], id: \.self) { color in
                    Circle()
                        .fill(color)
                        .frame(width: 32, height: 32)
                        .onTapGesture {
                            selectedColor = color
                        }
                        .overlay(Circle().stroke(Color.black, lineWidth: selectedColor == color ? 2 : 0))
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DrapeOverlayView(baseImage: UIImage(named: "sample") ?? UIImage())
}
