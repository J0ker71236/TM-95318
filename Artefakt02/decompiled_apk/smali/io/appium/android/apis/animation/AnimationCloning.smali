.class public Lio/appium/android/apis/animation/AnimationCloning;
.super Landroid/app/Activity;
.source "AnimationCloning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimationCloning;->setContentView(I)V

    .line 48
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimationCloning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 49
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;-><init>(Lio/appium/android/apis/animation/AnimationCloning;Landroid/content/Context;)V

    .line 50
    .local v1, "animView":Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    const v2, 0x7f0901e9

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimationCloning;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 53
    .local v2, "starter":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/AnimationCloning$1;

    invoke-direct {v3, p0, v1}, Lio/appium/android/apis/animation/AnimationCloning$1;-><init>(Lio/appium/android/apis/animation/AnimationCloning;Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
