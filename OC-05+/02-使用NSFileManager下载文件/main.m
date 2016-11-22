//
//  main.m
//  02-使用NSFileManager下载文件
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *nfm = [NSFileManager defaultManager];
        [nfm createFileAtPath:@"/Users/apple/Desktop/img.jpg" contents:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://f.hiphotos.baidu.com/image/pic/item/a8014c086e061d9507500dd67ff40ad163d9cacd.jpg"]] attributes:nil];
        
        // <img class="currentImg" onload="alog &amp;&amp; alog('speed.set', 'c_firstPageComplete', +new Date); alog.fire &amp;&amp; alog.fire('mark');" src="http://f.hiphotos.baidu.com/image/pic/item/a8014c086e061d9507500dd67ff40ad163d9cacd.jpg" width="499" height="716" log-rightclick="p=5.102" title="点击查看源网页" style="cursor: pointer; width: 205.29500756429653px; height: 295px; top: 0px; left: 349.35249621785175px; display: block;">
    }
    return 0;
}
