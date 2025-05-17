//
//  ImageClassification.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 5/17/25.
//

import CoreML
import Vision
import UIKit

func classifyImage(_ image: UIImage, completion: @escaping (String?) -> Void) {
    guard let model = try? VNCoreMLModel(for: TinyObjectDetector().model) else {
        print("模型加载失败")
        completion(nil)
        return
    }

    let request = VNCoreMLRequest(model: model) { request, error in
        if let error = error {
            print("VNCoreMLRequest error: \(error)")
            completion(nil)
            return
        }

        // 处理目标检测结果
        if let results = request.results as? [VNRecognizedObjectObservation],
           let topResult = results.first {
            let label = topResult.labels.first?.identifier ?? "Unknown"
            print("检测结果: \(label)")
            completion(label)
        } else if let results = request.results as? [VNClassificationObservation],
                  let topResult = results.first {
            // fallback: 分类模型也支持
            print("分类结果: \(topResult.identifier)")
            completion(topResult.identifier)
        } else {
            print("无法识别结果")
            completion(nil)
        }
    }

    guard let ciImage = CIImage(image: image) else {
        print("无法创建 CIImage")
        completion(nil)
        return
    }

    let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
    DispatchQueue.global(qos: .userInitiated).async {
        do {
            try handler.perform([request])
        } catch {
            print("执行分类失败: \(error)")
            completion(nil)
        }
    }
}
