.class public Lio/appium/android/apis/view/InternalSelectionFocus;
.super Landroid/app/Activity;
.source "InternalSelectionFocus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v1, v2

    .line 55
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Lio/appium/android/apis/view/InternalSelectionView;

    const-string v3, "left column"

    const/4 v4, 0x5

    invoke-direct {v2, p0, v4, v3}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    .local v2, "leftColumn":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {v2, v1}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v3, v3, v3}, Lio/appium/android/apis/view/InternalSelectionView;->setPadding(IIII)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v5, Lio/appium/android/apis/view/InternalSelectionView;

    const-string v6, "middle column"

    invoke-direct {v5, p0, v4, v6}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 61
    .local v5, "middleColumn":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {v5, v1}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v5, v3, v3, v3, v3}, Lio/appium/android/apis/view/InternalSelectionView;->setPadding(IIII)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v6, Lio/appium/android/apis/view/InternalSelectionView;

    const-string v7, "right column"

    invoke-direct {v6, p0, v4, v7}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v4, v6

    .line 66
    .local v4, "rightColumn":Lio/appium/android/apis/view/InternalSelectionView;
    invoke-virtual {v4, v1}, Lio/appium/android/apis/view/InternalSelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v4, v3, v3, v3, v3}, Lio/appium/android/apis/view/InternalSelectionView;->setPadding(IIII)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/InternalSelectionFocus;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method
