.class public Lio/appium/android/apis/app/Animation;
.super Landroid/app/Activity;
.source "Animation.java"


# instance fields
.field private mFadeListener:Landroid/view/View$OnClickListener;

.field private mModernFadeListener:Landroid/view/View$OnClickListener;

.field private mModernZoomListener:Landroid/view/View$OnClickListener;

.field private mScaleUpListener:Landroid/view/View$OnClickListener;

.field private mZoomListener:Landroid/view/View$OnClickListener;

.field private mZoomThumbnailListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lio/appium/android/apis/app/Animation$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Animation$1;-><init>(Lio/appium/android/apis/app/Animation;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Animation;->mFadeListener:Landroid/view/View$OnClickListener;

    .line 78
    new-instance v0, Lio/appium/android/apis/app/Animation$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Animation$2;-><init>(Lio/appium/android/apis/app/Animation;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Animation;->mZoomListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lio/appium/android/apis/app/Animation$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Animation$3;-><init>(Lio/appium/android/apis/app/Animation;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Animation;->mModernFadeListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lio/appium/android/apis/app/Animation$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Animation$4;-><init>(Lio/appium/android/apis/app/Animation;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Animation;->mModernZoomListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lio/appium/android/apis/app/Animation$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Animation$5;-><init>(Lio/appium/android/apis/app/Animation;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Animation;->mScaleUpListener:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v0, Lio/appium/android/apis/app/Animation$6;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Animation$6;-><init>(Lio/appium/android/apis/app/Animation;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Animation;->mZoomThumbnailListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/Animation;->setContentView(I)V

    .line 45
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/Animation;->mFadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f090253

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 48
    iget-object v1, p0, Lio/appium/android/apis/app/Animation;->mZoomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x7f090254

    const v3, 0x7f0901a0

    const v4, 0x7f090133

    const v5, 0x7f090132

    const/16 v6, 0x10

    if-lt v1, v6, :cond_0

    .line 50
    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lio/appium/android/apis/app/Animation;->mModernFadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 53
    iget-object v1, p0, Lio/appium/android/apis/app/Animation;->mModernZoomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lio/appium/android/apis/app/Animation;->mScaleUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 57
    iget-object v1, p0, Lio/appium/android/apis/app/Animation;->mZoomThumbnailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/Animation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    :goto_0
    return-void
.end method
