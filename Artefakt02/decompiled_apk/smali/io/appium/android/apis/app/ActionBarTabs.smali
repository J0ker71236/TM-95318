.class public Lio/appium/android/apis/app/ActionBarTabs;
.super Landroid/app/Activity;
.source "ActionBarTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;,
        Lio/appium/android/apis/app/ActionBarTabs$TabListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTab(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    .line 47
    .local v1, "tabCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    new-instance v4, Lio/appium/android/apis/app/ActionBarTabs$TabListener;

    new-instance v5, Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;

    invoke-direct {v5, p0, v2}, Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;-><init>(Lio/appium/android/apis/app/ActionBarTabs;Ljava/lang/String;)V

    invoke-direct {v4, p0, v5}, Lio/appium/android/apis/app/ActionBarTabs$TabListener;-><init>(Lio/appium/android/apis/app/ActionBarTabs;Lio/appium/android/apis/app/ActionBarTabs$TabContentFragment;)V

    .line 50
    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ActionBarTabs;->setContentView(I)V

    .line 42
    return-void
.end method

.method public onRemoveAllTabs(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 74
    return-void
.end method

.method public onRemoveTab(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public onToggleTabs(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v1, v3, :cond_0

    .line 64
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 65
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 68
    invoke-virtual {v0, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 70
    :goto_0
    return-void
.end method
