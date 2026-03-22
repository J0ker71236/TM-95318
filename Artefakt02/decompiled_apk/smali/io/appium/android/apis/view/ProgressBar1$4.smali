.class Lio/appium/android/apis/view/ProgressBar1$4;
.super Ljava/lang/Object;
.source "ProgressBar1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/ProgressBar1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/ProgressBar1;

.field final synthetic val$progressHorizontal:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/ProgressBar1;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/ProgressBar1;

    .line 75
    iput-object p1, p0, Lio/appium/android/apis/view/ProgressBar1$4;->this$0:Lio/appium/android/apis/view/ProgressBar1;

    iput-object p2, p0, Lio/appium/android/apis/view/ProgressBar1$4;->val$progressHorizontal:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/view/ProgressBar1$4;->val$progressHorizontal:Landroid/widget/ProgressBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/view/ProgressBar1$4;->this$0:Lio/appium/android/apis/view/ProgressBar1;

    iget-object v1, p0, Lio/appium/android/apis/view/ProgressBar1$4;->val$progressHorizontal:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/ProgressBar1;->setSecondaryProgress(I)V

    .line 80
    return-void
.end method
