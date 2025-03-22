//
//  ContentView.swift
//  SwiftApplication
//
//  Created by Chariot 3 - Ordinateur 9 - User7 on 2025-04-09.
//


//
// ContentView.swift
// Calculator tutoriel
//
// Created by Chariot 4 - Ordinateur10 - User7 on 2025-03-18.
//
import SwiftUI
struct ContentView: View {
  @State private var Number1: Int = 0
  @State private var Number2: Int = 0
  @State private var Somme: Int = 0
  func calculeSomme() {
    Somme = Number1 + Number2
  }
  func calculeResultat() {
    Somme = Number1 - Number2
  }
  func calculeProduit() {
    Somme = Number1 * Number2
  }
  func calculeDivision() {
    Somme = Number1 / Number2
  }
  var body: some View {
    VStack {
      Text ("calculator").font(.title)
      TextField("Entrer le premier nombre", value: $Number1,
           format: .number)
      .textFieldStyle(.roundedBorder)
      .padding()
      TextField("Entrer le deuxième nombre", value: $Number2,
           format: .number)
      .textFieldStyle(.roundedBorder)
      .padding()
      HStack{
        Button(action: calculeSomme) {
          Text("+")
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
          .cornerRadius(10)}
        Button(action: calculeResultat) {
          Text("-")
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
          .cornerRadius(10)}
      }
      HStack{
        Button(action: calculeProduit) {
          Text("X")
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
          .cornerRadius(10)}
        Button(action: calculeDivision) {
          Text("/")
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
          .cornerRadius(10)}
      }
        Text("Somme: \(Somme)").font(.title2)
          .padding()
          .padding()
      }
    }
  }
#Preview {
  ContentView()
}
