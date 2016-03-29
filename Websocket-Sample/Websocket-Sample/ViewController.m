//
//  ViewController.m
//  Websocket-Sample
//
//  Created by Prasen on 29/03/16.
//  Copyright © 2016 Prasen. All rights reserved.
//

#import "ViewController.h"
#define CHAT_SERVER_IP @"http://192.168.1.135"
#define CHAT_SERVER_PORT 3000

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    socketIO = [[SocketIO alloc] initWithDelegate:self];
    [socketIO connectToHost:CHAT_SERVER_IP onPort:CHAT_SERVER_PORT];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - SOCKET IO Delegates

- (void) socketIO:(SocketIO *)socket didReceiveJSON:(SocketIOPacket *)packet
{
    NSString *dataRecieved = packet.data;
    NSLog(@"Data Recieved didReceiveJSOn : %@",dataRecieved);
}

- (void) socketIO:(SocketIO *)socket didReceiveMessage:(SocketIOPacket *)packet
{
    NSString *dataRecieved = packet.data;
    NSLog(@"Data Recieved didReceiveMessage: %@",dataRecieved);
}

- (void) socketIO:(SocketIO *)socket didReceiveEvent:(SocketIOPacket *)packet
{
    NSDictionary *json = packet.args[0];
    NSLog(@"Data Recieved packet: %@",json);
    
}

- (void)socketIODidConnect:(SocketIO *)socket{
    NSLog(@"connected socket");
    
    
}

- (void)socketIO:(SocketIO *)socket onError:(NSError *)error{
    NSLog(@"Socket Error occurred %@", [error localizedDescription]);
}
@end
