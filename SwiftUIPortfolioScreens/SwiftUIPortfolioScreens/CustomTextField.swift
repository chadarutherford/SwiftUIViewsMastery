//
//  CustomTextField.swift
//  SwiftUIPortfolioScreens
//
//  Created by Chad Rutherford on 8/27/20.
//

import SwiftUI

struct CustomTextField: View {
	var placeholder: Text
	@Binding var text: String
	var editingChanged: (Bool) -> Void = { _ in }
	var commit: () -> Void = { }
	
	var body: some View {
		ZStack(alignment: .leading) {
			if text.isEmpty { placeholder }
			TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
		}
	}
}

struct CustomSecureField: View {
	var placeholder: Text
	@Binding var text: String
	var editingChanged: (Bool) -> Void = { _ in }
	var commit: () -> Void = { }
	
	var body: some View {
		ZStack(alignment: .leading) {
			if text.isEmpty { placeholder }
			SecureField("", text: $text, onCommit: commit)
		}
	}
}
