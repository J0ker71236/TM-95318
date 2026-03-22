.class public Lio/appium/android/apis/app/LocalSample;
.super Landroid/app/Activity;
.source "LocalSample.java"


# instance fields
.field private mGoListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lio/appium/android/apis/app/LocalSample$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalSample$1;-><init>(Lio/appium/android/apis/app/LocalSample;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalSample;->mGoListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalSample;->setContentView(I)V

    .line 42
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalSample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/LocalSample;->mGoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
