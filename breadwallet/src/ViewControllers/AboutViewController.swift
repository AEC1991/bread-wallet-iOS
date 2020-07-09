//
//  AboutViewController.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2017-04-05.
//  Copyright © 2017-2019 Breadwinner AG. All rights reserved.
//

import UIKit
import SafariServices

class AboutViewController: UIViewController {

    private let titleLabel = UILabel(font: .customBold(size: 26.0), color: .white)
    private let logo = UIImageView(image: #imageLiteral(resourceName: "LogoCutout").withRenderingMode(.alwaysTemplate))
    private let logoBackground = MotionGradientView()
    private let walletID = WalletIDCell()
    private let blog = AboutCell(text: S.About.blog)
    private let twitter = AboutCell(text: S.About.twitter)
    private let reddit = AboutCell(text: S.About.reddit)
    private let privacy = UIButton(type: .system)
    private let footer = UILabel.wrapping(font: .customBody(size: 13.0), color: Theme.primaryText)
    
    override func viewDidLoad() {
        addSubviews()
        addConstraints()
        setData()
        setActions()
    }

    private func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(logoBackground)
        logoBackground.addSubview(logo)
        view.addSubview(walletID)
        view.addSubview(blog)
        view.addSubview(twitter)
        view.addSubview(reddit)
        view.addSubview(privacy)
        view.addSubview(footer)
    }

    private func addConstraints() {
        titleLabel.constrain([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: C.padding[2]),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: C.padding[2]) ])
        logoBackground.constrain([
            logoBackground.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoBackground.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: C.padding[3]),
            logoBackground.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            logoBackground.heightAnchor.constraint(equalTo: logoBackground.widthAnchor, multiplier: logo.image!.size.height/logo.image!.size.width) ])
        logo.constrain(toSuperviewEdges: nil)
        
        let verticalMargin = (E.isIPhone6OrSmaller) ? C.padding[1] : C.padding[2]
        
        walletID.constrain([
            walletID.topAnchor.constraint(equalTo: logoBackground.bottomAnchor, constant: verticalMargin),
            walletID.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            walletID.trailingAnchor.constraint(equalTo: view.trailingAnchor) ])
        blog.constrain([
            blog.topAnchor.constraint(equalTo: walletID.bottomAnchor, constant: verticalMargin),
            blog.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blog.trailingAnchor.constraint(equalTo: view.trailingAnchor) ])
        twitter.constrain([
            twitter.topAnchor.constraint(equalTo: blog.bottomAnchor, constant: verticalMargin),
            twitter.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            twitter.trailingAnchor.constraint(equalTo: view.trailingAnchor) ])
        reddit.constrain([
            reddit.topAnchor.constraint(equalTo: twitter.bottomAnchor, constant: verticalMargin),
            reddit.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            reddit.trailingAnchor.constraint(equalTo: view.trailingAnchor) ])
        privacy.constrain([
            privacy.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            privacy.topAnchor.constraint(equalTo: reddit.bottomAnchor, constant: verticalMargin)])
        footer.constrain([
            footer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: C.padding[3]),
            footer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -C.padding[3]),
            footer.topAnchor.constraint(equalTo: privacy.bottomAnchor)])
    }

    private func setData() {
        view.backgroundColor = .darkBackground
        logo.tintColor = .darkBackground
        titleLabel.text = S.About.title
        privacy.setTitle(S.About.privacy, for: .normal)
        privacy.titleLabel?.font = UIFont.customBody(size: 13.0)
        privacy.tintColor = .primaryButton
        footer.textAlignment = .center
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String, let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            footer.text = String(format: S.About.footer, version, build)
        }
    }

    private func setActions() {
        blog.button.tap = strongify(self) { myself in
            myself.presentURL(string: "https://brd.com/blog/")
        }
        twitter.button.tap = strongify(self) { myself in
            myself.presentURL(string: "https://twitter.com/brdhq")
        }
        reddit.button.tap = strongify(self) { myself in
            myself.presentURL(string: "https://reddit.com/r/brdapp/")
        }
        privacy.tap = strongify(self) { myself in
            myself.presentURL(string: "https://brd.com/privacy")
        }
    }

    private func presentURL(string: String) {
        let vc = SFSafariViewController(url: URL(string: string)!)
        self.present(vc, animated: true, completion: nil)
    }
}
