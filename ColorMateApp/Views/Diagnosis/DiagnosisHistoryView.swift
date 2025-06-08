import SwiftUI

struct DiagnosisHistoryView: View {
    // 仮データ構造（後にModelに移行）
    struct Diagnosis: Identifiable {
        let id = UUID()
        let date: String
        let note: String
        let color: Color
    }
    
    // 仮の診断履歴リスト
    let diagnoses: [Diagnosis] = [
        .init(date: "2025/06/01", note: "スプリングが一番似合っていた", color: .yellow),
        .init(date: "2025/05/20", note: "オータム系も悪くない", color: .orange),
        .init(date: "2025/05/10", note: "サマーはやや浮いていた", color: .blue)
    ]
    
    var body: some View {
        List(diagnoses) { diagnosis in
            HStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(diagnosis.color)
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading) {
                    Text(diagnosis.date)
                        .font(.headline)
                    Text(diagnosis.note)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("診断履歴")
    }
}

#Preview {
    NavigationStack {
        DiagnosisHistoryView()
    }
}
