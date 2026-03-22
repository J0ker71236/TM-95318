.class public Lio/appium/android/apis/app/RemoteService$BindingOptions;
.super Landroid/app/Activity;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindingOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;
    }
.end annotation


# instance fields
.field private mBindAboveClientListener:Landroid/view/View$OnClickListener;

.field private mBindAllowOomListener:Landroid/view/View$OnClickListener;

.field private mBindImportantListener:Landroid/view/View$OnClickListener;

.field private mBindNormalListener:Landroid/view/View$OnClickListener;

.field private mBindNotForegroundListener:Landroid/view/View$OnClickListener;

.field private mBindWaivePriorityListener:Landroid/view/View$OnClickListener;

.field private mBindWithActivityListener:Landroid/view/View$OnClickListener;

.field mCallbackText:Landroid/widget/TextView;

.field mCurConnection:Landroid/content/ServiceConnection;

.field private mUnbindListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 471
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 544
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$1;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindNormalListener:Landroid/view/View$OnClickListener;

    .line 558
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$2;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindNotForegroundListener:Landroid/view/View$OnClickListener;

    .line 572
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindAboveClientListener:Landroid/view/View$OnClickListener;

    .line 586
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$4;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindAllowOomListener:Landroid/view/View$OnClickListener;

    .line 600
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$5;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindWaivePriorityListener:Landroid/view/View$OnClickListener;

    .line 614
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindImportantListener:Landroid/view/View$OnClickListener;

    .line 628
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$7;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$7;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindWithActivityListener:Landroid/view/View$OnClickListener;

    .line 643
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$8;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions$8;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mUnbindListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 518
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 520
    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->setContentView(I)V

    .line 523
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 524
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindNormalListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v1, 0x7f090039

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 526
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindNotForegroundListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    const v1, 0x7f090035

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 528
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindAboveClientListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 530
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindAllowOomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 532
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindWaivePriorityListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 534
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindImportantListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 536
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mBindWithActivityListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    const v1, 0x7f090237

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 538
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mUnbindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCallbackText:Landroid/widget/TextView;

    .line 541
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCallbackText:Landroid/widget/TextView;

    const-string v2, "Not attached."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    return-void
.end method
