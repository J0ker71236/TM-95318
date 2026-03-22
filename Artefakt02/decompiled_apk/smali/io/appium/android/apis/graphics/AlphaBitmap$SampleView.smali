.class Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;
.super Landroid/view/View;
.source "AlphaBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/AlphaBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmap2:Landroid/graphics/Bitmap;

.field private mBitmap3:Landroid/graphics/Bitmap;

.field private mShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->setFocusable(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    iget-object v1, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    .line 67
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0xc8

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    .line 68
    iget-object v1, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->drawIntoBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x428c0000    # 70.0f

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mShader:Landroid/graphics/Shader;

    .line 73
    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method private static drawIntoBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 44
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 45
    .local v1, "y":F
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v3, "p":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    div-float v6, v1, v4

    div-float v7, v0, v4

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 56
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 57
    .local v5, "fm":Landroid/graphics/Paint$FontMetrics;
    const-string v6, "Alpha"

    div-float v7, v0, v4

    iget v8, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v8, v1, v8

    div-float/2addr v8, v4

    invoke-virtual {v2, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 76
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 79
    .local v0, "p":Landroid/graphics/Paint;
    const/high16 v1, 0x41200000    # 10.0f

    .line 81
    .local v1, "y":F
    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v2, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    iget-object v2, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 84
    iget-object v2, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    iget-object v2, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 86
    iget-object v2, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 87
    iget-object v2, p0, Lio/appium/android/apis/graphics/AlphaBitmap$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    return-void
.end method
