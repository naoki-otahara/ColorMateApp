import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Label("診断", systemImage: "camera")
            }
            
            NavigationStack {
                DiagnosisHistoryView()
            }
            .tabItem {
                Label("履歴", systemImage: "clock")
            }
            
            NavigationStack {
                SettingsView()
            }
            .tabItem {
                Label("設定", systemImage: "gearshape")
            }
        }
    }
}

#Preview {
    MainTabView()
}
