import Foundation

#if canImport(ObjectiveC)

private var deinit_observer_key: Void = ()

class DeinitObserver {
    
    private var body: (() -> Void)?
    
    private init(_ body: @escaping () -> Void) {
        self.body = body
    }
    
    @discardableResult
    static func observe(_ observable: AnyObject, whenDeinit body: @escaping () -> Void) -> DeinitObserver {
        let observer = DeinitObserver(body)
        objc_setAssociatedObject(observable, &deinit_observer_key, observer, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        return observer
    }
    
    deinit {
        self.body?()
    }
}

#endif
