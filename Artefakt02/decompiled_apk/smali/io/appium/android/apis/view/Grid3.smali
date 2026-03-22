.class public Lio/appium/android/apis/view/Grid3;
.super Landroid/app/Activity;
.source "Grid3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/Grid3$MultiChoiceModeListener;,
        Lio/appium/android/apis/view/Grid3$CheckableLayout;,
        Lio/appium/android/apis/view/Grid3$AppsAdapter;
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

.field mGrid:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/Grid3;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/Grid3;

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/view/Grid3;->mApps:Ljava/util/List;

    return-object v0
.end method

.method private loadApps()V
    .locals 3

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lio/appium/android/apis/view/Grid3;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/view/Grid3;->mApps:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lio/appium/android/apis/view/Grid3;->loadApps()V

    .line 51
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Grid3;->setContentView(I)V

    .line 52
    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Grid3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lio/appium/android/apis/view/Grid3;->mGrid:Landroid/widget/GridView;

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/view/Grid3;->mGrid:Landroid/widget/GridView;

    new-instance v1, Lio/appium/android/apis/view/Grid3$AppsAdapter;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/Grid3$AppsAdapter;-><init>(Lio/appium/android/apis/view/Grid3;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v0, p0, Lio/appium/android/apis/view/Grid3;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/view/Grid3;->mGrid:Landroid/widget/GridView;

    new-instance v1, Lio/appium/android/apis/view/Grid3$MultiChoiceModeListener;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/Grid3$MultiChoiceModeListener;-><init>(Lio/appium/android/apis/view/Grid3;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 56
    return-void
.end method
