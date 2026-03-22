.class public Lio/appium/android/apis/app/Forwarding;
.super Landroid/app/Activity;
.source "Forwarding.java"


# instance fields
.field private mGoListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lio/appium/android/apis/app/Forwarding$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Forwarding$1;-><init>(Lio/appium/android/apis/app/Forwarding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Forwarding;->mGoListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/Forwarding;->setContentView(I)V

    .line 67
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/Forwarding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 68
    .local v0, "goButton":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/Forwarding;->mGoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
