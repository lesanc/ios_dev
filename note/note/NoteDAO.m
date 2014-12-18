//
//  NoteDAO.m
//  note
//
//  Created by lixianke on 14/12/18.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "NoteDAO.h"

@implementation NoteDAO

+ (NoteDAO *)sharedManager {
    return nil;
}

- (NSString *)applicationDocumentsDirectoryFile {
    return @"";
}

- (void)createEditableCopyOfDatabaseIfNeed {
    NSString *writableDBPath = [self applicationDocumentsDirectoryFile];
    
    if (sqlite3_open([writableDBPath UTF8String], &db) != SQLITE_OK){
        sqlite3_close(db);
        NSAssert(NO, @"数据库打开失败。");
    } else {
        
    }
}

- (int)create:(Note *)model {
    return 0;
}

- (int)remove:(Note *)model {
    return 0;
}

- (int)modify:(Note *)model {
    return 0;
}

- (NSMutableArray *)findAll {
    return nil;
}

- (Note *)findById:(Note *)model {
    return nil;
}

@end
