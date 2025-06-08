import SwiftUI

struct DiagnosisResultView: View {
    @State private var diagnosisNote: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("診断結果")
                .font(.title2.bold())
            
            Text("診断メモ")
                .font(.headline)
            
            TextEditor(text: $diagnosisNote)
                .frame(height: 200)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                )
            
            Button("診断を保存する") {
                // TODO: 保存ロジック（後日実装）
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.mint)
            .foregroundColor(.white)
            .cornerRadius(12)
            
            Spacer()
        }
        .padding()
        .navigationTitle("診断結果")
    }
}

#Preview {
    DiagnosisResultView()
}
