// --------------------------------------------------------------------------
//
// Copyright (c) Microsoft Corporation. All rights reserved.
//
// The MIT License (MIT)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the ""Software""), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED *AS IS*, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.
//
// --------------------------------------------------------------------------
#if canImport(AzureCore)
    import AzureCore
#endif
import Foundation

@objcMembers public class  CommunicationCloudEnvironment: NSObject {
    private(set) var environmentValue: String

    public static let Public = CommunicationCloudEnvironment(environmentValue: "public")
    public static let Dod = CommunicationCloudEnvironment(environmentValue: "dod")
    public static let Gcch = CommunicationCloudEnvironment(environmentValue: "gcch")

    public init(environmentValue: String) {
        self.environmentValue = environmentValue
    }

    static func fromModel(environmentModel: CommunicationCloudEnvironmentModel) -> CommunicationCloudEnvironment {
        return CommunicationCloudEnvironment(environmentValue: environmentModel.requestString);
    }

    public static func == (lhs: CommunicationCloudEnvironment, rhs: CommunicationCloudEnvironment) -> Bool {
        if lhs.environmentValue == rhs.environmentValue {
            return true
        } else {
            return false
        }
    }
}

// CommunicationCloudEnvironmentModel Extension
extension CommunicationCloudEnvironmentModel {
    public static let Public = CommunicationCloudEnvironmentModel("public")
    public static let Dod = CommunicationCloudEnvironmentModel("dod")
    public static let Gcch = CommunicationCloudEnvironmentModel("gcch")
}
