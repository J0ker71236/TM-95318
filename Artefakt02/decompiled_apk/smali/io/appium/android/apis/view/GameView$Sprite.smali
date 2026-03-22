.class abstract Lio/appium/android/apis/view/GameView$Sprite;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Sprite"
.end annotation


# instance fields
.field protected mDestroyAnimProgress:F

.field protected mDestroyed:Z

.field protected mPositionX:F

.field protected mPositionY:F

.field protected mSize:F

.field protected mVelocityX:F

.field protected mVelocityY:F

.field final synthetic this$0:Lio/appium/android/apis/view/GameView;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/view/GameView;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lio/appium/android/apis/view/GameView$Sprite;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/view/GameView;Lio/appium/android/apis/view/GameView$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/view/GameView;
    .param p2, "x1"    # Lio/appium/android/apis/view/GameView$1;

    .line 500
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/GameView$Sprite;-><init>(Lio/appium/android/apis/view/GameView;)V

    return-void
.end method


# virtual methods
.method public collidesWith(Lio/appium/android/apis/view/GameView$Sprite;)Z
    .locals 4
    .param p1, "other"    # Lio/appium/android/apis/view/GameView$Sprite;

    .line 533
    iget-boolean v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/GameView$Sprite;->distanceTo(Lio/appium/android/apis/view/GameView$Sprite;)F

    move-result v0

    iget v1, p0, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    iget v2, p1, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    iget v3, p1, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    .line 535
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 1

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyed:Z

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameView$Sprite;->step(F)Z

    .line 586
    return-void
.end method

.method public distanceTo(FF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 524
    iget v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    sub-float/2addr v0, p1

    iget v1, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    sub-float/2addr v1, p2

    invoke-static {v0, v1}, Lio/appium/android/apis/view/GameView;->pythag(FF)F

    move-result v0

    return v0
.end method

.method public distanceTo(Lio/appium/android/apis/view/GameView$Sprite;)F
    .locals 2
    .param p1, "other"    # Lio/appium/android/apis/view/GameView$Sprite;

    .line 528
    iget v0, p1, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    iget v1, p1, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/view/GameView$Sprite;->distanceTo(FF)F

    move-result v0

    return v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getDestroyAnimDuration()F
.end method

.method public isDestroyed()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyed:Z

    return v0
.end method

.method protected isOutsidePlayfield()Z
    .locals 5

    .line 560
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-virtual {v0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v0

    .line 561
    .local v0, "width":I
    iget-object v1, p0, Lio/appium/android/apis/view/GameView$Sprite;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-virtual {v1}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v1

    .line 562
    .local v1, "height":I
    iget v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_1

    int-to-float v4, v0

    cmpl-float v2, v2, v4

    if-gez v2, :cond_1

    iget v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_1

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 510
    iput p1, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    .line 511
    iput p2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    .line 512
    return-void
.end method

.method public setSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 520
    iput p1, p0, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    .line 521
    return-void
.end method

.method public setVelocity(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 515
    iput p1, p0, Lio/appium/android/apis/view/GameView$Sprite;->mVelocityX:F

    .line 516
    iput p2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mVelocityY:F

    .line 517
    return-void
.end method

.method public step(F)Z
    .locals 2
    .param p1, "tau"    # F

    .line 543
    iget v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Sprite;->mVelocityX:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    .line 544
    iget v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Sprite;->mVelocityY:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    .line 546
    iget-boolean v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 547
    iget v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyAnimProgress:F

    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView$Sprite;->getDestroyAnimDuration()F

    move-result v1

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyAnimProgress:F

    .line 548
    iget v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->mDestroyAnimProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 549
    const/4 v0, 0x0

    return v0

    .line 552
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected wrapAtPlayfieldBoundary()V
    .locals 6

    .line 567
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Sprite;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-virtual {v0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v0

    .line 568
    .local v0, "width":I
    iget-object v1, p0, Lio/appium/android/apis/view/GameView$Sprite;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-virtual {v1}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v1

    .line 569
    .local v1, "height":I
    :goto_0
    iget v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    iget v3, p0, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    neg-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    .line 570
    int-to-float v4, v0

    mul-float v3, v3, v5

    add-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    goto :goto_0

    .line 572
    :cond_0
    :goto_1
    iget v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    int-to-float v3, v0

    iget v4, p0, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    add-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    .line 573
    int-to-float v3, v0

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionX:F

    goto :goto_1

    .line 575
    :cond_1
    :goto_2
    iget v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    iget v3, p0, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    neg-float v4, v3

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    .line 576
    int-to-float v4, v1

    mul-float v3, v3, v5

    add-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    goto :goto_2

    .line 578
    :cond_2
    :goto_3
    iget v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    int-to-float v3, v1

    iget v4, p0, Lio/appium/android/apis/view/GameView$Sprite;->mSize:F

    add-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    .line 579
    int-to-float v3, v1

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lio/appium/android/apis/view/GameView$Sprite;->mPositionY:F

    goto :goto_3

    .line 581
    :cond_3
    return-void
.end method
