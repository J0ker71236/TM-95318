.class public Lio/appium/android/apis/animation/AnimationLoading;
.super Landroid/app/Activity;
.source "AnimationLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x5dc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimationLoading;->setContentView(I)V

    .line 56
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimationLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;-><init>(Lio/appium/android/apis/animation/AnimationLoading;Landroid/content/Context;)V

    .line 58
    .local v1, "animView":Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    const v2, 0x7f0901e9

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimationLoading;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 61
    .local v2, "starter":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/AnimationLoading$1;

    invoke-direct {v3, p0, v1}, Lio/appium/android/apis/animation/AnimationLoading$1;-><init>(Lio/appium/android/apis/animation/AnimationLoading;Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
