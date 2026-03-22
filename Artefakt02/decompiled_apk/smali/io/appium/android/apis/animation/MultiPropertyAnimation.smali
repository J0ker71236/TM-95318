.class public Lio/appium/android/apis/animation/MultiPropertyAnimation;
.super Landroid/app/Activity;
.source "MultiPropertyAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x5dc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/MultiPropertyAnimation;->setContentView(I)V

    .line 54
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/MultiPropertyAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 55
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;-><init>(Lio/appium/android/apis/animation/MultiPropertyAnimation;Landroid/content/Context;)V

    .line 56
    .local v1, "animView":Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    const v2, 0x7f0901e9

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/MultiPropertyAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 59
    .local v2, "starter":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/MultiPropertyAnimation$1;

    invoke-direct {v3, p0, v1}, Lio/appium/android/apis/animation/MultiPropertyAnimation$1;-><init>(Lio/appium/android/apis/animation/MultiPropertyAnimation;Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
