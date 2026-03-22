.class Lio/appium/android/apis/accessibility/ClockBackService$1$1;
.super Ljava/lang/Object;
.source "ClockBackService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/accessibility/ClockBackService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/appium/android/apis/accessibility/ClockBackService$1;


# direct methods
.method constructor <init>(Lio/appium/android/apis/accessibility/ClockBackService$1;)V
    .locals 0
    .param p1, "this$1"    # Lio/appium/android/apis/accessibility/ClockBackService$1;

    .line 236
    iput-object p1, p0, Lio/appium/android/apis/accessibility/ClockBackService$1$1;->this$1:Lio/appium/android/apis/accessibility/ClockBackService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .param p1, "status"    # I

    .line 240
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$1$1;->this$1:Lio/appium/android/apis/accessibility/ClockBackService$1;

    iget-object v0, v0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v0}, Lio/appium/android/apis/accessibility/ClockBackService;->access$100(Lio/appium/android/apis/accessibility/ClockBackService;)V

    .line 241
    return-void
.end method
