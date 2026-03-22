.class public Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;
.super Ljava/lang/Object;
.source "CustomEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/CustomEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BallXYHolder"
.end annotation


# instance fields
.field private mBall:Lio/appium/android/apis/animation/ShapeHolder;

.field final synthetic this$0:Lio/appium/android/apis/animation/CustomEvaluator;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/CustomEvaluator;Lio/appium/android/apis/animation/ShapeHolder;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/CustomEvaluator;
    .param p2, "ball"    # Lio/appium/android/apis/animation/ShapeHolder;

    .line 98
    iput-object p1, p0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;->mBall:Lio/appium/android/apis/animation/ShapeHolder;

    .line 100
    return-void
.end method


# virtual methods
.method public getXY()Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    .locals 4

    .line 108
    new-instance v0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    iget-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;->mBall:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v2}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    iget-object v3, p0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;->mBall:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v3}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;FF)V

    return-object v0
.end method

.method public setXY(Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;)V
    .locals 2
    .param p1, "xyHolder"    # Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    .line 103
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;->mBall:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {p1}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;->mBall:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {p1}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 105
    return-void
.end method
