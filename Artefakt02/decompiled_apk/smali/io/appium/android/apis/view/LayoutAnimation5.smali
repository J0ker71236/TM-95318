.class public Lio/appium/android/apis/view/LayoutAnimation5;
.super Landroid/app/Activity;
.source "LayoutAnimation5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/LayoutAnimation5;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/LayoutAnimation5;

    .line 33
    iget-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation5;->mApps:Ljava/util/List;

    return-object v0
.end method

.method private loadApps()V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lio/appium/android/apis/view/LayoutAnimation5;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation5;->mApps:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lio/appium/android/apis/view/LayoutAnimation5;->loadApps()V

    .line 40
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LayoutAnimation5;->setContentView(I)V

    .line 41
    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LayoutAnimation5;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 42
    .local v0, "grid":Landroid/widget/GridView;
    new-instance v1, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/LayoutAnimation5$AppsAdapter;-><init>(Lio/appium/android/apis/view/LayoutAnimation5;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method
