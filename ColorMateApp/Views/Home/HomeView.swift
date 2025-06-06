import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                Text("ColorMate")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.primary)
                    .padding(.top, 40)
                
                VStack(spacing: 16) {
                    Text("画像の取得方法を選択")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    NavigationLink(destination: Text("カメラ画面")) {
                        Text("写真を撮る")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.mint)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: Text("フォトライブラリ画面")) {
                        Text("写真を選ぶ")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .foregroundColor(.mint)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 32)
                
                Spacer()
            }
            .padding()
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    HomeView()
}
