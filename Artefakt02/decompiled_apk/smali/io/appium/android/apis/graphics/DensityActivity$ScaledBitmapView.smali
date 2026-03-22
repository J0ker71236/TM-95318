.class Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;
.super Landroid/view/View;
.source "DensityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/DensityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaledBitmapView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lio/appium/android/apis/graphics/DensityActivity;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/DensityActivity;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 199
    iput-object p1, p0, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->this$0:Lio/appium/android/apis/graphics/DensityActivity;

    .line 200
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 201
    iput-object p3, p0, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 202
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 215
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 217
    iget-object v0, p0, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 206
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 207
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 208
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 209
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v1

    iget-object v2, p0, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 210
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result v2

    .line 208
    invoke-virtual {p0, v1, v2}, Lio/appium/android/apis/graphics/DensityActivity$ScaledBitmapView;->setMeasuredDimension(II)V

    .line 211
    return-void
.end method
