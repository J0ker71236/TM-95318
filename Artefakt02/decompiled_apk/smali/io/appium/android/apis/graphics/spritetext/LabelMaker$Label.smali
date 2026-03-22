.class Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/spritetext/LabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Label"
.end annotation


# instance fields
.field public baseline:F

.field public height:F

.field public mCrop:[I

.field public width:F


# direct methods
.method public constructor <init>(FFFIIII)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "baseLine"    # F
    .param p4, "cropU"    # I
    .param p5, "cropV"    # I
    .param p6, "cropW"    # I
    .param p7, "cropH"    # I

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput p1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->width:F

    .line 374
    iput p2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->height:F

    .line 375
    iput p3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->baseline:F

    .line 376
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 377
    .local v0, "crop":[I
    const/4 v1, 0x0

    aput p4, v0, v1

    .line 378
    const/4 v1, 0x1

    aput p5, v0, v1

    .line 379
    const/4 v1, 0x2

    aput p6, v0, v1

    .line 380
    const/4 v1, 0x3

    aput p7, v0, v1

    .line 381
    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->mCrop:[I

    .line 382
    return-void
.end method
