.class Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;
.super Ljava/lang/Object;
.source "LayoutAnimationsHideShow.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .line 90
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-static {v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->access$000(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-static {v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->access$000(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-static {v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->access$100(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    .line 97
    const-wide/16 v0, 0x1f4

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-static {v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->access$200(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    .line 100
    const-wide/16 v0, 0x12c

    .line 102
    .local v0, "duration":J
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-static {v2}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->access$000(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 103
    return-void
.end method
