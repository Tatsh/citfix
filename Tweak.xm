%hook ApplicationDelegate
-(BOOL)isJailbroken {
    return NO;
}
%end

%hook PolicyCheckerHelper
+(BOOL)isJailbroken {
    return NO;
}
%end

%hook PolicyChecker
-(BOOL)CheckJailBrokenPolicy:(id)arg1 {
    %log;
    BOOL ret = %orig;
    NSLog(@"Returning %@", ret ? @"YES" : @"NO");
    return ret;
}
%end
