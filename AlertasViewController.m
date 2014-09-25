//
//  AlertasViewController.m
//  Segues y alertas
//
//  Created by Jhon Wilfer Orrego on 24/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "AlertasViewController.h"

@interface AlertasViewController ()

@end

@implementation AlertasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)alertaSimple:(id)sender {
    alerta = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Hola jhon desde una Alerta" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:@"Cancelar",nil];
    [alerta show];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Clic en boton Aceptar");
            break;
                  case 1:
                  NSLog(@"Clic en boton Cancelar");
                  break;
                  case 2:
                  NSLog(@"Clic en boton Omitir");
                  break;
    }
}

- (IBAction)alertaCampos:(id)sender {
    alerta = [[UIAlertView alloc]initWithTitle:@"Confirmar Usuario" message:@"Introduce tu usuario y contraseña" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Pagar", nil];
    alerta.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alerta show];
}

- (IBAction)hojaAcciones:(id)sender {
}
@end
