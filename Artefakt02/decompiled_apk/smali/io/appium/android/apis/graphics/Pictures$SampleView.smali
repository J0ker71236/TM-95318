.class Lio/appium/android/apis/graphics/Pictures$SampleView;
.super Landroid/view/View;
.source "Pictures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Pictures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Pictures$SampleView;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Pictures$SampleView;->setFocusableInTouchMode(Z)V

    .line 56
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mPicture:Landroid/graphics/Picture;

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mPicture:Landroid/graphics/Picture;

    const/16 v1, 0xc8

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-static {v0}, Lio/appium/android/apis/graphics/Pictures$SampleView;->drawSomething(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 60
    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mPicture:Landroid/graphics/Picture;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method

.method static drawSomething(Landroid/graphics/Canvas;)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .local v0, "p":Landroid/graphics/Paint;
    const/high16 v1, -0x77010000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p0, v1, v1, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    const-string v1, "Pictures"

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 64
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mPicture:Landroid/graphics/Picture;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Pictures$SampleView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x43480000    # 200.0f

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Pictures$SampleView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget-object v0, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lio/appium/android/apis/graphics/Pictures$SampleView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v1, v0}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 75
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 76
    .local v1, "is":Ljava/io/InputStream;
    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    invoke-static {v1}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 78
    return-void
.end method
