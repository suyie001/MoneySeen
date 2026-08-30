# MoneySeen 开发指南

## 环境

- Flutter stable 3.47.1 或兼容的更新 stable 版本。
- Dart 3.13.1 或兼容版本。
- Dart Frog CLI 1.2.14 或兼容版本。
- Java 17 至 24，用于 Android 构建。
- Xcode 当前稳定版，用于 iOS 构建。

应用标识当前为：

- Android：`com.suyie.moneyseen`
- iOS：`com.suyie.moneyseen`

首次提交 App Store 或 Google Play 前，需要再次确认标识和开发者账号归属。提交商店后不要修改标识。

## 初始化

```bash
flutter pub get
dart run melos bootstrap
```

代码生成文件提交到 Git。修改 Freezed、JSON 或 Drift schema 后运行：

```bash
dart run melos run generate
```

## 运行

### Flutter Web

```bash
cd apps/moneyseen_app
flutter run -d chrome
```

运行后可从首页进入“导入微信账单”，选择微信支付导出的 `.xlsx` 文件。
解析过程在设备本地完成；确认导入前不会写入数据库。重复判断优先使用微信交易单号。

### iOS

```bash
cd apps/moneyseen_app
flutter run -d ios
```

### Android

```bash
cd apps/moneyseen_app
flutter run -d android
```

### Dart Frog API

```bash
cd services/api
dart_frog dev
```

默认地址为 `http://localhost:8080`。当前可用端点：

- `GET /`
- `GET /health`
- `GET /ready`
- `GET /v1/config`
- `POST /v1/classifications/batch`，当前返回尚未配置模型。

## 质量检查

```bash
dart format .
flutter analyze
dart run melos run test
dart run melos run test:flutter
```

构建 Web：

```bash
cd apps/moneyseen_app
flutter build web --release
```

## Web 数据库资源

Flutter Web 使用 Drift + SQLite WebAssembly：

- `apps/moneyseen_app/web/sqlite3.wasm` 来自 `sqlite3` 3.5.2 官方 release。
- `apps/moneyseen_app/web/drift_worker.dart.js` 来自 `drift` 2.34.3 package。

当前 SHA-256：

```text
sqlite3.wasm          13d3f11d05b39ba0618a7115fb41640a5d48b6300f5d3f325f554b42bd6688a4
drift_worker.dart.js  4db0469de8ceabad8d5cd3d920614486ba587e100e39523f36f704a3aec5f26c
```

升级 Drift 或 sqlite3 时必须同时更新资源、校验和、Web 构建与浏览器持久化测试。

## Workspace 约束

- `moneyseen_domain` 不依赖 Flutter、数据库或 HTTP。
- `moneyseen_api_contracts` 仅包含版本化请求和响应 DTO。
- UI 不直接访问 Drift 或 Dart Frog。
- Service 包装外部系统，Repository 转换为领域模型。
- 复杂且可复用的跨 Repository 逻辑才进入 Use Case。
- 真实个人账单不得提交到 Git。

完整设计见 [系统架构](architecture.md)。
