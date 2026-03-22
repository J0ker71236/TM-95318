.class public Lio/appium/android/apis/animation/LayoutAnimationsByDefault;
.super Landroid/app/Activity;
.source "LayoutAnimationsByDefault.java"


# instance fields
.field private numButtons:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsByDefault;->numButtons:I

    return-void
.end method

.method static synthetic access$008(Lio/appium/android/apis/animation/LayoutAnimationsByDefault;)I
    .locals 2
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimationsByDefault;

    .line 34
    iget v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsByDefault;->numButtons:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/animation/LayoutAnimationsByDefault;->numButtons:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/LayoutAnimationsByDefault;->setContentView(I)V

    .line 44
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/LayoutAnimationsByDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    .line 46
    .local v0, "gridContainer":Landroid/widget/GridLayout;
    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lio/appium/android/apis/animation/LayoutAnimationsByDefault;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    .local v1, "addButton":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/animation/LayoutAnimationsByDefault$1;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/animation/LayoutAnimationsByDefault$1;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsByDefault;Landroid/widget/GridLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
