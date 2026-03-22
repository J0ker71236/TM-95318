.class public Lio/appium/android/apis/view/Grid3$CheckableLayout;
.super Landroid/widget/FrameLayout;
.source "Grid3.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/Grid3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckableLayout"
.end annotation


# instance fields
.field private mChecked:Z

.field final synthetic this$0:Lio/appium/android/apis/view/Grid3;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/Grid3;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/Grid3;
    .param p2, "context"    # Landroid/content/Context;

    .line 111
    iput-object p1, p0, Lio/appium/android/apis/view/Grid3$CheckableLayout;->this$0:Lio/appium/android/apis/view/Grid3;

    .line 112
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lio/appium/android/apis/view/Grid3$CheckableLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 116
    iput-boolean p1, p0, Lio/appium/android/apis/view/Grid3$CheckableLayout;->mChecked:Z

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lio/appium/android/apis/view/Grid3$CheckableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Grid3$CheckableLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lio/appium/android/apis/view/Grid3$CheckableLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Grid3$CheckableLayout;->setChecked(Z)V

    .line 128
    return-void
.end method
