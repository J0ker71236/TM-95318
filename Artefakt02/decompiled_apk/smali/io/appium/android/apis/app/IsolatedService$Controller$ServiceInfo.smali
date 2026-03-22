.class Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;
.super Ljava/lang/Object;
.source "IsolatedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/IsolatedService$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceInfo"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field private mBindListener:Landroid/view/View$OnClickListener;

.field final mClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field mService:Lio/appium/android/apis/app/IRemoteService;

.field mServiceBound:Z

.field private mStartListener:Landroid/view/View$OnClickListener;

.field final mStatus:Landroid/widget/TextView;

.field private mStopListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Class;IIII)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "start"    # I
    .param p4, "stop"    # I
    .param p5, "bind"    # I
    .param p6, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;IIII)V"
        }
    .end annotation

    .line 114
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$1;-><init>(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)V

    iput-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStartListener:Landroid/view/View$OnClickListener;

    .line 138
    new-instance v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$2;-><init>(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)V

    iput-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStopListener:Landroid/view/View$OnClickListener;

    .line 144
    new-instance v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$3;-><init>(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)V

    iput-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mBindListener:Landroid/view/View$OnClickListener;

    .line 164
    new-instance v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;-><init>(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)V

    iput-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mConnection:Landroid/content/ServiceConnection;

    .line 115
    iput-object p1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    .line 116
    iput-object p2, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mClz:Ljava/lang/Class;

    .line 117
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 120
    iget-object v1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 122
    .local v1, "cb":Landroid/widget/CheckBox;
    iget-object v2, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mBindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStatus:Landroid/widget/TextView;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    .line 106
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 127
    iget-boolean v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 130
    :cond_0
    return-void
.end method
