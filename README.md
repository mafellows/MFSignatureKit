# Easily add signatures to your project

MFSignatureKit gives you full signature functionality. 

# Installation

Installation is easy. Just drag and drop MFSignatureView.h and MFSignatureView.m into your project. 

In your sub view:

	#import "MFSignatureView.h"

To declare a new instance of MFSignatureView: 

	MFSignatureView *signatureView = [[MFSignatureView alloc] initWithFrame:self.view.frame]; 
	signatureView.lineWidth = 10; 
	signatureView.lineColor = [UIColor blackColor]; 
	signatureView.bgColor = [UIColor whiteColor]; 
	[self.view addSubview:signatureView]; 

That's all there is to it! Now you can easily add a signature to your project. 

# Removing the signature

In your own button, tap recognizer, or however you seem fit, add this code to clear the signature: 

	[signatureView setPath:nil]; 
	[signatureView setNeedsDisplay]; 

And that's it, baby!

