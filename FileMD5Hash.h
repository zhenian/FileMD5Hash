/*
 *  FileMD5Hash.h
 *  FileMD5Hash
 * 
 *  Copyright © 2010 Joel Lopes Da Silva. All rights reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 * 
 *        http://www.apache.org/licenses/LICENSE-2.0
 * 
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 */

#import <Foundation/Foundation.h>
#include <CoreFoundation/CoreFoundation.h>


// In bytes
#define FileHashDefaultChunkSizeForReadingData 4096


// Extern
#if defined(__cplusplus)
#define FILEMD5HASH_EXTERN extern "C"
#else
#define FILEMD5HASH_EXTERN extern
#endif

//---------------------------------------------------------
// Function declaration
//---------------------------------------------------------

FILEMD5HASH_EXTERN CFStringRef FileMD5HashCreateWithPath(CFStringRef filePath,
                                                         size_t chunkSizeForReadingData);


@interface FileMD5Hash : NSObject
+(NSString *)computeMD5HashOfFileInPath:(NSString *) filePath;
@end
