.class public Lio/appium/android/apis/view/CheckableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CheckableFrameLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lio/appium/android/apis/view/CheckableFrameLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 37
    iput-boolean p1, p0, Lio/appium/android/apis/view/CheckableFrameLayout;->mChecked:Z

    .line 38
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xffff60

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/CheckableFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lio/appium/android/apis/view/CheckableFrameLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/CheckableFrameLayout;->setChecked(Z)V

    .line 47
    return-void
.end method
