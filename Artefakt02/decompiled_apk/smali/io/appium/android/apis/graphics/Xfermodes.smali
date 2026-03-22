.class public Lio/appium/android/apis/graphics/Xfermodes;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "Xfermodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/Xfermodes$SampleView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    return-void
.end method

.method static makeDst(II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "w"    # I
    .param p1, "h"    # I

    .line 38
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 42
    .local v2, "p":Landroid/graphics/Paint;
    const/16 v3, -0x33bc

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    new-instance v3, Landroid/graphics/RectF;

    mul-int/lit8 v4, p0, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    mul-int/lit8 v5, p1, 0x3

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 44
    return-object v0
.end method

.method static makeSrc(II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "w"    # I
    .param p1, "h"    # I

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object v7, v2

    .line 53
    .local v7, "p":Landroid/graphics/Paint;
    const v2, -0x995501

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    div-int/lit8 v2, p0, 0x3

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x3

    int-to-float v3, v3

    mul-int/lit8 v4, p0, 0x13

    div-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    mul-int/lit8 v5, p1, 0x13

    div-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/Xfermodes$SampleView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Xfermodes;->setContentView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
