#import <UIKit/UIKit.h>

%hook SearchSuggestion

- (void)configureCompletionTableViewCell:(UITableViewCell *)cell forCompletionList:(id)list {
    %orig;
    cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    cell.textLabel.numberOfLines = 0;
}

%end
