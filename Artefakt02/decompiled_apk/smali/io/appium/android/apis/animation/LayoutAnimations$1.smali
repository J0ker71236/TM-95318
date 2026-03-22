.class Lio/appium/android/apis/animation/LayoutAnimations$1;
.super Ljava/lang/Object;
.source "LayoutAnimations.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/LayoutAnimations;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/LayoutAnimations;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimations;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/LayoutAnimations;

    .line 82
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimations$1;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 84
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimations$1;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "newButton":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimations$1;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    invoke-static {v1}, Lio/appium/android/apis/animation/LayoutAnimations;->access$008(Lio/appium/android/apis/animation/LayoutAnimations;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v1, Lio/appium/android/apis/animation/LayoutAnimations$1$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/animation/LayoutAnimations$1$1;-><init>(Lio/appium/android/apis/animation/LayoutAnimations$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimations$1;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    iget-object v1, v1, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations$1;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    iget-object v2, v2, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 92
    return-void
.end method
