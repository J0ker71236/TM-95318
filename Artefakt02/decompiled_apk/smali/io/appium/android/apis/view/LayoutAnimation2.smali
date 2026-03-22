.class public Lio/appium/android/apis/view/LayoutAnimation2;
.super Landroid/app/ListActivity;
.source "LayoutAnimation2.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bordeaux"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Lyon"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Marseille"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Nancy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Paris"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Toulouse"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Strasbourg"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation2;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation2;->mStrings:[Ljava/lang/String;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LayoutAnimation2;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 39
    .local v0, "set":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 40
    .local v1, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 43
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v2

    .line 47
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 50
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v0, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 51
    .local v2, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0}, Lio/appium/android/apis/view/LayoutAnimation2;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 52
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 53
    return-void
.end method
