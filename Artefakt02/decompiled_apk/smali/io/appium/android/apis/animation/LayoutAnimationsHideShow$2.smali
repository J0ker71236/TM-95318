.class Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;
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


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .line 80
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    iget-object v1, v1, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    iget-object v1, v1, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
