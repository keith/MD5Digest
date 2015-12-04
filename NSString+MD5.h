//
//  NSString+MD5.h
//
//  Created by Keith Smiley on 3/25/13.
//  Copyright (c) 2013 Keith Smiley. All rights reserved.
//

@import Foundation;


#ifdef NS_ASSUME_NONNULL_BEGIN
#define MD5_DIGEST_ASSUME_NONNULL_BEGIN NS_ASSUME_NONNULL_BEGIN
#else
#define MD5_DIGEST_ASSUME_NONNULL_BEGIN
#endif

#ifdef NS_ASSUME_NONNULL_END
#define MD5_DIGEST_ASSUME_NONNULL_END NS_ASSUME_NONNULL_END
#else
#define MD5_DIGEST_ASSUME_NONNULL_END
#endif

MD5_DIGEST_ASSUME_NONNULL_BEGIN

@interface NSString (MD5)

- (NSString *)MD5Digest;

@end

MD5_DIGEST_ASSUME_NONNULL_END
