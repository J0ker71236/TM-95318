.class Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$4;
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

.field final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    .line 215
    iput-object p1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$4;->this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    iput-object p2, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$4;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$4;->this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    iget-object v0, v0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->this$0:Lio/appium/android/apis/app/VoiceRecognition;

    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$4;->val$extra:Landroid/os/Bundle;

    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    .line 220
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Lio/appium/android/apis/app/VoiceRecognition;->access$400(Lio/appium/android/apis/app/VoiceRecognition;Ljava/lang/String;)V

    .line 221
    return-void
.end method
