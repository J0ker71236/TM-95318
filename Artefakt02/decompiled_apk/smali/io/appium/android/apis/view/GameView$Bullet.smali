.class Lio/appium/android/apis/view/GameView$Bullet;
.super Lio/appium/android/apis/view/GameView$Sprite;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bullet"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lio/appium/android/apis/view/GameView;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/GameView;)V
    .locals 2

    .line 715
    iput-object p1, p0, Lio/appium/android/apis/view/GameView$Bullet;->this$0:Lio/appium/android/apis/view/GameView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/view/GameView$Sprite;-><init>(Lio/appium/android/apis/view/GameView;Lio/appium/android/apis/view/GameView$1;)V

    .line 716
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView$Bullet;->mPaint:Landroid/graphics/Paint;

    .line 717
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Bullet;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 719
    invoke-static {p1}, Lio/appium/android/apis/view/GameView;->access$300(Lio/appium/android/apis/view/GameView;)F

    move-result p1

    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/GameView$Bullet;->setSize(F)V

    .line 720
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 731
    iget-object v0, p0, Lio/appium/android/apis/view/GameView$Bullet;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lio/appium/android/apis/view/GameView$Bullet;->mDestroyAnimProgress:F

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static/range {v0 .. v9}, Lio/appium/android/apis/view/GameView;->setPaintARGBBlend(Landroid/graphics/Paint;FIIIIIIII)V

    .line 734
    iget v0, p0, Lio/appium/android/apis/view/GameView$Bullet;->mPositionX:F

    iget v1, p0, Lio/appium/android/apis/view/GameView$Bullet;->mPositionY:F

    iget v2, p0, Lio/appium/android/apis/view/GameView$Bullet;->mSize:F

    iget-object v3, p0, Lio/appium/android/apis/view/GameView$Bullet;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 735
    return-void
.end method

.method public getDestroyAnimDuration()F
    .locals 1

    .line 739
    const/high16 v0, 0x3e000000    # 0.125f

    return v0
.end method

.method public step(F)Z
    .locals 1
    .param p1, "tau"    # F

    .line 724
    invoke-super {p0, p1}, Lio/appium/android/apis/view/GameView$Sprite;->step(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    const/4 v0, 0x0

    return v0

    .line 727
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView$Bullet;->isOutsidePlayfield()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
