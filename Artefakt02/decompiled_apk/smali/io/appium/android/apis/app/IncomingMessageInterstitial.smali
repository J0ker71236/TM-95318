.class public Lio/appium/android/apis/app/IncomingMessageInterstitial;
.super Landroid/app/Activity;
.source "IncomingMessageInterstitial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessageInterstitial;->setContentView(I)V

    .line 40
    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessageInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/IncomingMessageInterstitial$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/IncomingMessageInterstitial$1;-><init>(Lio/appium/android/apis/app/IncomingMessageInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method switchToApp()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lio/appium/android/apis/app/IncomingMessageInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    .local v0, "from":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lio/appium/android/apis/app/IncomingMessageInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-static {p0, v0, v1}, Lio/appium/android/apis/app/IncomingMessage;->makeMessageIntentStack(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Landroid/content/Intent;

    move-result-object v2

    .line 60
    .local v2, "stack":[Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/IncomingMessageInterstitial;->startActivities([Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lio/appium/android/apis/app/IncomingMessageInterstitial;->finish()V

    .line 62
    return-void
.end method
