.class public Lio/appium/android/apis/view/SecureViewOverlay;
.super Landroid/view/ViewGroup;
.source "SecureViewOverlay.java"


# instance fields
.field private mActivity:Lio/appium/android/apis/view/SecureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private spoofLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "spoof"    # Landroid/view/View;
    .param p2, "original"    # Landroid/view/View;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 65
    .local v0, "globalPos":[I
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SecureViewOverlay;->getLocationOnScreen([I)V

    .line 66
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 67
    .local v2, "x":I
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 69
    .local v4, "y":I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 70
    aget v1, v0, v1

    sub-int/2addr v1, v2

    .line 71
    .end local v2    # "x":I
    .local v1, "x":I
    aget v2, v0, v3

    sub-int/2addr v2, v4

    .line 72
    .end local v4    # "y":I
    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 53
    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SecureViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/SecureViewOverlay;->mActivity:Lio/appium/android/apis/view/SecureView;

    .line 54
    const v2, 0x7f0901b4

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/view/SecureViewOverlay;->spoofLayout(Landroid/view/View;Landroid/view/View;)V

    .line 55
    const v0, 0x7f0901b5

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SecureViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/SecureViewOverlay;->mActivity:Lio/appium/android/apis/view/SecureView;

    .line 56
    const v2, 0x7f0901ba

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/view/SecureViewOverlay;->spoofLayout(Landroid/view/View;Landroid/view/View;)V

    .line 57
    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SecureViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/SecureViewOverlay;->mActivity:Lio/appium/android/apis/view/SecureView;

    .line 58
    const v2, 0x7f0901b2

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/view/SecureViewOverlay;->spoofLayout(Landroid/view/View;Landroid/view/View;)V

    .line 59
    const v0, 0x7f0901b7

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SecureViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/SecureViewOverlay;->mActivity:Lio/appium/android/apis/view/SecureView;

    .line 60
    const v2, 0x7f0901b3

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/SecureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/view/SecureViewOverlay;->spoofLayout(Landroid/view/View;Landroid/view/View;)V

    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 46
    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/view/SecureViewOverlay;->measureChildren(II)V

    .line 48
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 49
    return-void
.end method

.method public setActivityToSpoof(Lio/appium/android/apis/view/SecureView;)V
    .locals 0
    .param p1, "activity"    # Lio/appium/android/apis/view/SecureView;

    .line 41
    iput-object p1, p0, Lio/appium/android/apis/view/SecureViewOverlay;->mActivity:Lio/appium/android/apis/view/SecureView;

    .line 42
    return-void
.end method
