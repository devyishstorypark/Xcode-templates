//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Common
import Foundation

class ___FILEBASENAME___ : UIViewController {

    let viewModel: ___FILEBASENAME___ViewModel

    let presenter: ___FILEBASENAME___Presenter

    let stringSource: ___FILEBASENAME___StringSource

    let theme: Theme

    init(viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel, presenter: ___FILEBASENAMEASIDENTIFIER___Presenter, stringSource: ___FILEBASENAMEASIDENTIFIER___StringSource, theme: Theme){
        
        self.viewModel = viewModel
        self.presenter = presenter
        self.stringSource = stringSource
        self.theme = theme
            
        super.init(nibName: nil, bundle: nil)

        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func commonInit() {

    }

    override public func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)

        presenter.present(controller: self, theme: theme)
    }

    override public func viewWillLayoutSubviews() {

        super.viewWillLayoutSubviews()

        presenter.layoutSubviews(controller: self)
    }
}

extension ___FILEBASENAME___ : Presentable {

    public func toPresent() -> UIViewController? {
        return self
    }
}