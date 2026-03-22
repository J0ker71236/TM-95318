.class public Lio/appium/android/apis/app/SendResult;
.super Landroid/app/Activity;
.source "SendResult.java"


# instance fields
.field private mCorkyListener:Landroid/view/View$OnClickListener;

.field private mVioletListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lio/appium/android/apis/app/SendResult$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/SendResult$1;-><init>(Lio/appium/android/apis/app/SendResult;)V

    iput-object v0, p0, Lio/appium/android/apis/app/SendResult;->mCorkyListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lio/appium/android/apis/app/SendResult$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/SendResult$2;-><init>(Lio/appium/android/apis/app/SendResult;)V

    iput-object v0, p0, Lio/appium/android/apis/app/SendResult;->mVioletListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SendResult;->setContentView(I)V

    .line 53
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SendResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/SendResult;->mCorkyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f090249

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/SendResult;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lio/appium/android/apis/app/SendResult;->mVioletListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
