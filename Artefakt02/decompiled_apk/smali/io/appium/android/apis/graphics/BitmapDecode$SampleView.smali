.class Lio/appium/android/apis/graphics/BitmapDecode$SampleView;
.super Landroid/view/View;
.source "BitmapDecode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/BitmapDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final DECODE_STREAM:Z = true


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmap2:Landroid/graphics/Bitmap;

.field private mBitmap3:Landroid/graphics/Bitmap;

.field private mBitmap4:Landroid/graphics/Bitmap;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->setFocusable(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 71
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 80
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    const/4 v4, 0x4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 82
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    .line 91
    iget-object v3, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 92
    .local v3, "w":I
    iget-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 93
    .local v12, "h":I
    mul-int v4, v3, v12

    new-array v13, v4, [I

    .line 94
    .local v13, "pixels":[I
    iget-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move v7, v3

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 95
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    move-object v4, v13

    move v6, v3

    move v8, v12

    invoke-static/range {v4 .. v9}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    .line 97
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object v4, v13

    invoke-static/range {v4 .. v9}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap4:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0x96

    const/16 v6, 0x14

    const/16 v7, 0x12c

    const/16 v8, 0x64

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovie:Landroid/graphics/Movie;

    .line 111
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 53
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-array v1, v1, [B

    .line 56
    .local v1, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-ltz v2, :cond_0

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :cond_0
    goto :goto_1

    .line 59
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 61
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 115
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .local v0, "p":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    const/high16 v4, 0x432a0000    # 170.0f

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mBitmap4:Landroid/graphics/Bitmap;

    const/high16 v2, 0x43520000    # 210.0f

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 128
    .local v1, "now":J
    iget-wide v3, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovieStart:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 129
    iput-wide v1, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovieStart:J

    .line 131
    :cond_0
    iget-object v3, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovie:Landroid/graphics/Movie;

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    move-result v3

    .line 133
    .local v3, "dur":I
    if-nez v3, :cond_1

    .line 134
    const/16 v3, 0x3e8

    .line 136
    :cond_1
    iget-wide v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovieStart:J

    sub-long v4, v1, v4

    int-to-long v6, v3

    rem-long/2addr v4, v6

    long-to-int v5, v4

    .line 137
    .local v5, "relTime":I
    iget-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4, v5}, Landroid/graphics/Movie;->setTime(I)Z

    .line 138
    iget-object v4, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->width()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 139
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->height()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 138
    invoke-virtual {v4, p1, v6, v7}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 140
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/BitmapDecode$SampleView;->invalidate()V

    .line 142
    .end local v3    # "dur":I
    .end local v5    # "relTime":I
    :cond_2
    return-void
.end method
