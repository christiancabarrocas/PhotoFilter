[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![License MIT](https://img.shields.io/dub/l/vibe-d.svg)
![Travis](https://img.shields.io/travis/christiancabarrocas/PhotoFilter.svg)
![Codecov branch](https://img.shields.io/codecov/c/github/christiancabarrocas/PhotoFilter/master.svg)

# PhotoFilter
CoreImage filter library provides a UIImageView extension with prebuilt image filters.

## Installation
You can install PhotoFilter via Carthage.
Add github "https://github.com/christiancabarrocas/PhotoFilter.git" to your Cartfile.


## Usage
   ```swift
   let imageView = UIImageView()
   let imageView.image = UImage(named:"test.png")
 
   imageView.blackAndWhite
   imageView.blur(radius:3.0)
   imageView.sepia(intensity:3.0)
   imageView.exposure(intensity:3.0)
   imageView.bloom(radius:2.0, intensity:1.0)
   ```
