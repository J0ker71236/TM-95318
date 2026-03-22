.class Lio/appium/android/apis/view/VideoPlayerActivity$Content$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/VideoPlayerActivity$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/VideoPlayerActivity$Content;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/VideoPlayerActivity$Content;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/VideoPlayerActivity$Content;

    .line 74
    iput-object p1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content$1;->this$0:Lio/appium/android/apis/view/VideoPlayerActivity$Content;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content$1;->this$0:Lio/appium/android/apis/view/VideoPlayerActivity$Content;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setNavVisibility(Z)V

    .line 77
    return-void
.end method
