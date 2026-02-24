#include "include/dart_discord_rpc/dart_discord_rpc_plugin.h"
#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

namespace {

class DartDiscordRpcPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows* registrar);

  DartDiscordRpcPlugin();

  virtual ~DartDiscordRpcPlugin();

 private:
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue>& method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

void DartDiscordRpcPlugin::RegisterWithRegistrar(
    flutter::PluginRegistrarWindows* registrar) {
  auto channel =
      std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          registrar->messenger(), "dart_discord_rpc",
          &flutter::StandardMethodCodec::GetInstance());

  auto plugin = std::make_unique<DartDiscordRpcPlugin>();

  channel->SetMethodCallHandler([plugin_pointer = plugin.get()](
      const auto& call, auto result) {
    plugin_pointer->HandleMethodCall(call, std::move(result));
  });

  registrar->AddPlugin(std::move(plugin));
}

DartDiscordRpcPlugin::DartDiscordRpcPlugin() {}

DartDiscordRpcPlugin::~DartDiscordRpcPlugin() {}

void DartDiscordRpcPlugin::HandleMethodCall(
    const flutter::MethodCall<flutter::EncodableValue>& method_call,
    std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result) {
  result->NotImplemented();
}
}

void DartDiscordRpcPluginRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  DartDiscordRpcPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
