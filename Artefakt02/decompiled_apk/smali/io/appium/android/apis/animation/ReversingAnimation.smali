.class public Lio/appium/android/apis/animation/ReversingAnimation;
.super Landroid/app/Activity;
.source "ReversingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/ReversingAnimation;->setContentView(I)V

    .line 47
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/ReversingAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;-><init>(Lio/appium/android/apis/animation/ReversingAnimation;Landroid/content/Context;)V

    .line 49
    .local v1, "animView":Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const v2, 0x7f0901e9

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/ReversingAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 52
    .local v2, "starter":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/ReversingAnimation$1;

    invoke-direct {v3, p0, v1}, Lio/appium/android/apis/animation/ReversingAnimation$1;-><init>(Lio/appium/android/apis/animation/ReversingAnimation;Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v3, 0x7f09018b

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/ReversingAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 59
    .local v3, "reverser":Landroid/widget/Button;
    new-instance v4, Lio/appium/android/apis/animation/ReversingAnimation$2;

    invoke-direct {v4, p0, v1}, Lio/appium/android/apis/animation/ReversingAnimation$2;-><init>(Lio/appium/android/apis/animation/ReversingAnimation;Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
