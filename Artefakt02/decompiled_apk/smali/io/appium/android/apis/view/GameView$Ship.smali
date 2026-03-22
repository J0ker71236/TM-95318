.class Lio/appium/android/apis/view/GameView$Ship;
.super Lio/appium/android/apis/view/GameView$Sprite;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ship"
.end annotation


# static fields
.field private static final CORNER_ANGLE:F = 2.0943952f

.field private static final TO_DEGREES:F = 57.29578f


# instance fields
.field private mHeadingAngle:F

.field private mHeadingMagnitude:F

.field private mHeadingX:F

.field private mHeadingY:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field final synthetic this$0:Lio/appium/android/apis/view/GameView;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/GameView;)V
    .locals 5

    .line 601
    iput-object p1, p0, Lio/appium/android/apis/view/GameView$Ship;->this$0:Lio/appium/android/apis/view/GameView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/view/GameView$Sprite;-><init>(Lio/appium/android/apis/view/GameView;Lio/appium/android/apis/view/GameView$1;)V

    .line 602
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mPaint:Landroid/graphics/Paint;

    .line 603
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 605
    invoke-virtual {p1}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p1}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lio/appium/android/apis/view/GameView$Ship;->setPosition(FF)V

    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lio/appium/android/apis/view/GameView$Ship;->setVelocity(FF)V

    .line 607
    invoke-static {p1}, Lio/appium/android/apis/view/GameView;->access$100(Lio/appium/android/apis/view/GameView;)F

    move-result p1

    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/GameView$Ship;->setSize(F)V

    .line 609
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPath:Landroid/graphics/Path;

    .line 610
    iget-object p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 611
    iget-object p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPath:Landroid/graphics/Path;

    const-wide v1, -0x3fff3eadc0000000L    # -2.094395160675049

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lio/appium/android/apis/view/GameView$Ship;->mSize:F

    mul-float v3, v3, v4

    .line 612
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lio/appium/android/apis/view/GameView$Ship;->mSize:F

    mul-float v1, v1, v2

    .line 611
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 613
    iget-object p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mSize:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 614
    iget-object p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPath:Landroid/graphics/Path;

    const-wide v1, 0x4000c15240000000L    # 2.094395160675049

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lio/appium/android/apis/view/GameView$Ship;->mSize:F

    mul-float v3, v3, v4

    .line 615
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lio/appium/android/apis/view/GameView$Ship;->mSize:F

    mul-float v1, v1, v2

    .line 614
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 616
    iget-object p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 617
    return-void
.end method

.method private polarX(F)F
    .locals 2
    .param p1, "radius"    # F

    .line 643
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p1

    return v0
.end method

.method private polarY(F)F
    .locals 2
    .param p1, "radius"    # F

    .line 647
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p1

    return v0
.end method

.method private updateHeading()V
    .locals 4

    .line 636
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingX:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingY:F

    invoke-static {v0, v1}, Lio/appium/android/apis/view/GameView;->pythag(FF)F

    move-result v0

    iput v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingMagnitude:F

    .line 637
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingMagnitude:F

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 638
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingY:F

    float-to-double v0, v0

    iget v2, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingAngle:F

    .line 640
    :cond_0
    return-void
.end method


# virtual methods
.method public accelerate(FFF)V
    .locals 4
    .param p1, "tau"    # F
    .param p2, "maxThrust"    # F
    .param p3, "maxSpeed"    # F

    .line 667
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingMagnitude:F

    mul-float v0, v0, p2

    .line 668
    .local v0, "thrust":F
    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityX:F

    invoke-direct {p0, v0}, Lio/appium/android/apis/view/GameView$Ship;->polarX(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityX:F

    .line 669
    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityY:F

    invoke-direct {p0, v0}, Lio/appium/android/apis/view/GameView$Ship;->polarY(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityY:F

    .line 671
    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityX:F

    iget v2, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityY:F

    invoke-static {v1, v2}, Lio/appium/android/apis/view/GameView;->pythag(FF)F

    move-result v1

    .line 672
    .local v1, "speed":F
    cmpl-float v2, v1, p3

    if-lez v2, :cond_0

    .line 673
    div-float v2, p3, v1

    .line 674
    .local v2, "scale":F
    iget v3, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityX:F

    mul-float v3, v3, v2

    iput v3, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityX:F

    .line 675
    iget v3, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityY:F

    mul-float v3, v3, v2

    iput v3, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityY:F

    .line 677
    .end local v2    # "scale":F
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 707
    invoke-super {p0}, Lio/appium/android/apis/view/GameView$Sprite;->destroy()V

    .line 708
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Ship;->this$0:Lio/appium/android/apis/view/GameView;

    invoke-static {v0}, Lio/appium/android/apis/view/GameView;->access$200(Lio/appium/android/apis/view/GameView;)V

    .line 709
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 689
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mDestroyAnimProgress:F

    const/16 v2, 0xff

    const/16 v3, 0x3f

    const/16 v4, 0xff

    const/16 v5, 0x3f

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lio/appium/android/apis/view/GameView;->setPaintARGBBlend(Landroid/graphics/Paint;FIIIIIIII)V

    .line 693
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 694
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mPositionX:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPositionY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 695
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingAngle:F

    const v1, 0x42652ee1

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 696
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 698
    return-void
.end method

.method public getBulletInitialX()F
    .locals 2

    .line 651
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mPositionX:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mSize:F

    invoke-direct {p0, v1}, Lio/appium/android/apis/view/GameView$Ship;->polarX(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getBulletInitialY()F
    .locals 2

    .line 655
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mPositionY:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Ship;->mSize:F

    invoke-direct {p0, v1}, Lio/appium/android/apis/view/GameView$Ship;->polarY(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getBulletVelocityX(F)F
    .locals 2
    .param p1, "relativeSpeed"    # F

    .line 659
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityX:F

    invoke-direct {p0, p1}, Lio/appium/android/apis/view/GameView$Ship;->polarX(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getBulletVelocityY(F)F
    .locals 2
    .param p1, "relativeSpeed"    # F

    .line 663
    iget v0, p0, Lio/appium/android/apis/view/GameView$Ship;->mVelocityY:F

    invoke-direct {p0, p1}, Lio/appium/android/apis/view/GameView$Ship;->polarY(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getDestroyAnimDuration()F
    .locals 1

    .line 702
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public setHeading(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 630
    iput p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingX:F

    .line 631
    iput p2, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingY:F

    .line 632
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView$Ship;->updateHeading()V

    .line 633
    return-void
.end method

.method public setHeadingX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 620
    iput p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingX:F

    .line 621
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView$Ship;->updateHeading()V

    .line 622
    return-void
.end method

.method public setHeadingY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 625
    iput p1, p0, Lio/appium/android/apis/view/GameView$Ship;->mHeadingY:F

    .line 626
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView$Ship;->updateHeading()V

    .line 627
    return-void
.end method

.method public step(F)Z
    .locals 1
    .param p1, "tau"    # F

    .line 681
    invoke-super {p0, p1}, Lio/appium/android/apis/view/GameView$Sprite;->step(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    const/4 v0, 0x0

    return v0

    .line 684
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView$Ship;->wrapAtPlayfieldBoundary()V

    .line 685
    const/4 v0, 0x1

    return v0
.end method
