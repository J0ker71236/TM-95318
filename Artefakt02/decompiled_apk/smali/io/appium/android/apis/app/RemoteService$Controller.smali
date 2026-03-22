.class public Lio/appium/android/apis/app/RemoteService$Controller;
.super Landroid/app/Activity;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Controller"
.end annotation


# instance fields
.field private mStartListener:Landroid/view/View$OnClickListener;

.field private mStopListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 228
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Controller$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Controller$1;-><init>(Lio/appium/android/apis/app/RemoteService$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Controller;->mStartListener:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Controller$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Controller$2;-><init>(Lio/appium/android/apis/app/RemoteService$Controller;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Controller;->mStopListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService$Controller;->setContentView(I)V

    .line 222
    const v0, 0x7f0901e5

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 223
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Controller;->mStartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v1, 0x7f0901f5

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 225
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Controller;->mStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method
