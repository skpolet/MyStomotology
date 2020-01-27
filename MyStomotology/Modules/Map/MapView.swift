//
//  MapView.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 22.10.2019.
//  Copyright © 2019 Mikhailov. All rights reserved.
//

import Foundation
import AsyncDisplayKit
import GoogleMaps

class MapView: ASViewController<ASDisplayNode> {
    
    init() {
        super.init(node: MapNode())
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //assembler.assemble(with: self)
        //presenter.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
}

class MapNode: ASDisplayNode {
    
    private lazy var mapNode = ASDisplayNode(viewBlock: { () -> UIView in
        let location = CLLocationCoordinate2D(latitude: 35.727541, longitude: 51.488807)
        let camera = GMSCameraPosition.camera(withLatitude: location.latitude, longitude: location.longitude, zoom: 14)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        // add event location on the map
        let marker = GMSMarker()
        
        marker.position = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        marker.map = mapView
        
        return mapView
    })
    
    override required init() {
        super.init()
        automaticallyManagesSubnodes = true
        backgroundColor = .white
    }
}

extension MapNode {
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        
        return ASCenterLayoutSpec(centeringOptions: ASCenterLayoutSpecCenteringOptions.XY, sizingOptions: ASCenterLayoutSpecSizingOptions.minimumXY, child: mapNode)
    }
}
