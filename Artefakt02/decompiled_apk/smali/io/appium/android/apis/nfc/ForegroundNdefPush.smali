.class public Lio/appium/android/apis/nfc/ForegroundNdefPush;
.super Landroid/app/Activity;
.source "ForegroundNdefPush.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mMessage:Landroid/nfc/NdefMessage;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/nfc/ForegroundNdefPush;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 43
    new-instance v0, Landroid/nfc/NdefMessage;

    const-string v1, "http://www.android.com"

    invoke-static {v1}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lio/appium/android/apis/nfc/ForegroundNdefPush;->mMessage:Landroid/nfc/NdefMessage;

    .line 45
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lio/appium/android/apis/nfc/ForegroundNdefPush;->setContentView(I)V

    .line 46
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/nfc/ForegroundNdefPush;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/nfc/ForegroundNdefPush;->mText:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundNdefPush;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lio/appium/android/apis/nfc/ForegroundNdefPush;->mMessage:Landroid/nfc/NdefMessage;

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundNdefPush;->mText:Landroid/widget/TextView;

    const-string v1, "Tap another Android phone with NFC to push a URL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundNdefPush;->mText:Landroid/widget/TextView;

    const-string v1, "This phone is not NFC enabled."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    return-void
.end method
