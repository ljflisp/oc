#import <Foundation/Foundation.h>
#import "ljflisp.m"

int main() {
  clojure *approximator = [[clojure alloc]init];
  for(int i = 0; i < 150000; i++) {
    [approximator iterate];
  }
  double result = [approximator getPi];
  NSLog(@"\npi = %.15f\n", result);
  return 0;
}