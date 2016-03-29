//
//  ViewController.h
//  Websocket-Sample
//
//  Created by Prasen on 29/03/16.
//  Copyright © 2016 Prasen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocketIO.h"

@interface ViewController : UIViewController<SocketIODelegate>{
    SocketIO *socketIO;
}


@end

