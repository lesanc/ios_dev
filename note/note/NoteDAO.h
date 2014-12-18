//
//  NoteDAO.h
//  note
//
//  Created by lixianke on 14/12/18.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"
#import "sqlite3.h"

#define DEFILE_NAME @"NoteList.sqlite3"

@interface NoteDAO : NSObject {
    sqlite3 *db;
}

+ (NoteDAO *)sharedManager;

- (NSString *)applicationDocumentsDirectoryFile;

- (void)createEditableCopyOfDatabaseIfNeed;

- (int)create:(Note *)model;

- (int)remove:(Note *)model;

- (int)modify:(Note *)model;

- (NSMutableArray *)findAll;

- (Note *)findById:(Note *)model;

@end
