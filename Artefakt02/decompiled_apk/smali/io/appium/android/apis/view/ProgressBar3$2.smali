.class Lio/appium/android/apis/view/ProgressBar3$2;
.super Ljava/lang/Object;
.source "ProgressBar3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/ProgressBar3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/ProgressBar3;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/ProgressBar3;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/ProgressBar3;

    .line 56
    iput-object p1, p0, Lio/appium/android/apis/view/ProgressBar3$2;->this$0:Lio/appium/android/apis/view/ProgressBar3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/view/ProgressBar3$2;->this$0:Lio/appium/android/apis/view/ProgressBar3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/ProgressBar3;->showDialog(I)V

    .line 59
    return-void
.end method
