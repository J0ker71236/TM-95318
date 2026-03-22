.class public Lio/appium/android/apis/view/InternalSelectionScroll;
.super Landroid/app/Activity;
.source "InternalSelectionScroll.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "sv":Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v1, "svLp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .local v3, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 54
    new-instance v4, Lio/appium/android/apis/view/InternalSelectionView;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;I)V

    .line 55
    .local v4, "isv":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionScroll;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 56
    .local v5, "screenHeight":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v7, v5, 0x2

    invoke-direct {v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v6

    .line 59
    .local v2, "llLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/InternalSelectionScroll;->setContentView(Landroid/view/View;)V

    .line 63
    return-void
.end method
