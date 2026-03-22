.class public Lio/appium/android/apis/nfc/ForegroundDispatch;
.super Landroid/app/Activity;
.source "ForegroundDispatch.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mCount:I

.field private mFilters:[Landroid/content/IntentFilter;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mTechLists:[[Ljava/lang/String;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mCount:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lio/appium/android/apis/nfc/ForegroundDispatch;->setContentView(I)V

    .line 49
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/nfc/ForegroundDispatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mText:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mText:Landroid/widget/TextView;

    const-string v1, "Scan a tag"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 57
    new-instance v0, Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mPendingIntent:Landroid/app/PendingIntent;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "ndef":Landroid/content/IntentFilter;
    :try_start_0
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/content/IntentFilter;

    aput-object v0, v3, v1

    iput-object v3, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mFilters:[Landroid/content/IntentFilter;

    .line 72
    new-array v3, v2, [[Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-class v4, Landroid/nfc/tech/NfcF;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    aput-object v2, v3, v1

    iput-object v3, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mTechLists:[[Ljava/lang/String;

    .line 73
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "fail"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 84
    const-string v0, "Foreground dispatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovered tag with intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovered tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mFilters:[Landroid/content/IntentFilter;

    iget-object v3, p0, Lio/appium/android/apis/nfc/ForegroundDispatch;->mTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
