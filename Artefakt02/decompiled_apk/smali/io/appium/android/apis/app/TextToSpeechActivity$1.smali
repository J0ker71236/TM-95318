.class Lio/appium/android/apis/app/TextToSpeechActivity$1;
.super Ljava/lang/Object;
.source "TextToSpeechActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/TextToSpeechActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/TextToSpeechActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/TextToSpeechActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/TextToSpeechActivity;

    .line 69
    iput-object p1, p0, Lio/appium/android/apis/app/TextToSpeechActivity$1;->this$0:Lio/appium/android/apis/app/TextToSpeechActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Lio/appium/android/apis/app/TextToSpeechActivity$1;->this$0:Lio/appium/android/apis/app/TextToSpeechActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/TextToSpeechActivity;->access$000(Lio/appium/android/apis/app/TextToSpeechActivity;)V

    .line 72
    return-void
.end method
