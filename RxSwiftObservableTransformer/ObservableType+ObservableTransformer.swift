import Foundation
import RxSwift

public extension ObservableType {
    func compose<T: ObservableTransformer, R>(_ transformer: T)  -> Observable<R> where T.Input == Self.E, R == T.Output  {
        return transformer.apply(self.asObservable())
    }
    
    func compose<T, R>(block: (Observable<T>) -> Observable<R>) -> Observable<R> where T == Self.E {
        return block(self.asObservable())
    }
}
