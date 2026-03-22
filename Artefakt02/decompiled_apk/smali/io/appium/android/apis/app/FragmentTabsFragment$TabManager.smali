.class public Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;
.super Ljava/lang/Object;
.source "FragmentTabsFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentTabsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$DummyTabFactory;,
        Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    }
.end annotation


# instance fields
.field private final mContainerId:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentTabTag:Ljava/lang/String;

.field private mInitialized:Z

.field private mLastTab:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

.field private final mManager:Landroid/app/FragmentManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/FragmentManager;
    .param p3, "containerId"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabs:Ljava/util/ArrayList;

    .line 128
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mManager:Landroid/app/FragmentManager;

    .line 130
    iput p3, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mContainerId:I

    .line 131
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "newTab":Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 218
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    .line 219
    .local v2, "tab":Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    invoke-static {v2}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$100(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    move-object v0, v2

    .line 217
    .end local v2    # "tab":Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_7

    .line 226
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mLastTab:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    if-eq v1, v0, :cond_6

    .line 227
    if-nez p2, :cond_2

    .line 228
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 230
    :cond_2
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mLastTab:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    if-eqz v1, :cond_3

    .line 231
    invoke-static {v1}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 232
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mLastTab:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    invoke-static {v1}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 235
    :cond_3
    if-eqz v0, :cond_5

    .line 236
    invoke-static {v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_4

    .line 237
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$200(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$300(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 237
    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$002(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 239
    iget v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mContainerId:I

    invoke-static {v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-static {v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$100(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 241
    :cond_4
    invoke-static {v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 245
    :cond_5
    :goto_1
    iput-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mLastTab:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    .line 247
    :cond_6
    return-object p2

    .line 224
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tab known for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 144
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$DummyTabFactory;

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 145
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 147
    .local v1, "info":Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 149
    return-void
.end method

.method public handleCreateView(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    .line 137
    const v0, 0x1020012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    .line 138
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 139
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabHost already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleDestroyView()V
    .locals 1

    .line 193
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mCurrentTabTag:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    .line 195
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mInitialized:Z

    .line 197
    return-void
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 200
    const-string v0, "tab"

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mCurrentTabTag:Ljava/lang/String;

    .line 200
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public handleViewStateRestored(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 152
    if-eqz p1, :cond_0

    .line 153
    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mCurrentTabTag:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 162
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 163
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    .line 164
    .local v3, "tab":Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    iget-object v4, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mManager:Landroid/app/FragmentManager;

    invoke-static {v3}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$100(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    invoke-static {v3, v4}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$002(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 165
    invoke-static {v3}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_3

    .line 166
    invoke-static {v3}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$100(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    iput-object v3, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mLastTab:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    goto :goto_1

    .line 174
    :cond_1
    if-nez v1, :cond_2

    .line 175
    iget-object v4, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 177
    :cond_2
    invoke-static {v3}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 162
    .end local v3    # "tab":Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mInitialized:Z

    .line 185
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_5

    .line 187
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 188
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 190
    :cond_5
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .line 206
    iget-boolean v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 210
    .local v0, "ft":Landroid/app/FragmentTransaction;
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 213
    :cond_1
    return-void
.end method
