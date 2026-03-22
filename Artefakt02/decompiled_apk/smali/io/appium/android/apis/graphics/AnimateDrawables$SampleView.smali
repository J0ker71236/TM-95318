.class Lio/appium/android/apis/graphics/AnimateDrawables$SampleView;
.super Landroid/view/View;
.source "AnimateDrawables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/AnimateDrawables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mDrawable:Lio/appium/android/apis/graphics/AnimateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/AnimateDrawables$SampleView;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/AnimateDrawables$SampleView;->setFocusableInTouchMode(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x43480000    # 200.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 50
    .local v1, "an":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 52
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 54
    new-instance v2, Lio/appium/android/apis/graphics/AnimateDrawable;

    invoke-direct {v2, v0, v1}, Lio/appium/android/apis/graphics/AnimateDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    iput-object v2, p0, Lio/appium/android/apis/graphics/AnimateDrawables$SampleView;->mDrawable:Lio/appium/android/apis/graphics/AnimateDrawable;

    .line 55
    invoke-virtual {v1}, Landroid/view/animation/Animation;->startNow()V

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/AnimateDrawables$SampleView;->mDrawable:Lio/appium/android/apis/graphics/AnimateDrawable;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/AnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/AnimateDrawables$SampleView;->invalidate()V

    .line 64
    return-void
.end method
