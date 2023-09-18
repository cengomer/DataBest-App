import SwiftUI

struct RevenueView: View {
    var body: some View {
        VStack {
            // Sales data bars
            HStack(spacing: 20) {
                ForEach(salesData.sorted { monthOrder[$0.month]! < monthOrder[$1.month]! }) { sale in
                    VStack {
                        Spacer()
                        Rectangle()
                            .frame(width: 40, height: calculateBarHeight(revenue: sale.revenue))
                            .foregroundColor(sale.isHighest ? Color("Primary") : Color("Gray")) // Set highest bar to red
                            .cornerRadius(5)
                        Text(sale.month)
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                    }
                }
            }
        }
        
        .padding()
    }
    
    // Sample sales data for demonstration purposes
    let salesData = [
        Sale(month: "Mar", revenue: 35000, isHighest: true),
        Sale(month: "Jan", revenue: 30000, isHighest: false),
        Sale(month: "Apr", revenue: 28000, isHighest: false),
        Sale(month: "Feb", revenue: 25000, isHighest: false),
        Sale(month: "May", revenue: 22000, isHighest: false),
        Sale(month: "Jun", revenue: 18000, isHighest: false)
    ]
    
    // Function to calculate the bar height relative to the maximum revenue
    func calculateBarHeight(revenue: Int) -> CGFloat {
        let maxRevenue = CGFloat(salesData.max(by: { $0.revenue < $1.revenue })?.revenue ?? 1)
        return (CGFloat(revenue) / maxRevenue) * 200 // 200 is the maximum bar height
    }
    
    // Custom month order
    let monthOrder: [String: Int] = [
        "Jan": 1, "Feb": 2, "Mar": 3, "Apr": 4, "May": 5, "Jun": 6
    ]
}

// Sale struct to hold month and revenue data
struct Sale: Identifiable {
    let id = UUID()
    let month: String
    let revenue: Int
    let isHighest: Bool // Add a property to identify the highest revenue entry
}

struct RevenueView_Previews: PreviewProvider {
    static var previews: some View {
        RevenueView()
    }
}
