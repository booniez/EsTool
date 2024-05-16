
#!/bin/bash

NEW_VERSION=$1

if [[ -z "$NEW_VERSION" ]]; then
    echo "Error: Version argument is required"
    exit 1
fi

# 1. 更新podspec文件中的版本号
sed -i '' "s/s.version          = .*/s.version          = '$NEW_VERSION'/g" EsTool.podspec

if ! git diff --quiet HEAD EsTool.podspec; then
    echo "Podspec has been updated to version $NEW_VERSION"
    
    # 2. 提交改动到git，并打上新的tag
    git commit -am "Update to version $NEW_VERSION"
    git tag $NEW_VERSION
    git push origin master --tags
else
    echo "No changes in podspec. Exiting..."
    exit 1
fi

# 3. 检查podspec文件是否有效
pod lib lint EsTool.podspec --allow-warnings

if [[ $? -ne 0 ]]; then
    echo "Error: Podspec lint failed"
    exit 1
fi

# 4. 推送到CocoaPods私有库
pod repo push booniez-esspecs EsTool.podspec --allow-warnings

if [[ $? -ne 0 ]]; then
    echo "Error: Pushing podspec to repo failed"
    exit 1
else
    echo "Podspec pushed to repo successfully."
fi
