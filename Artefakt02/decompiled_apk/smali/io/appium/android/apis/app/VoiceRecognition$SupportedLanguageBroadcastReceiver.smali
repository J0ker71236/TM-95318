.class Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/VoiceRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupportedLanguageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/VoiceRecognition;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/app/VoiceRecognition;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->this$0:Lio/appium/android/apis/app/VoiceRecognition;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/app/VoiceRecognition;Lio/appium/android/apis/app/VoiceRecognition$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/app/VoiceRecognition;
    .param p2, "x1"    # Lio/appium/android/apis/app/VoiceRecognition$1;

    .line 177
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;-><init>(Lio/appium/android/apis/app/VoiceRecognition;)V

    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->this$0:Lio/appium/android/apis/app/VoiceRecognition;

    const/16 v1, 0x3e8

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 181
    const-string v0, "VoiceRecognition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, "extra":Landroid/os/Bundle;
    invoke-virtual {p0}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->this$0:Lio/appium/android/apis/app/VoiceRecognition;

    invoke-static {v1}, Lio/appium/android/apis/app/VoiceRecognition;->access$200(Lio/appium/android/apis/app/VoiceRecognition;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$1;-><init>(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_0
    if-nez v0, :cond_1

    .line 195
    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->this$0:Lio/appium/android/apis/app/VoiceRecognition;

    invoke-static {v1}, Lio/appium/android/apis/app/VoiceRecognition;->access$200(Lio/appium/android/apis/app/VoiceRecognition;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$2;-><init>(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_1
    const-string v1, "android.speech.extra.SUPPORTED_LANGUAGES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->this$0:Lio/appium/android/apis/app/VoiceRecognition;

    invoke-static {v1}, Lio/appium/android/apis/app/VoiceRecognition;->access$200(Lio/appium/android/apis/app/VoiceRecognition;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$3;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$3;-><init>(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_2
    const-string v1, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;->this$0:Lio/appium/android/apis/app/VoiceRecognition;

    invoke-static {v1}, Lio/appium/android/apis/app/VoiceRecognition;->access$200(Lio/appium/android/apis/app/VoiceRecognition;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$4;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver$4;-><init>(Lio/appium/android/apis/app/VoiceRecognition$SupportedLanguageBroadcastReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    :cond_3
    return-void
.end method
