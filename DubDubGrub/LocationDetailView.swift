//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Ivan Trajanovski on 2021. 11. 30..
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16) {
            Image("default-banner-asset")
                .resizable()
                .scaledToFill()
                .frame(height: 120)
            
            HStack {
                Label("123 Main Street", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text("This is a test description.This is a test description.This is a test description.This is a test description.This is a test description")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
                .frame(height: 70)
                .padding(.horizontal)
                
            
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    Link(destination: URL(string: "https://www.apple.com")!, label: {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    })
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                }
                
            }
            .padding(.horizontal)
            
            Text("Who's here?")
                .bold()
                .font(.title2)
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    FirstNameAvatarView(firstName: "Ivan")
                    FirstNameAvatarView(firstName: "Batu")
                    FirstNameAvatarView(firstName: "Dasha")
                    FirstNameAvatarView(firstName: "Dasha")
                    FirstNameAvatarView(firstName: "Dasha")
                    FirstNameAvatarView(firstName: "Dasha")
                    FirstNameAvatarView(firstName: "Dasha")
                    FirstNameAvatarView(firstName: "Dasha")
                    FirstNameAvatarView(firstName: "Dasha")
                })
            }
            
            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
        }
    }
}

struct FirstNameAvatarView: View {
    var firstName: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
