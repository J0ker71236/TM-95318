.class Lio/appium/android/apis/view/GameView$Obstacle;
.super Lio/appium/android/apis/view/GameView$Sprite;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Obstacle"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lio/appium/android/apis/view/GameView;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/GameView;)V
    .locals 2

    .line 746
    iput-object p1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->this$0:Lio/appium/android/apis/view/GameView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/view/GameView$Sprite;-><init>(Lio/appium/android/apis/view/GameView;Lio/appium/android/apis/view/GameView$1;)V

    .line 747
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    .line 748
    iget-object p1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x7f

    const/16 v1, 0xff

    invoke-virtual {p1, v1, v0, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 749
    iget-object p1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 750
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 762
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mDestroyAnimProgress:F

    const/16 v2, 0xff

    const/16 v3, 0x7f

    const/16 v4, 0x7f

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lio/appium/android/apis/view/GameView;->setPaintARGBBlend(Landroid/graphics/Paint;FIIIIIIII)V

    .line 765
    iget v0, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPositionX:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPositionY:F

    iget v2, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mSize:F

    iget v3, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mDestroyAnimProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    iget-object v3, p0, Lio/appium/android/apis/view/GameView$Obstacle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 767
    return-void
.end method

.method public getDestroyAnimDuration()F
    .locals 1

    .line 771
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public step(F)Z
    .locals 1
    .param p1, "tau"    # F

    .line 754
    invoke-super {p0, p1}, Lio/appium/android/apis/view/GameView$Sprite;->step(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    const/4 v0, 0x0

    return v0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView$Obstacle;->wrapAtPlayfieldBoundary()V

    .line 758
    const/4 v0, 0x1

    return v0
.end method
