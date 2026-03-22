.class Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "VoiceRecognition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    .line 195
    iput-object p1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$2;->this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$2;->this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    const-string v1, "No extra"

    invoke-static {v0, v1}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->access$100(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;Ljava/lang/String;)V

    .line 199
    return-void
.end method
