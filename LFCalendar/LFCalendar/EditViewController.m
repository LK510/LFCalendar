//
//  EditViewController.m
//  LFCalendar
//
//  Created by 路飞 on 2017/6/5.
//  Copyright © 2017年 路飞. All rights reserved.
//

#import "EditViewController.h"
#import "HMImagePickerController.h"

@interface EditViewController ()<UITextFieldDelegate,UITextViewDelegate,HMImagePickerControllerDelegate>

@property (nonatomic,strong) UITextField *titleTf;
@property (nonatomic,strong) UITextView *editTv;
@property (nonatomic,strong) UIView *keyBoardView;

@property (nonatomic) NSArray *images;
@property (nonatomic) NSArray *selectedAssets;

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self setUp];

}

- (void) setUp{
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.titleTf];
    [self.view addSubview:self.editTv];
    [self.view addSubview:self.keyBoardView];
    
}

- (void)imagePickerController:(HMImagePickerController *)picker
      didFinishSelectedImages:(NSArray<UIImage *> *)images
               selectedAssets:(NSArray<PHAsset *> *)selectedAssets {
    
    self.images = images;
    self.selectedAssets = selectedAssets;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    
    self.keyBoardView.frame = CGRectMake(0, kScreenHeight-30-216-45, kScreenWidth, 30);
}

- (void) openPic{
    
    HMImagePickerController *picker = [[HMImagePickerController alloc] initWithSelectedAssets:self.selectedAssets];
    
    picker.pickerDelegate = self;
    picker.targetSize = CGSizeMake(800, 600);
    picker.maxPickerCount = 9;
    
    [self presentViewController:picker animated:YES completion:nil];

}

- (UIView *) keyBoardView{
    
    if (_keyBoardView == nil) {
        _keyBoardView = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenHeight-30, kScreenWidth, 30)];
        
        UIButton *imgBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [imgBtn setImage:[UIImage imageNamed:@"ne_btn_ picture_normal"] forState:UIControlStateNormal];
        [imgBtn setImage:[UIImage imageNamed:@"ne_btn_ picture_pressed"] forState:UIControlStateHighlighted];

        [imgBtn addTarget:self action:@selector(openPic) forControlEvents:UIControlEventTouchUpInside];
        
        [_keyBoardView addSubview:imgBtn];
    }
    return _keyBoardView;
}

- (UITextView *) editTv{
    
    if (_editTv == nil) {
        _editTv = [[UITextView alloc] initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight - 64 - 30)];
        _editTv.backgroundColor = [UIColor grayColor];
        _editTv.delegate = self;
    }
    return _editTv;
}

- (UITextField *) titleTf{
    
    if (_titleTf == nil) {
        _titleTf = [[UITextField alloc] initWithFrame:CGRectMake(10, 20, kScreenWidth-20, 44)];
        _titleTf.placeholder = @"请输入标题";
        _titleTf.delegate = self;
    }
    return _titleTf;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
