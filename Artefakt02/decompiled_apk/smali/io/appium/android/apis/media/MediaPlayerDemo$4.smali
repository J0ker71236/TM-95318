.class Lio/appium/android/apis/media/MediaPlayerDemo$4;
.super Ljava/lang/Object;
.source "MediaPlayerDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/media/MediaPlayerDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/media/MediaPlayerDemo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/media/MediaPlayerDemo;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/media/MediaPlayerDemo;

    .line 89
    iput-object p1, p0, Lio/appium/android/apis/media/MediaPlayerDemo$4;->this$0:Lio/appium/android/apis/media/MediaPlayerDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo$4;->this$0:Lio/appium/android/apis/media/MediaPlayerDemo;

    const-class v2, Lio/appium/android/apis/media/MediaPlayerDemo_Video;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "media"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo$4;->this$0:Lio/appium/android/apis/media/MediaPlayerDemo;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/media/MediaPlayerDemo;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
