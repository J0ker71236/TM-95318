.class Lio/appium/android/apis/view/GameView$1;
.super Ljava/lang/Object;
.source "GameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/GameView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/GameView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/GameView;

    .line 77
    iput-object p1, p0, Lio/appium/android/apis/view/GameView$1;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$1;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-virtual {v0}, Lio/appium/android/apis/view/GameView;->animateFrame()V

    .line 80
    return-void
.end method
