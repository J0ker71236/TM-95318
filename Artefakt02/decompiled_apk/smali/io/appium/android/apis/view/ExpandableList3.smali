.class public Lio/appium/android/apis/view/ExpandableList3;
.super Landroid/app/ExpandableListActivity;
.source "ExpandableList3.java"


# static fields
.field private static final IS_EVEN:Ljava/lang/String; = "IS_EVEN"

.field private static final NAME:Ljava/lang/String; = "NAME"


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "groupData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 45
    .local v11, "childData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_3

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v2, "curGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v3, "NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v3, "IS_EVEN"

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    const-string v4, "This group is even"

    goto :goto_1

    :cond_0
    const-string v4, "This group is odd"

    :goto_1
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    const/16 v5, 0xf

    if-ge v4, v5, :cond_2

    .line 53
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v5, "curChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v6, "NAME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Child "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v6, "IS_EVEN"

    rem-int/lit8 v7, v4, 0x2

    if-nez v7, :cond_1

    const-string v7, "This child is even"

    goto :goto_3

    :cond_1
    const-string v7, "This child is odd"

    :goto_3
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v5    # "curChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 58
    .end local v4    # "j":I
    :cond_2
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v2    # "curGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_3
    new-instance v12, Landroid/widget/SimpleExpandableListAdapter;

    const v4, 0x1090006

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string v2, "NAME"

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v2, "IS_EVEN"

    const/4 v6, 0x1

    aput-object v2, v5, v6

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    const v8, 0x1090007

    new-array v9, v1, [Ljava/lang/String;

    const-string v2, "NAME"

    aput-object v2, v9, v3

    const-string v2, "IS_EVEN"

    aput-object v2, v9, v6

    new-array v10, v1, [I

    fill-array-data v10, :array_1

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object v6, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v10}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    iput-object v12, p0, Lio/appium/android/apis/view/ExpandableList3;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 73
    iget-object v1, p0, Lio/appium/android/apis/view/ExpandableList3;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ExpandableList3;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 74
    return-void

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data

    :array_1
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method
