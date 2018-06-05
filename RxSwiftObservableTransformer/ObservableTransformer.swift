import Foundation
import RxSwift

protocol ObservableTransformer {
    associatedtype Input
    associatedtype Output
    func apply(_ source: Observable<Input>) -> Observable<Output>
}
