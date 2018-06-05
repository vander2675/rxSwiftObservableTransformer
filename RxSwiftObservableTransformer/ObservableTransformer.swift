import Foundation
import RxSwift

public protocol ObservableTransformer {
    associatedtype Input
    associatedtype Output
    func apply(_ source: Observable<Input>) -> Observable<Output>
}
