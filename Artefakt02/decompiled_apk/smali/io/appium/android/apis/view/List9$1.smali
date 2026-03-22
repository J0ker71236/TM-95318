.class Lio/appium/android/apis/view/List9$1;
.super Ljava/lang/Object;
.source "List9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/List9;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/List9;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/List9;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/List9;

    .line 76
    iput-object p1, p0, Lio/appium/android/apis/view/List9$1;->this$0:Lio/appium/android/apis/view/List9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/view/List9$1;->this$0:Lio/appium/android/apis/view/List9;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/appium/android/apis/view/List9;->access$202(Lio/appium/android/apis/view/List9;Z)Z

    .line 80
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x2

    const/16 v6, 0x18

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 86
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lio/appium/android/apis/view/List9$1;->this$0:Lio/appium/android/apis/view/List9;

    invoke-static {v1}, Lio/appium/android/apis/view/List9;->access$400(Lio/appium/android/apis/view/List9;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/view/List9$1;->this$0:Lio/appium/android/apis/view/List9;

    invoke-static {v2}, Lio/appium/android/apis/view/List9;->access$300(Lio/appium/android/apis/view/List9;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method
