.class public Lio/appium/android/apis/app/IncomingMessageView;
.super Landroid/app/Activity;
.source "IncomingMessageView.java"


# static fields
.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessageView;->setContentView(I)V

    .line 47
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lio/appium/android/apis/app/IncomingMessageView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lio/appium/android/apis/app/IncomingMessageView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessageView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 56
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0x7f0e01a4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    return-void
.end method
