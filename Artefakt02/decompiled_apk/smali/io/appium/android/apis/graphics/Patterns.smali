.class public Lio/appium/android/apis/graphics/Patterns;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "Patterns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/Patterns$SampleView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap;
    .locals 1

    .line 25
    invoke-static {}, Lio/appium/android/apis/graphics/Patterns;->makeBitmap1()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .line 25
    invoke-static {}, Lio/appium/android/apis/graphics/Patterns;->makeBitmap2()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static makeBitmap1()Landroid/graphics/Bitmap;
    .locals 9

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x28

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    .local v1, "c":Landroid/graphics/Canvas;
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 37
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object v8, v2

    .line 38
    .local v8, "p":Landroid/graphics/Paint;
    const v2, -0xffff01

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x420c0000    # 35.0f

    const/high16 v6, 0x420c0000    # 35.0f

    move-object v2, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 40
    return-object v0
.end method

.method private static makeBitmap2()Landroid/graphics/Bitmap;
    .locals 5

    .line 44
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x40

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 47
    .local v2, "p":Landroid/graphics/Paint;
    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v4, 0x41d80000    # 27.0f

    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lio/appium/android/apis/graphics/Patterns$SampleView;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/Patterns$SampleView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Patterns;->setContentView(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
