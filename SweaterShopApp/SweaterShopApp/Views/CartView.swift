//
//  CartView
//  SweaterShop
//
//  Created by Kinder on 23/12/2021.
//
import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.paymentSuccess {
                Text("Спасибо за вашу покупку! Скоро вам будет уютно в наших удобных свитерах! Вскоре вы также получите подтверждение по электронной почте.")
                    .padding()
            } else {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                    }
                    
                    HStack {
                        Text("Ваша корзина на сумму ")
                        Spacer()
                        Text("\(cartManager.total) ₽")
                            .bold()
                    }
                    .padding()
                    
                    PaymentButton(action: cartManager.pay)
                        .padding()
                    
                } else {
                    Text("Ваша корзана пуста.")
                }
            }
        }
        .navigationTitle(Text("Мои заказы"))
        .padding(.top)
        .onDisappear {
            if cartManager.paymentSuccess {
                cartManager.paymentSuccess = false
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}

