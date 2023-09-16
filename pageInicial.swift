//
//  pageInicial.swift
//  SenacTarde
//
//  Created by StudentBackup01 on 05/09/23.
//

import SwiftUI

struct lista : Identifiable {
    var id: Int
    var nome: String
    var capa: String
    var artist: String
}

struct pageInicial: View {
  
    
    
    @State var musicas = [
        lista(id:1, nome: "Amor Maravilhoso", capa:"https://akamai.sscdn.co/uploadfile/letras/albuns/c/6/8/f/22003.jpg", artist: "Talhes Roberto "),
        lista(id:2, nome: "Meu futuro", capa:"https://akamai.sscdn.co/uploadfile/letras/albuns/c/6/8/f/22003.jpg", artist: "Talhes Roberto"),
        lista(id:3, nome: "Mesmo sem entender", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/9/2/3/3/315491380304052.jpg", artist: "Talhes Roberto"),
        lista(id:4, nome: "Deus da minha vida", capa: "https://www.megafm.com.br/framework/repositorio/uploads/musica/721/b8456f3182d50667ce1cf4ab02b95591.jpg", artist: "Talhes Roberto"),
        lista(id:5, nome: "Clareia - ao vivo", capa: "https://i.ytimg.com/vi/u30biQ9q16g/0.jpg", artist: "Talhes Roberto"),
        lista(id:6, nome: "Bagaço", capa:"https://i.ytimg.com/vi/SQEO0HqJsA8/hqdefault.jpg", artist: "Lázaro"),
        lista(id:7, nome: "Deus da força", capa:"https://i.ytimg.com/vi/UektWYmRDmo/maxresdefault.jpg", artist: "Talhes Roberto"),
        lista(id:8, nome: "Desistir jamais", capa: "https://i.ytimg.com/vi/HJu3nYEBLCs/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDceY4-wriGQg_sVETtL7Wau3ouEg", artist: "Clóvis Pinho"),
        lista(id:9, nome: "Eu amo vocês 3", capa: "https://i1.sndcdn.com/artworks-000051112809-qsm4vx-t500x500.jpg", artist: "Talhes Roberto"),
        lista(id:10, nome: "Eu sou de Jesus", capa: "https://i.ytimg.com/vi/SQEO0HqJsA8/hqdefault.jpg", artist: "Lázaro"),
        lista(id:11, nome: "Guarda-me ó Deus", capa: "https://i.ytimg.com/vi/kWTNJRXx4Qk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCgqznV0nQgyUKj7jTWVbx6BTE6yg", artist: "Voz da verdade")
    ]
    @State var aux : lista = lista(id:0 , nome:"", capa:"",artist:"")
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.white, .blue, .black]), startPoint: .top, endPoint: .bottom
                ).edgesIgnoringSafeArea(.all).zIndex(0)
                ScrollView(showsIndicators: false){
                    VStack{
                        AsyncImage(url: URL(string: "https://ugc.production.linktr.ee/a6TYiIpSZGyAACrAnjIV_B86u5cUn52u1TE4G")!, scale: 2 ).frame(width: 10, height: 230).padding(10)
                        
                        Text("HackaFM").foregroundColor(.white).font(.largeTitle).bold()
                        
                        Text("HackaSong").foregroundColor(.white)
                        
                        VStack(alignment: .leading){
                            ForEach(musicas) { musicaas in
                                @State var aux =  musicaas
                                NavigationLink(destination: musicaSel(auxiliar: aux) ){
                                    HStack{
                                        AsyncImage(url: URL(string:"\(musicaas.capa)")){
                                            image in image.resizable().offset()
                                            }placeholder: {
                                            ProgressView()
                                        }.frame(width: 50,height: 50)
                                        VStack(alignment: .leading){
                                            Text("\(musicaas.nome)").foregroundColor(.white)
                                            Text("\(musicaas.artist)").foregroundColor(.white)
                                            
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis").foregroundColor(.white)
                                        
                                    }
                                    

                                }
                                
                                
                            }
                            
                        }
                        Text("Sugeridos").bold().foregroundColor(.white).padding(20)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing:20){
                                ForEach(musicas) { musicaas in
                                    
                                    NavigationLink(destination: musicaSel(auxiliar: musicaas)) {
                                        VStack{
                                            AsyncImage(url: URL(string:"\(musicaas.capa)")){
                                                image in image.resizable().offset()
                                            }placeholder: {
                                                ProgressView()
                                            }.frame(width: 200,height: 200)
                                            Text(musicaas.nome).foregroundColor(Color.white)
                                        }
                                    }
                                }
                                
                            }
                        }
                        
                    }
                }
            }
                
            }
            
        }
    }




struct pageInicial_Previews: PreviewProvider {
    static var previews: some View {
        pageInicial()
    }
}
