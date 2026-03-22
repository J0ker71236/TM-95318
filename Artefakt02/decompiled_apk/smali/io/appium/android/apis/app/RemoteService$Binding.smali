.class public Lio/appium/android/apis/app/RemoteService$Binding;
.super Landroid/app/Activity;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Binding"
.end annotation


# static fields
.field private static final BUMP_MSG:I = 0x1


# instance fields
.field private mBindListener:Landroid/view/View$OnClickListener;

.field private mCallback:Lio/appium/android/apis/app/IRemoteServiceCallback;

.field mCallbackText:Landroid/widget/TextView;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field mKillButton:Landroid/widget/Button;

.field private mKillListener:Landroid/view/View$OnClickListener;

.field private mSecondaryConnection:Landroid/content/ServiceConnection;

.field mSecondaryService:Lio/appium/android/apis/app/ISecondary;

.field mService:Lio/appium/android/apis/app/IRemoteService;

.field private mUnbindListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 262
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mService:Lio/appium/android/apis/app/IRemoteService;

    .line 266
    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mSecondaryService:Lio/appium/android/apis/app/ISecondary;

    .line 299
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Binding$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Binding$1;-><init>(Lio/appium/android/apis/app/RemoteService$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mConnection:Landroid/content/ServiceConnection;

    .line 343
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Binding$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Binding$2;-><init>(Lio/appium/android/apis/app/RemoteService$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mSecondaryConnection:Landroid/content/ServiceConnection;

    .line 358
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Binding$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Binding$3;-><init>(Lio/appium/android/apis/app/RemoteService$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mBindListener:Landroid/view/View$OnClickListener;

    .line 373
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Binding$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Binding$4;-><init>(Lio/appium/android/apis/app/RemoteService$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mUnbindListener:Landroid/view/View$OnClickListener;

    .line 397
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Binding$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Binding$5;-><init>(Lio/appium/android/apis/app/RemoteService$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillListener:Landroid/view/View$OnClickListener;

    .line 435
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Binding$6;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Binding$6;-><init>(Lio/appium/android/apis/app/RemoteService$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallback:Lio/appium/android/apis/app/IRemoteServiceCallback;

    .line 450
    new-instance v0, Lio/appium/android/apis/app/RemoteService$Binding$7;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$Binding$7;-><init>(Lio/appium/android/apis/app/RemoteService$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/RemoteService$Binding;)Lio/appium/android/apis/app/IRemoteServiceCallback;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/RemoteService$Binding;

    .line 262
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallback:Lio/appium/android/apis/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/RemoteService$Binding;

    .line 262
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/RemoteService$Binding;

    .line 262
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mSecondaryConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lio/appium/android/apis/app/RemoteService$Binding;)Z
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/RemoteService$Binding;

    .line 262
    iget-boolean v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mIsBound:Z

    return v0
.end method

.method static synthetic access$302(Lio/appium/android/apis/app/RemoteService$Binding;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/RemoteService$Binding;
    .param p1, "x1"    # Z

    .line 262
    iput-boolean p1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mIsBound:Z

    return p1
.end method

.method static synthetic access$400(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/RemoteService$Binding;

    .line 262
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 281
    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService$Binding;->setContentView(I)V

    .line 284
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 285
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mBindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v1, 0x7f090237

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 287
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mUnbindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v1, 0x7f090101

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    .line 289
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    iget-object v2, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallbackText:Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v2, "Not attached."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method
