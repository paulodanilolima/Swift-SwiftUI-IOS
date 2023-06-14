//
//  DatepickerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 12/06/23.
//

import SwiftUI

struct DatepickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let statingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    
    var dateFormatter: DateFormatter {
        let formater = DateFormatter()
        formater.dateStyle = .short
        formater.timeStyle = .short
        return formater
    }
    
    var body: some View {
        Text("Selecte Date is:")
        Text(dateFormatter.string(from: selectedDate))
        VStack{
            //        DatePicker("Select a Date", selection: $selectedDate)
            //        DatePicker("Select a date", selection: $selectedDate,
            //                   displayedComponents: [.date, .hourAndMinute])
                    DatePicker("Select", selection: $selectedDate, in: statingDate...endingDate, displayedComponents: [.date]
                    )
                        .accentColor(Color.red)
                        .datePickerStyle(
                            CompactDatePickerStyle()
            //                GraphicalDatePickerStyle()
            //                WheelDatePickerStyle()
                        )
        }

    }
}

struct DatepickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatepickerBootcamp()
    }
}
