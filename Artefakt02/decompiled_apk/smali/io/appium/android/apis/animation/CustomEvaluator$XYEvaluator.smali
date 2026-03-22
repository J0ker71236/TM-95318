.class public Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;
.super Ljava/lang/Object;
.source "CustomEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/CustomEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XYEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/CustomEvaluator;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/CustomEvaluator;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/CustomEvaluator;

    .line 85
    iput-object p1, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .line 87
    move-object v0, p2

    check-cast v0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    .line 88
    .local v0, "startXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    move-object v1, p3

    check-cast v1, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    .line 89
    .local v1, "endXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    new-instance v2, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    iget-object v3, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getX()F

    move-result v4

    invoke-virtual {v1}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getX()F

    move-result v5

    invoke-virtual {v0}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    .line 90
    invoke-virtual {v0}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getY()F

    move-result v5

    invoke-virtual {v1}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getY()F

    move-result v6

    invoke-virtual {v0}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;FF)V

    .line 89
    return-object v2
.end method
