.class public Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
.super Ljava/lang/Object;
.source "CustomEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/CustomEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XYHolder"
.end annotation


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Lio/appium/android/apis/animation/CustomEvaluator;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/CustomEvaluator;FF)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/CustomEvaluator;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 63
    iput-object p1, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p2, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->mX:F

    .line 65
    iput p3, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->mY:F

    .line 66
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .line 69
    iget v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 77
    iget v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->mY:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 73
    iput p1, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->mX:F

    .line 74
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 81
    iput p1, p0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->mY:F

    .line 82
    return-void
.end method
