//
//  UserInfoView.swift
//  MVVM_JPMC_TakeHome
//
//  Created by Kyle Essenmacher on 7/31/22.
//

import Foundation
import SwiftUI

struct SchoolInfoView: View {
    let school_name: String
    var body: some View {
        VStack {
            
            Text (school_name)
                .bold()
        }
        .frame (maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.gray.opacity(0.1),
                    in: RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct SchoolInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolInfoView(school_name: "NYC High")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
