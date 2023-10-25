//
//  ButtomComponents.swift
//  ABloom
//
//  Created by yun on 10/18/23.
//

import SwiftUI

/// Apple Login Button Label
struct AppleLoginButton: View {
  var body: some View {
    HStack {
      Image(systemName: "apple.logo")
      Text("Apple로 계속하기")
    }
    .font(.custom("SFProDisplay-Regular", size: 16))
    .tracking(1)
    .foregroundStyle(.white)
    .background(
      RoundedRectangle(cornerRadius: 8)
        .frame(width: 350, height: 56)
    )
  }
}


struct PurpleSingleBtn: View {
  let text: String
  
  var body: some View {
    Text(text)
      .fontWithTracking(fontStyle: .headlineBold)
      .foregroundStyle(.white)
      .frame(maxWidth: .infinity)
      .frame(height: 52)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .clayMorpBtnXLPurpleShadow()
          .foregroundStyle(purpleGradient65())
      )
  }
}

struct PinkSingleBtn: View {
  let text: String
  
  var body: some View {
    Text(text)
      .fontWithTracking(fontStyle: .headlineBold)
      .foregroundStyle(.white)
      .frame(maxWidth: .infinity)
      .frame(height: 52)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .clayMorpBtnXLPinkShadow()
          .foregroundStyle(pinkGradient54())
      )
  }
}

struct Pink50SingleBtn: View {
  let text: String
  
  var body: some View {
    Text(text)
      .fontWithTracking(fontStyle: .headlineBold)
      .foregroundStyle(.pink500)
      .frame(maxWidth: .infinity)
      .frame(height: 52)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .clayMorpBtnXLPinkShadow()
          .foregroundStyle(.pink50)
      )
  }
}

struct StoneSingleBtn: View {
  let text: String
  
  var body: some View {
    Text(text)
      .fontWithTracking(fontStyle: .headlineBold)
      .foregroundStyle(.white)
      .frame(maxWidth: .infinity)
      .frame(height: 52)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .clayMorpBtnGrayShadow()
          .shadow(color: Color.stone200.opacity(1), radius: 10, x: 0, y: 20)
          .foregroundStyle(.stone300)
      )
  }
}

struct RectangleBtn: View {
  
  var body: some View {
    Image("return")
      .background(
        RoundedRectangle(cornerRadius: 16)
          .clayMorpMDPinkShadow()
          .foregroundStyle(pinkGradient54())
          .frame(width: 56, height: 56)
      )
  }
}

struct RectagleGrayBtn: View {
  
  var body: some View {
    Image("return")
      .background(
        RoundedRectangle(cornerRadius: 16)
          .clayMorpMDShadow()
          .foregroundStyle(.stone300)
          .frame(width: 56, height: 56)
      )
  }
}

struct CicleBtn: View {
  
  var body: some View {
    Image("pencil.write")
      .background(
        Circle()
          .clayMorpMDPinkShadow()
          .foregroundStyle(pinkGradient54())
          .frame(width: 56, height: 56)
      )
  }
}

struct CicleGrayBtn: View {
  
  var body: some View {
    Image("pencil.write")
      .background(
        Circle()
          .clayMorpMDShadow()
          .foregroundStyle(.stone300)
          .frame(width: 56, height: 56)
      )
  }
}

struct TextBtn: View {
  var body: some View {
    Text("연결없이 시작하기")
      .fontWithTracking(fontStyle: .calloutBold)
      .foregroundStyle(.purple600)
  }
}


#Preview {
  Group {
    PurpleSingleBtn(text: "PurpleSingleBtn")
      .padding()
    PinkSingleBtn(text: "버튼")
      .padding()
    Pink50SingleBtn(text: "버튼")
      .padding()
    StoneSingleBtn(text: "버튼")
      .padding()
    RectangleBtn()
      .padding()
    RectagleGrayBtn()
      .padding()
    CicleBtn()
      .padding()
    CicleGrayBtn()
      .padding()
    TextBtn()
      .padding()
  }
}
