.class public Lio/appium/android/apis/app/ServiceStartArguments$Controller;
.super Landroid/app/Activity;
.source "ServiceStartArguments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ServiceStartArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Controller"
.end annotation


# instance fields
.field private mKillListener:Landroid/view/View$OnClickListener;

.field private mStart1Listener:Landroid/view/View$OnClickListener;

.field private mStart2Listener:Landroid/view/View$OnClickListener;

.field private mStart3Listener:Landroid/view/View$OnClickListener;

.field private mStartFailListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 228
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$1;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart1Listener:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$2;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart2Listener:Landroid/view/View$OnClickListener;

    .line 244
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$3;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart3Listener:Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$4;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStartFailListener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller$5;-><init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mKillListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->setContentView(I)V

    .line 216
    const v0, 0x7f0901e6

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 217
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v1, 0x7f0901e7

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 219
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart2Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v1, 0x7f0901e8

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 221
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStart3Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v1, 0x7f0901f0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 223
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mStartFailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v1, 0x7f090101

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 225
    iget-object v1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->mKillListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method
