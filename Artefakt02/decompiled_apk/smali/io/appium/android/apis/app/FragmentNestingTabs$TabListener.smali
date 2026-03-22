.class public Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;
.super Ljava/lang/Object;
.source "FragmentNestingTabs.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentNestingTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArgs:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;, "Lio/appium/android/apis/app/FragmentNestingTabs$TabListener<TT;>;"
    .local p3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;, "Lio/appium/android/apis/app/FragmentNestingTabs$TabListener<TT;>;"
    .local p3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mActivity:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mTag:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mClass:Ljava/lang/Class;

    .line 85
    iput-object p4, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mArgs:Landroid/os/Bundle;

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mFragment:Landroid/app/Fragment;

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 93
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 94
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 114
    .local p0, "this":Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;, "Lio/appium/android/apis/app/FragmentNestingTabs$TabListener<TT;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mActivity:Landroid/app/Activity;

    const-string v1, "Reselected!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 99
    .local p0, "this":Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;, "Lio/appium/android/apis/app/FragmentNestingTabs$TabListener<TT;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mFragment:Landroid/app/Fragment;

    .line 101
    const v0, 0x1020002

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 105
    :goto_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 108
    .local p0, "this":Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;, "Lio/appium/android/apis/app/FragmentNestingTabs$TabListener<TT;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentNestingTabs$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 111
    :cond_0
    return-void
.end method
