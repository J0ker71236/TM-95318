.class public Lio/appium/android/apis/animation/AnimatorEvents;
.super Landroid/app/Activity;
.source "AnimatorEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;
    }
.end annotation


# instance fields
.field cancelText:Landroid/widget/TextView;

.field cancelTextAnimator:Landroid/widget/TextView;

.field endText:Landroid/widget/TextView;

.field endTextAnimator:Landroid/widget/TextView;

.field repeatText:Landroid/widget/TextView;

.field repeatTextAnimator:Landroid/widget/TextView;

.field startText:Landroid/widget/TextView;

.field startTextAnimator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimatorEvents;->setContentView(I)V

    .line 57
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Landroid/content/Context;)V

    .line 59
    .local v1, "animView":Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    const v2, 0x7f0901ea

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startText:Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startText:Landroid/widget/TextView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 62
    const v2, 0x7f090181

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatText:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 64
    const v2, 0x7f090057

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelText:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 66
    const v2, 0x7f0900b6

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endText:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 68
    const v2, 0x7f0901eb

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startTextAnimator:Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->startTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 70
    const v2, 0x7f090182

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatTextAnimator:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->repeatTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 72
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelTextAnimator:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->cancelTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 74
    const v2, 0x7f0900b7

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endTextAnimator:Landroid/widget/TextView;

    .line 75
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimatorEvents;->endTextAnimator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 76
    const v2, 0x7f0900b5

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 79
    .local v2, "endCB":Landroid/widget/CheckBox;
    const v3, 0x7f0901e9

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 80
    .local v3, "starter":Landroid/widget/Button;
    new-instance v4, Lio/appium/android/apis/animation/AnimatorEvents$1;

    invoke-direct {v4, p0, v1, v2}, Lio/appium/android/apis/animation/AnimatorEvents$1;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v4, 0x7f090056

    invoke-virtual {p0, v4}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 88
    .local v4, "canceler":Landroid/widget/Button;
    new-instance v5, Lio/appium/android/apis/animation/AnimatorEvents$2;

    invoke-direct {v5, p0, v1}, Lio/appium/android/apis/animation/AnimatorEvents$2;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v5, 0x7f0900b4

    invoke-virtual {p0, v5}, Lio/appium/android/apis/animation/AnimatorEvents;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 96
    .local v5, "ender":Landroid/widget/Button;
    new-instance v6, Lio/appium/android/apis/animation/AnimatorEvents$3;

    invoke-direct {v6, p0, v1}, Lio/appium/android/apis/animation/AnimatorEvents$3;-><init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method
