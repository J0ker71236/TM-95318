.class public Lio/appium/android/apis/app/ContactsSelectInstrumentation;
.super Landroid/app/Instrumentation;
.source "ContactsSelectInstrumentation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->start()V

    .line 43
    return-void
.end method

.method public onStart()V
    .locals 8

    .line 47
    invoke-super {p0}, Landroid/app/Instrumentation;->onStart()V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone.Dialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    .line 57
    .local v1, "activity":Landroid/app/Activity;
    const-string v2, "ContactsSelectInstrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v2, "android.intent.action.VIEW"

    const-string v3, "vnd.android.cursor.item/contact"

    invoke-static {v2, v3}, Landroid/content/IntentFilter;->create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v2

    .line 65
    .local v2, "am":Landroid/app/Instrumentation$ActivityMonitor;
    new-instance v5, Landroid/view/KeyEvent;

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 67
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 69
    new-instance v5, Landroid/view/KeyEvent;

    const/16 v6, 0x17

    invoke-direct {v5, v7, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 71
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 75
    invoke-virtual {p0, v2, v4}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const-string v4, "ContactsSelectInstrumentation"

    const-string v5, "Activity started!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_0
    const-string v4, "ContactsSelectInstrumentation"

    const-string v5, "*** ACTIVITY NOT STARTED!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    const-string v4, "ContactsSelectInstrumentation"

    const-string v5, "Done!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lio/appium/android/apis/app/ContactsSelectInstrumentation;->finish(ILandroid/os/Bundle;)V

    .line 84
    return-void
.end method
