.class public Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoaderCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/LoaderCustom$AppListLoader;)V
    .locals 3
    .param p1, "loader"    # Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    .line 184
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 185
    iput-object p1, p0, Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    invoke-virtual {v1}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    invoke-virtual {v2}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    invoke-virtual {v0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->onContentChanged()V

    .line 201
    return-void
.end method
