.class public Lio/appium/android/apis/app/LoaderCustom$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "LoaderCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lio/appium/android/apis/app/LoaderCustom$InterestingConfigChanges;

.field mPackageObserver:Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance v0, Lio/appium/android/apis/app/LoaderCustom$InterestingConfigChanges;

    invoke-direct {v0}, Lio/appium/android/apis/app/LoaderCustom$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mLastConfig:Lio/appium/android/apis/app/LoaderCustom$InterestingConfigChanges;

    .line 220
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 221
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;"
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 267
    :cond_0
    move-object v0, p1

    .line 268
    .local v0, "oldApps":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;"
    iput-object p1, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mApps:Ljava/util/List;

    .line 270
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 279
    :cond_1
    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 282
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 240
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 242
    new-instance v4, Lio/appium/android/apis/app/LoaderCustom$AppEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, p0, v5}, Lio/appium/android/apis/app/LoaderCustom$AppEntry;-><init>(Lio/appium/android/apis/app/LoaderCustom$AppListLoader;Landroid/content/pm/ApplicationInfo;)V

    .line 243
    .local v4, "entry":Lio/appium/android/apis/app/LoaderCustom$AppEntry;
    invoke-virtual {v4, v1}, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 244
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v4    # "entry":Lio/appium/android/apis/app/LoaderCustom$AppEntry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "i":I
    :cond_1
    sget-object v3, Lio/appium/android/apis/app/LoaderCustom;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 251
    return-object v2
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 327
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .line 333
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 336
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->onStopLoading()V

    .line 340
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 342
    iput-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mApps:Ljava/util/List;

    .line 346
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPackageObserver:Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPackageObserver:Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    iput-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPackageObserver:Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;

    .line 350
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .line 288
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPackageObserver:Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;-><init>(Lio/appium/android/apis/app/LoaderCustom$AppListLoader;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPackageObserver:Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;

    .line 301
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mLastConfig:Lio/appium/android/apis/app/LoaderCustom$InterestingConfigChanges;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/LoaderCustom$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 303
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 306
    :cond_2
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->forceLoad()V

    .line 308
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->cancelLoad()Z

    .line 316
    return-void
.end method
