.class public Lio/appium/android/apis/view/TextSwitcher1;
.super Landroid/app/Activity;
.source "TextSwitcher1.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCounter:I

.field private mSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/TextSwitcher1;->mCounter:I

    return-void
.end method

.method private updateCounter()V
    .locals 2

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/view/TextSwitcher1;->mSwitcher:Landroid/widget/TextSwitcher;

    iget v1, p0, Lio/appium/android/apis/view/TextSwitcher1;->mCounter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 2

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "t":Landroid/widget/TextView;
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 65
    iget v0, p0, Lio/appium/android/apis/view/TextSwitcher1;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/appium/android/apis/view/TextSwitcher1;->mCounter:I

    .line 66
    invoke-direct {p0}, Lio/appium/android/apis/view/TextSwitcher1;->updateCounter()V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TextSwitcher1;->setContentView(I)V

    .line 48
    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/TextSwitcher1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lio/appium/android/apis/view/TextSwitcher1;->mSwitcher:Landroid/widget/TextSwitcher;

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/view/TextSwitcher1;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 51
    const/high16 v0, 0x10a0000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 53
    .local v0, "in":Landroid/view/animation/Animation;
    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 55
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v2, p0, Lio/appium/android/apis/view/TextSwitcher1;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 56
    iget-object v2, p0, Lio/appium/android/apis/view/TextSwitcher1;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 58
    const v2, 0x7f090143

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/TextSwitcher1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 59
    .local v2, "nextButton":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0}, Lio/appium/android/apis/view/TextSwitcher1;->updateCounter()V

    .line 62
    return-void
.end method
