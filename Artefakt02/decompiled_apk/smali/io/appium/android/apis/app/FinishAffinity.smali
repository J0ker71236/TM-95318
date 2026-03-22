.class public Lio/appium/android/apis/app/FinishAffinity;
.super Landroid/app/Activity;
.source "FinishAffinity.java"


# instance fields
.field private mFinishListener:Landroid/view/View$OnClickListener;

.field private mNestListener:Landroid/view/View$OnClickListener;

.field mNesting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lio/appium/android/apis/app/FinishAffinity$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FinishAffinity$1;-><init>(Lio/appium/android/apis/app/FinishAffinity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FinishAffinity;->mNestListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lio/appium/android/apis/app/FinishAffinity$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FinishAffinity$2;-><init>(Lio/appium/android/apis/app/FinishAffinity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FinishAffinity;->mFinishListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FinishAffinity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lio/appium/android/apis/app/FinishAffinity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nesting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/app/FinishAffinity;->mNesting:I

    .line 40
    const v0, 0x7f0901c0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FinishAffinity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current nesting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/app/FinishAffinity;->mNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FinishAffinity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/FinishAffinity;->mNestListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f0900c5

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FinishAffinity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 46
    iget-object v1, p0, Lio/appium/android/apis/app/FinishAffinity;->mFinishListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
