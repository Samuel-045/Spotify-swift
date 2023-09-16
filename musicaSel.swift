//
//  musicaSel.swift
//  SenacTarde
//
//  Created by StudentBackup01 on 06/09/23.
//

import SwiftUI

private var imageList = ["arrow.swap",
                         "backward",
                         "play",
                         "forward",
                         "repeat",
                        ]


struct musicaSel: View {
    @State var auxiliar: lista
    var body: some View {
        
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, .blue, .black]), startPoint: .top, endPoint: .bottom
            ).edgesIgnoringSafeArea(.all).zIndex(0)
            
            VStack{
                AsyncImage(url: URL(string:"\(auxiliar.capa)")!, scale: 2 ).frame(width: 10, height: 230).padding(10)
                Spacer().frame(height: 40)
                Text(auxiliar.nome).foregroundColor(.white)
                Text(auxiliar.artist).foregroundColor(.white)
                Spacer().frame(height: 40)
                HStack{
                    ForEach(imageList, id: \.self){image in
                        Image(systemName: "\(image)").font(.system(size:30)).foregroundColor(.white)
                        Spacer().frame(width:20)
                    }
                    
                }
                
            }
            
            }
        }
        
        
    }



