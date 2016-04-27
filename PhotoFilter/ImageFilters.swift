//
//  ImageFilters.swift
//  CFilters
//
//  Created by Christian Cabarrocas on 05/11/15.
//  Copyright © 2016 Wasabilabs.
//

public extension UIImageView {
    
    typealias Filter = CIImage -> CIImage

    public func blackAndWhite () {
        let filter = CIFilter(name:"CIPhotoEffectNoir")
        let context = CIContext(options: nil)
        let ciImage = CIImage(image:self.image!)
        filter!.setValue(ciImage, forKey: kCIInputImageKey)
        let imageSize:CGRect = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.width*2, self.frame.height*2)
        self.image = UIImage(CGImage: context.createCGImage(filter!.outputImage!, fromRect: imageSize))
    }

    public func blur(radius:Double) -> Filter {
        
        return { image in
            let parameters = [kCIInputRadiusKey:radius,kCIInputImageKey:image]
            let filter = CIFilter(name: "CIGaussianBlur",withInputParameters:parameters)
            return filter!.outputImage!
        }
    }
    
    public func sepia(intensity:Double) -> Filter {
        return { image in
            let parameters = [kCIInputIntensityKey:intensity,kCIInputImageKey:image]
            let filter = CIFilter(name: "CISepiaTone",withInputParameters:parameters)
            return filter!.outputImage!
        }
    }
    
    public func bloom(radius:Double,intensity:Double) -> Filter {
        return { image in
            let parameters = [kCIInputIntensityKey:intensity,kCIInputImageKey:image,kCIInputRadiusKey:radius]
            let filter = CIFilter(name: "CIBloom",withInputParameters:parameters)
            return filter!.outputImage!
        }
    }
    
    public func exposure(intensity:Double) -> Filter {
        return { image in
            let parameters = [kCIInputEVKey:intensity, kCIInputImageKey:image]
            let filter = CIFilter(name: "CIExposureAdjust", withInputParameters: parameters)
            return filter!.outputImage!
        }
    }
}
