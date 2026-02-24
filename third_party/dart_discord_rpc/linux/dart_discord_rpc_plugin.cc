#include "include/dart_discord_rpc/dart_discord_rpc_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#include <cstring>

#define DART_DISCORD_RPC_PLUGIN(obj)                                     \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), dart_discord_rpc_plugin_get_type(), \
                              DartDiscordRpcPlugin))

struct _DartDiscordRpcPlugin {
  GObject parent_instance;
};

G_DEFINE_TYPE(DartDiscordRpcPlugin, dart_discord_rpc_plugin,
              g_object_get_type())

static void dart_discord_rpc_plugin_handle_method_call(
    DartDiscordRpcPlugin* self, FlMethodCall* method_call) {
  fl_method_call_respond(
      method_call, FL_METHOD_RESPONSE(fl_method_not_implemented_response_new()),
      nullptr);
}

static void dart_discord_rpc_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(dart_discord_rpc_plugin_parent_class)->dispose(object);
}

static void dart_discord_rpc_plugin_class_init(
    DartDiscordRpcPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = dart_discord_rpc_plugin_dispose;
}

static void dart_discord_rpc_plugin_init(DartDiscordRpcPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  DartDiscordRpcPlugin* plugin = DART_DISCORD_RPC_PLUGIN(user_data);
  dart_discord_rpc_plugin_handle_method_call(plugin, method_call);
}

void dart_discord_rpc_plugin_register_with_registrar(
    FlPluginRegistrar* registrar) {
  DartDiscordRpcPlugin* plugin = DART_DISCORD_RPC_PLUGIN(
      g_object_new(dart_discord_rpc_plugin_get_type(), nullptr));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "dart_discord_rpc", FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(
      channel, method_call_cb, g_object_ref(plugin), g_object_unref);

  g_object_unref(plugin);
}
