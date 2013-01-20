//
//  ViewController.m
//  bDict_EngViet
//
//  Created by Binh Le on 1/19/13.
//
//

#import "ViewController.h"
#import "HomeView.h"
#import "HistoryView.h"
#import "StorageView.h"
#import "SettingView.h"

#define CONTENT_FRAME CGRectMake(0,84,320,507)

@interface ViewController (){
    HomeView *homeView;
    HistoryView *historyView;
    StorageView *storageView;
    SettingView *settingView;
}

@property (nonatomic, retain) IBOutlet UIImageView *topImage;
@property (nonatomic, retain) IBOutlet UISearchBar *theSearchBar;
@property (nonatomic, retain) IBOutlet UIView      *contentView;
@property (nonatomic, retain) IBOutlet UITabBar *theTabbar;
@property (nonatomic, retain) IBOutlet UITabBarItem *homeTabBarItem;
@property (nonatomic, retain) IBOutlet UITabBarItem *historyTabBarItem;
@property (nonatomic, retain) IBOutlet UITabBarItem *storageTabBarItem;
@property (nonatomic, retain) IBOutlet UITabBarItem *settingTabBarItem;

- (void)removeAllSubviewsInContentView;
@end

@implementation ViewController

@synthesize topImage=_topImage;
@synthesize theSearchBar=_theSearchBar;
@synthesize theTabbar=_theTabbar;
@synthesize contentView=_contentView;
@synthesize homeTabBarItem=_homeTabBarItem;
@synthesize historyTabBarItem=_historyTabBarItem;
@synthesize storageTabBarItem=_storageTabBarItem;
@synthesize settingTabBarItem=_settingTabBarItem;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    homeView = [[HomeView alloc] initWithFrame:self.contentView.bounds];
    historyView = [[HistoryView alloc] initWithFrame:self.contentView.bounds];
    storageView = [[StorageView alloc] initWithFrame:self.contentView.bounds];
    settingView = [[SettingView alloc] initWithFrame:self.contentView.bounds];
    
    // change bookmark icon
//    [self.theSearchBar setImage:[UIImage imageNamed:@"BookmarkButtonNormal.png"]
//               forSearchBarIcon:UISearchBarIconBookmark state:UIControlStateNormal];
//    [self.theSearchBar setImage:[UIImage imageNamed:@"BookmarkButtonSelected.png"]
//               forSearchBarIcon:UISearchBarIconBookmark state:UIControlStateSelected];
    
    [self.contentView addSubview:homeView];
    [self.theTabbar setSelectedItem:self.homeTabBarItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)removeAllSubviewsInContentView{
    for (UIView *subView in self.contentView.subviews) {
        [subView removeFromSuperview];
    }
}

#pragma mark UISEARCHBAR
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    
}

- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar{
    
}

#pragma mark UITABBAR
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    [self removeAllSubviewsInContentView];
    switch (item.tag) {
        case 0:{
            [self.contentView addSubview:homeView];
            [self.theTabbar setSelectedItem:self.homeTabBarItem];
            break;
        }
        case 1:{
            [self.contentView addSubview:historyView];
            [self.theTabbar setSelectedItem:self.historyTabBarItem];
            break;
        }
        case 2:{
            [self.contentView addSubview:storageView];
            [self.theTabbar setSelectedItem:self.storageTabBarItem];
            break;
        }
        case 3:{
            [self.contentView addSubview:settingView];
            [self.theTabbar setSelectedItem:self.settingTabBarItem];
            break;
        }
        default:{
            [self.contentView addSubview:homeView];
            [self.theTabbar setSelectedItem:self.homeTabBarItem];
            break;
        }
    }
}

@end
