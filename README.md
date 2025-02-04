# CombineX

CombineX is an open source implementation for Apple's [Combine](https://developer.apple.com/documentation/combine) specs.

## Notice

This is an experimental project and currently under heavy development , so **DO NOT use it in production!**

## Why

1. Combine is closed source.
2. Combine is apple platform only.
3. Combine needs macOS 10.15, iOS 13.

## Goal

Making it no longer have the limitations of the platform and os version. 

CombineX will try to provide:

1. ~100% identical behavior to the Apple Combine.
2. Clear code and complete comments.
3. More useful extensions(in a separate target maybe).

When CombineX is officially released, all you need to do is:

```swift
#if CAN_USE_COMBINE
import Combine
#else
import CombineX
#endif
```

## Contribute

CombineX is always looking for collaborators! 

You can:

1. Implement new operators.
2. Add more compatibility tests to find behavior different from Apple Combine.
3. Fix bugs.
4. ...Anything you think can make CombineX better!

Since some people may not have macOS 10.15 beta installed, the recommended contributing way is: 

1. Fork the project.
2. Open `Specs/Specs.xcworkspace`, make your changes under `CombineX.xcodeproje`. 
3. All tests go `Specs/SpecsTests`. Make sure both scheme `Specs` and scheme `CombineSpecs` pass the test you wrote.

## State

### General

| API | Status | Test | Notes |
|:--|:--|:--|:--|
|`AnyCancellable`| done | done |   |
|`AnyPublisher`| done |   |   |
|`AnySubject`| done |   |   |
|`AnySubscriber`| done | done |   |
|`Cancellable`| done | no need |   |
|`CombineIdentifier`| done |   |   |
|`ConnectablePublisher`| done |   |   |
|`CustomCombineIdentifierConvertible`| done | no need |   |
|`Publisher`| done | no need |   |
|`Scheduler`| done | no need |   |
|`SchedulerTimeIntervalConvertible`| done | no need |   |
|`Subject`| done | no need |   |
|`Subscriber`| done | no need |   |
|`Subscription`| done | no need |   |


### Publishers

| API | Status | Test | Notes |
|:--|:--|:--|:--|
|`Autoconnect`|   |   |   |
|`Empty`| done | done |   |
|`FlatMap`| done | basic |   |
|`Just`| done | done |   |
|`Map`| done | done |   |
|`MapError`| done |   |   |
|`Merge`| done |   |   |
|`Once`| done | done |   |
|`Publishers`| done |   |   |
|`Sequence`| done | done |   |
|`SubscribeOn`|   |   |   |
|`TryMap`| done |   |   |
|`assign`| done | done |   |
|`sink`| done | done |   |

### Schedulers

| API | Status | Test | Notes |
|:--|:--|:--|:--|
|`ImmediateScheduler`| done |   |   |

### Subjects

| API | Status | Test | Notes |
|:--|:--|:--|:--|
|`CurrentValueSubject`| done | done |   |
|`PassthroughSubject`| done | done |   |

### Subscribers

| API | Status | Test | Notes |
|:--|:--|:--|:--|
|`Assign`| done | done  |   |
|`Demand`| done | almost done |   |
|`Sink`| done | done |   |
|`Subscribers`| done  | no need |   |

### Subscriptions

| API | Status | Test | Notes |
|:--|:--|:--|:--|
|`empty`| done  |   |   |
|`Subscriptions`| done  | no need |   |
