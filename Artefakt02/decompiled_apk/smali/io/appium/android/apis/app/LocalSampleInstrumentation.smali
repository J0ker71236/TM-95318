.class public Lio/appium/android/apis/app/LocalSampleInstrumentation;
.super Landroid/app/Instrumentation;
.source "LocalSampleInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/LocalSampleInstrumentation$ActivityRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->start()V

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 51
    invoke-super {p0}, Landroid/app/Instrumentation;->onStart()V

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/appium/android/apis/app/SaveRestoreState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/app/SaveRestoreState;

    .line 61
    .local v1, "activity":Lio/appium/android/apis/app/SaveRestoreState;
    const-string v2, "LocalSampleInstrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initial text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Lio/appium/android/apis/app/SaveRestoreState;->getSavedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Lio/appium/android/apis/app/LocalSampleInstrumentation$1;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/app/LocalSampleInstrumentation$1;-><init>(Lio/appium/android/apis/app/LocalSampleInstrumentation;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 72
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 73
    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 74
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 75
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 76
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 77
    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 78
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->sendCharacterSync(I)V

    .line 81
    invoke-virtual {p0}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->waitForIdleSync()V

    .line 84
    const-string v2, "LocalSampleInstrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Lio/appium/android/apis/app/SaveRestoreState;->getSavedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v2, "ContactsFilterInstrumentation"

    const-string v3, "Done!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lio/appium/android/apis/app/LocalSampleInstrumentation;->finish(ILandroid/os/Bundle;)V

    .line 90
    return-void
.end method
