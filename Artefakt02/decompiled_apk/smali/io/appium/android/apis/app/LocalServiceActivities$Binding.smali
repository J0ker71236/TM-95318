.class public Lio/appium/android/apis/app/LocalServiceActivities$Binding;
.super Landroid/app/Activity;
.source "LocalServiceActivities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalServiceActivities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Binding"
.end annotation


# instance fields
.field private mBindListener:Landroid/view/View$OnClickListener;

.field private mBoundService:Lio/appium/android/apis/app/LocalService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field private mUnbindListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    new-instance v0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;-><init>(Lio/appium/android/apis/app/LocalServiceActivities$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mConnection:Landroid/content/ServiceConnection;

    .line 146
    new-instance v0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding$2;-><init>(Lio/appium/android/apis/app/LocalServiceActivities$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mBindListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding$3;-><init>(Lio/appium/android/apis/app/LocalServiceActivities$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mUnbindListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lio/appium/android/apis/app/LocalServiceActivities$Binding;Lio/appium/android/apis/app/LocalService;)Lio/appium/android/apis/app/LocalService;
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/LocalServiceActivities$Binding;
    .param p1, "x1"    # Lio/appium/android/apis/app/LocalService;

    .line 90
    iput-object p1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mBoundService:Lio/appium/android/apis/app/LocalService;

    return-object p1
.end method


# virtual methods
.method doBindService()V
    .locals 3

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/appium/android/apis/app/LocalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 128
    iput-boolean v2, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mIsBound:Z

    .line 129
    return-void
.end method

.method doUnbindService()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mIsBound:Z

    .line 137
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->setContentView(I)V

    .line 165
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 166
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mBindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f090237

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 168
    iget-object v1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->mUnbindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    invoke-virtual {p0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->doUnbindService()V

    .line 143
    return-void
.end method
