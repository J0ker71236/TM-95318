.class Lio/appium/android/apis/content/ClipboardSample$1;
.super Ljava/lang/Object;
.source "ClipboardSample.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/content/ClipboardSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/content/ClipboardSample;


# direct methods
.method constructor <init>(Lio/appium/android/apis/content/ClipboardSample;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/content/ClipboardSample;

    .line 50
    iput-object p1, p0, Lio/appium/android/apis/content/ClipboardSample$1;->this$0:Lio/appium/android/apis/content/ClipboardSample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 2

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/content/ClipboardSample$1;->this$0:Lio/appium/android/apis/content/ClipboardSample;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/content/ClipboardSample;->updateClipData(Z)V

    .line 53
    return-void
.end method
