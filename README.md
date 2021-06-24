# NSTextAttachment Voiceover Bug In UITextView

Precondition:
- multiple text attachments in NSAttributedString in a UITextView that is editable

Repro:
- VoiceOver on, insertion point at end of UITextView
- delete last item by pressing delete, 
- VoiceOver will announce the first NSTextAttachment's accessibilityLabel
- delete first item
- VoiceOver will announce nothing.

Two bugs here:
- when non-first item is deleted, the first item is announced
- when first item is deleted, nothing is announced

https://user-images.githubusercontent.com/72810910/123292776-61e41600-d4e1-11eb-8abe-2b6d896b5b70.mov

Radar FB9206676



