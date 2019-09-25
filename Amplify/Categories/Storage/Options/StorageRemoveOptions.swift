//
// Copyright 2018-2019 Amazon.com,
// Inc. or its affiliates. All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// StorageRemoveOptions specifies additional options when removing an object from storage.
public struct StorageRemoveOptions {

    // Access level of the storage system.
    public let accessLevel: StorageAccessLevel?

    // Extra plugin specific options, only used in special circumstances when the existing options do not provide
    // a way to utilize the underlying storage system's functionality. See plugin documentation for expected key/values
    public let pluginOptions: Any?

    public init(accessLevel: StorageAccessLevel?, pluginOptions: Any? = nil) {
        self.accessLevel = accessLevel
        self.pluginOptions = pluginOptions
    }
}