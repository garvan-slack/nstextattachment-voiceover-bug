//
//  ViewController.swift
//  NSTextAttachmentVoiceOver
//
//  Created by Garvan Keeley on 2021-06-24.
//

import UIKit

class Attachment: NSTextAttachment {
  override init(data contentData: Data?, ofType uti: String?) {
    super.init(data: nil, ofType: nil)
    bounds = CGRect(x: 0, y: 0, width: 70, height: 70)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


class ViewController: UIViewController {

    let textView = UITextView(frame: CGRect(x: 10, y: 200, width: 300, height: 80))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textView)
        textView.backgroundColor = .white
        textView.isEditable = true

        let text = NSMutableAttributedString()

        ["one", "two", "three"].forEach {
            let a = Attachment()
            a.accessibilityLabel = $0
            text.append(NSAttributedString(attachment: a))
        }

        textView.attributedText = text
    }
}

