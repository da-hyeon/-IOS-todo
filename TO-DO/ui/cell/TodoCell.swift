//
//  TodoCell.swift
//  TO-DO
//
//  Created by 황다현 on 2019/12/15.
//  Copyright © 2019 황다현. All rights reserved.
//

import Foundation
import UIKit

class TodoCell : UITableViewCell {

    var title: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()

    var startDate: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()

    var endDate: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setView()
    }

    override init(style: CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setView()
    }

    func bind(todo: Todo) {
        self.title.text = todo.title
        self.startDate.text = todo.startDate
        self.endDate.text = todo.endDate
    }
}

extension TodoCell {
    func setView(){
//
//        self.contentView.snp.makeConstraints { (make) in
//            make.edges.equalTo(superview!).offset(20)
//        }

        self.addSubview(self.title)
        self.addSubview(self.startDate)
        self.addSubview(self.endDate)


        self.title.snp.makeConstraints{ (make) in
            make.left.top.right.equalTo(superview!)
        }

        self.startDate.snp.makeConstraints{(make) in
            make.top.equalTo(self.title).offset(10)
            make.left.right.equalTo(self.title)
        }

        self.endDate.snp.makeConstraints{(make) in
            make.top.equalTo(self.startDate)
            make.left.equalTo(self.startDate.snp.right).offset(20)
            make.right.equalTo(self.title)
        }

    }
}
