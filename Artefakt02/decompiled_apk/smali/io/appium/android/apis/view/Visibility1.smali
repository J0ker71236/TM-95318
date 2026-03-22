.class public Lio/appium/android/apis/view/Visibility1;
.super Landroid/app/Activity;
.source "Visibility1.java"


# instance fields
.field mGoneListener:Landroid/view/View$OnClickListener;

.field mInvisibleListener:Landroid/view/View$OnClickListener;

.field private mVictim:Landroid/view/View;

.field mVisibleListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lio/appium/android/apis/view/Visibility1$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/Visibility1$1;-><init>(Lio/appium/android/apis/view/Visibility1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/Visibility1;->mVisibleListener:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lio/appium/android/apis/view/Visibility1$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/Visibility1$2;-><init>(Lio/appium/android/apis/view/Visibility1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/Visibility1;->mInvisibleListener:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lio/appium/android/apis/view/Visibility1$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/Visibility1$3;-><init>(Lio/appium/android/apis/view/Visibility1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/Visibility1;->mGoneListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/Visibility1;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/Visibility1;

    .line 34
    iget-object v0, p0, Lio/appium/android/apis/view/Visibility1;->mVictim:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Visibility1;->setContentView(I)V

    .line 44
    const v0, 0x7f090243

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Visibility1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/view/Visibility1;->mVictim:Landroid/view/View;

    .line 47
    const v0, 0x7f09024a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Visibility1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    .local v0, "visibleButton":Landroid/widget/Button;
    const v1, 0x7f0900fd

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Visibility1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 49
    .local v1, "invisibleButton":Landroid/widget/Button;
    const v2, 0x7f0900dc

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Visibility1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 52
    .local v2, "goneButton":Landroid/widget/Button;
    iget-object v3, p0, Lio/appium/android/apis/view/Visibility1;->mVisibleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v3, p0, Lio/appium/android/apis/view/Visibility1;->mInvisibleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v3, p0, Lio/appium/android/apis/view/Visibility1;->mGoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
