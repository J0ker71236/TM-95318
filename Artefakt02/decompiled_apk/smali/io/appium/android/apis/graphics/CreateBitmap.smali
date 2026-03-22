.class public Lio/appium/android/apis/graphics/CreateBitmap;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "CreateBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/CreateBitmap$SampleView;
    }
.end annotation


# static fields
.field private static final HEIGHT:I = 0x32

.field private static final STRIDE:I = 0x40

.field private static final WIDTH:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 26
    invoke-static {}, Lio/appium/android/apis/graphics/CreateBitmap;->createColors()[I

    move-result-object v0

    return-object v0
.end method

.method private static createColors()[I
    .locals 11

    .line 39
    const/16 v0, 0xc80

    new-array v0, v0, [I

    .line 40
    .local v0, "colors":[I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    .line 41
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 42
    mul-int/lit16 v4, v3, 0xff

    div-int/lit8 v4, v4, 0x31

    .line 43
    .local v4, "r":I
    mul-int/lit16 v5, v1, 0xff

    div-int/lit8 v5, v5, 0x31

    .line 44
    .local v5, "g":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    rsub-int v6, v6, 0xff

    .line 45
    .local v6, "b":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 46
    .local v7, "a":I
    mul-int/lit8 v8, v1, 0x40

    add-int/2addr v8, v3

    shl-int/lit8 v9, v7, 0x18

    shl-int/lit8 v10, v4, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v10, v5, 0x8

    or-int/2addr v9, v10

    or-int/2addr v9, v6

    aput v9, v0, v8

    .line 41
    .end local v4    # "r":I
    .end local v5    # "g":I
    .end local v6    # "b":I
    .end local v7    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 40
    .end local v3    # "x":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "y":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/CreateBitmap$SampleView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/CreateBitmap;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
