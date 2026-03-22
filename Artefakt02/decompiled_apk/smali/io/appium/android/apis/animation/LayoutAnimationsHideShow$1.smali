.class Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;
.super Ljava/lang/Object;
.source "LayoutAnimationsHideShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$hideGoneCB:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .line 67
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    iput-object p2, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;->val$hideGoneCB:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;->val$hideGoneCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method
