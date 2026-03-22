.class public Lio/appium/android/apis/graphics/kube/GLColor;
.super Ljava/lang/Object;
.source "GLColor.java"


# instance fields
.field public final alpha:I

.field public final blue:I

.field public final green:I

.field public final red:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/appium/android/apis/graphics/kube/GLColor;->red:I

    .line 35
    iput p2, p0, Lio/appium/android/apis/graphics/kube/GLColor;->green:I

    .line 36
    iput p3, p0, Lio/appium/android/apis/graphics/kube/GLColor;->blue:I

    .line 37
    const/high16 v0, 0x10000

    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLColor;->alpha:I

    .line 38
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lio/appium/android/apis/graphics/kube/GLColor;->red:I

    .line 28
    iput p2, p0, Lio/appium/android/apis/graphics/kube/GLColor;->green:I

    .line 29
    iput p3, p0, Lio/appium/android/apis/graphics/kube/GLColor;->blue:I

    .line 30
    iput p4, p0, Lio/appium/android/apis/graphics/kube/GLColor;->alpha:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p1

    check-cast v0, Lio/appium/android/apis/graphics/kube/GLColor;

    .line 44
    .local v0, "color":Lio/appium/android/apis/graphics/kube/GLColor;
    iget v2, p0, Lio/appium/android/apis/graphics/kube/GLColor;->red:I

    iget v3, v0, Lio/appium/android/apis/graphics/kube/GLColor;->red:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lio/appium/android/apis/graphics/kube/GLColor;->green:I

    iget v3, v0, Lio/appium/android/apis/graphics/kube/GLColor;->green:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lio/appium/android/apis/graphics/kube/GLColor;->blue:I

    iget v3, v0, Lio/appium/android/apis/graphics/kube/GLColor;->blue:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lio/appium/android/apis/graphics/kube/GLColor;->alpha:I

    iget v3, v0, Lio/appium/android/apis/graphics/kube/GLColor;->alpha:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 49
    .end local v0    # "color":Lio/appium/android/apis/graphics/kube/GLColor;
    :cond_1
    return v1
.end method
