//
//  fakeData.swift
//  Zalo_Project01
//
//  Created by Ong_Lao_Ngao on 5/20/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
struct data {
    var image: String
    var name: String
    var content: String
    var date: String
}

func creataData() -> [data] {
    let beta1 = data(image: "1", name: "Thực tập di động 4", content: "Ngoc Duc: [Link] http://medium.com", date: "20/5/2020")
    let beta2 = data(image: "2", name: "Hoi bai lop di dong", content: "Phuong: Van binh thuong ma nhi", date: "3 giờ")
    let beta3 = data(image: "3", name: "Cô Giáo IOS", content: "OK co giáo", date: "20/5/2020")
    let beta4 = data(image: "4", name: "A1 Tuyên", content: "B gửi t mấy cái tài liệu đi", date: "13 giờ")
    let beta5 = data(image: "5", name: "Tùng", content: "ok bạn", date: "hôm qua")
    let beta6 = data(image: "6", name: "Bộ Y Tế", content: "Khám, chữa bệnh miễn phí qua ứng dụng", date: "20/5/2020")
    
    let beta7 = data(image: "7", name: "UX tối 3 - 5 (NDC)", content: "Yến: @All Mọi người đọc slide về mobile trong link mới update nhé", date: "11/15/2020")
    let beta8 = data(image: "8", name: "Nguyễn Minh Sơn", content: "E đang dưới nhà rồi ạ", date: "07/05/2020")
    let beta9 = data(image: "9", name: "Hoàng hải long", content: "OK ông", date: "05/05/2020")
    let beta10 = data(image: "10", name: "Khánh Nguyễn", content: "[Hình ảnh]", date: "22/04/2020")
    let beta11 = data(image: "11", name: "BoBiBen", content: "Chào cô ạ", date: "22/04/2020")
    let beta12 = data(image: "12", name: "Tu Tân", content: "[File] C++", date: "13/04/2020")
    let beta13 = data(image: "13", name: "A1 Hùng", content: "Gửi messege đi", date: "01/04/2020")
    return [beta1, beta2, beta3, beta4, beta5, beta6, beta7, beta8, beta9, beta10, beta11, beta12, beta13]
}
