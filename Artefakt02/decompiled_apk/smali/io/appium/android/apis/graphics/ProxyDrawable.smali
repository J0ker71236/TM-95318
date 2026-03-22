.class public Lio/appium/android/apis/graphics/ProxyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProxyDrawable.java"


# instance fields
.field private mMutated:Z

.field private mProxy:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "target"    # Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    iput-object p1, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public getProxy()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mMutated:Z

    .line 99
    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public setProxy(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "proxy"    # Landroid/graphics/drawable/Drawable;

    .line 38
    if-eq p1, p0, :cond_0

    .line 39
    iput-object p1, p0, Lio/appium/android/apis/graphics/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    .line 41
    :cond_0
    return-void
.end method
