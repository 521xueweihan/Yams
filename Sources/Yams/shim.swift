//
//  shim.swift
//  Yams
//
//  Created by Norio Nomura 1/27/18.
//  Copyright (c) 2018 Yams. All rights reserved.
//

#if (!swift(>=4.1) && swift(>=4.0)) || !swift(>=3.3)

    extension Array {
        func compactMap(_ transform: (Element) throws -> String?) rethrows -> [String] {
            return try flatMap(transform)
        }
    }

    extension LazyMapCollection {
        func compactMap(_ transform: (Element) throws -> String?) rethrows -> [String] {
            return try flatMap(transform)
        }
    }

    extension Sequence {
        func compactMap<ElementOfResult>(
            _ transform: (Self.Element
            ) throws -> ElementOfResult?) rethrows -> [ElementOfResult] {
            return try flatMap(transform)
        }
    }

#endif
