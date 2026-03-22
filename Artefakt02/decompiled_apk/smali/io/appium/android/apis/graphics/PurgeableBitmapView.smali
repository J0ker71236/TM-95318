.class public Lio/appium/android/apis/graphics/PurgeableBitmapView;
.super Landroid/view/View;
.source "PurgeableBitmapView.java"


# static fields
.field private static final HEIGHT:I = 0x1c2

.field private static final STRIDE:I = 0x140

.field private static final WIDTH:I = 0x96

.field private static delay:I


# instance fields
.field private final bitstream:[B

.field private final mArraySize:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapArray:[Landroid/graphics/Bitmap;

.field private mDecodingCount:I

.field private final mOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mPaint:Landroid/graphics/Paint;

.field private final textSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0x64

    sput v0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->delay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPurgeable"    # Z

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v0, 0xc8

    iput v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mArraySize:I

    .line 43
    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 44
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mPaint:Landroid/graphics/Paint;

    .line 50
    const/16 v0, 0x20

    iput v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->textSize:I

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/PurgeableBitmapView;->setFocusable(Z)V

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 58
    invoke-direct {p0}, Lio/appium/android/apis/graphics/PurgeableBitmapView;->createColors()[I

    move-result-object v0

    .line 59
    .local v0, "colors":[I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x96

    const/16 v5, 0x1c2

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    .local v1, "src":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-direct {p0, v1, v2, v3}, Lio/appium/android/apis/graphics/PurgeableBitmapView;->generateBitstream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->bitstream:[B

    .line 63
    iget-object v2, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v2, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mPaint:Landroid/graphics/Paint;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    return-void
.end method

.method private createColors()[I
    .locals 10

    .line 68
    const v0, 0x23280

    new-array v0, v0, [I

    .line 69
    .local v0, "colors":[I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    const/16 v2, 0x1c2

    if-ge v1, v2, :cond_1

    .line 70
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    const/16 v3, 0x96

    if-ge v2, v3, :cond_0

    .line 71
    mul-int/lit16 v3, v2, 0xff

    div-int/lit16 v3, v3, 0x95

    .line 72
    .local v3, "r":I
    mul-int/lit16 v4, v1, 0xff

    div-int/lit16 v4, v4, 0x1c1

    .line 73
    .local v4, "g":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    rsub-int v5, v5, 0xff

    .line 74
    .local v5, "b":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 75
    .local v6, "a":I
    mul-int/lit16 v7, v1, 0x140

    add-int/2addr v7, v2

    shl-int/lit8 v8, v6, 0x18

    shl-int/lit8 v9, v3, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v5

    aput v8, v0, v7

    .line 70
    .end local v3    # "r":I
    .end local v4    # "g":I
    .end local v5    # "b":I
    .end local v6    # "a":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v2    # "x":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "y":I
    :cond_1
    return-object v0
.end method

.method private generateBitstream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 103
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    iget v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x425c0000    # 55.0f

    const/high16 v3, 0x43610000    # 225.0f

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method public update(Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;)I
    .locals 6
    .param p1, "handler"    # Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;

    .line 83
    :try_start_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mBitmapArray:[Landroid/graphics/Bitmap;

    iget v1, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    iget-object v2, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->bitstream:[B

    iget-object v3, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->bitstream:[B

    array-length v3, v3

    iget-object v4, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mBitmapArray:[Landroid/graphics/Bitmap;

    iget v1, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    iget v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    .line 87
    iget v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 88
    sget v0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->delay:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->sleep(J)V

    .line 89
    return v5

    .line 91
    :cond_0
    iget v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    neg-int v0, v0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "error":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mDecodingCount:I

    if-ge v1, v2, :cond_1

    .line 96
    iget-object v2, p0, Lio/appium/android/apis/graphics/PurgeableBitmapView;->mBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    return v2
.end method
