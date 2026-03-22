.class Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$1;
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

    .line 186
    iput-object p1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$1;->this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 189
    iget-object v0, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$1;->this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$1;->this$1:Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;

    invoke-virtual {v2}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->access$100(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;Ljava/lang/String;)V

    .line 190
    return-void
.end method
