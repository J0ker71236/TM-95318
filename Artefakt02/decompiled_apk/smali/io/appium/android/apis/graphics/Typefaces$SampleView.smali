.class Lio/appium/android/apis/graphics/Typefaces$SampleView;
.super Landroid/view/View;
.source "Typefaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Typefaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mFace:Landroid/graphics/Typeface;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Typefaces$SampleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/samplefont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mFace:Landroid/graphics/Typeface;

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 46
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49
    const-string v0, "Default"

    iget-object v1, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mFace:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    const-string v0, "Custom"

    iget-object v1, p0, Lio/appium/android/apis/graphics/Typefaces$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 52
    return-void
.end method
