.class public Lio/appium/android/apis/app/Intents;
.super Landroid/app/Activity;
.source "Intents.java"


# instance fields
.field private mGetMusicListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lio/appium/android/apis/app/Intents$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/Intents$1;-><init>(Lio/appium/android/apis/app/Intents;)V

    iput-object v0, p0, Lio/appium/android/apis/app/Intents;->mGetMusicListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/Intents;->setContentView(I)V

    .line 36
    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/Intents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/Intents;->mGetMusicListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
