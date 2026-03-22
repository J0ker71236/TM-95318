.class public Lio/appium/android/apis/ApiDemos;
.super Landroid/app/ListActivity;
.source "ApiDemos.java"


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lio/appium/android/apis/ApiDemos$1;

    invoke-direct {v0}, Lio/appium/android/apis/ApiDemos$1;-><init>()V

    sput-object v0, Lio/appium/android/apis/ApiDemos;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    return-object v0
.end method

.method protected addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 149
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "contentDescription"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "intent"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method protected browseIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "result":Landroid/content/Intent;
    const-class v1, Lio/appium/android/apis/ApiDemos;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const-string v1, "io.appium.android.apis.Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    return-object v0
.end method

.method protected getData(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "myData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v4, "appium.android.intent.category.SAMPLE_CODE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/ApiDemos;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 65
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 67
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    .line 68
    return-object v2

    .line 71
    :cond_0
    move-object/from16 v7, p1

    .line 73
    .local v7, "prefixWithSlash":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    const/4 v8, 0x0

    goto :goto_0

    .line 76
    :cond_1
    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "prefixPath":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 80
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 82
    .local v9, "len":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v10, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_b

    .line 85
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 86
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 87
    .local v13, "labelSeq":Ljava/lang/CharSequence;
    if-eqz v13, :cond_2

    .line 88
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_2
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 91
    .local v14, "label":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_8

    .line 93
    :cond_4
    :goto_3
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "labelPath":[Ljava/lang/String;
    if-nez v8, :cond_5

    aget-object v16, v15, v5

    move-object/from16 v5, v16

    goto :goto_4

    :cond_5
    array-length v5, v8

    aget-object v5, v15, v5

    .line 97
    .local v5, "nextLabel":Ljava/lang/String;
    :goto_4
    if-eqz v8, :cond_6

    move-object/from16 v17, v3

    .end local v3    # "mainIntent":Landroid/content/Intent;
    .local v17, "mainIntent":Landroid/content/Intent;
    array-length v3, v8

    goto :goto_5

    .end local v17    # "mainIntent":Landroid/content/Intent;
    .restart local v3    # "mainIntent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "mainIntent":Landroid/content/Intent;
    .restart local v17    # "mainIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v18, v4

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    array-length v4, v15

    const/16 v19, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7

    .line 98
    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lio/appium/android/apis/ApiDemos;->activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3}, Lio/appium/android/apis/ApiDemos;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_8

    .line 102
    :cond_7
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    .line 103
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v5

    goto :goto_6

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v0, v3}, Lio/appium/android/apis/ApiDemos;->browseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3}, Lio/appium/android/apis/ApiDemos;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    .line 104
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v10, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v3, "Accessibility"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 112
    const-string v3, "Access\'ibility"

    .line 113
    .local v3, "testLabel":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v1, v5

    goto :goto_7

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Lio/appium/android/apis/ApiDemos;->browseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lio/appium/android/apis/ApiDemos;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    .line 114
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v3    # "testLabel":Ljava/lang/String;
    .end local v5    # "nextLabel":Ljava/lang/String;
    .end local v12    # "info":Landroid/content/pm/ResolveInfo;
    .end local v13    # "labelSeq":Ljava/lang/CharSequence;
    .end local v14    # "label":Ljava/lang/String;
    .end local v15    # "labelPath":[Ljava/lang/String;
    :cond_a
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v1, p1

    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v17    # "mainIntent":Landroid/content/Intent;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .local v3, "mainIntent":Landroid/content/Intent;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_b
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 121
    .end local v3    # "mainIntent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "i":I
    .restart local v17    # "mainIntent":Landroid/content/Intent;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lio/appium/android/apis/ApiDemos;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lio/appium/android/apis/ApiDemos;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "io.appium.android.apis.Path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 49
    const-string v1, ""

    .line 52
    :cond_0
    new-instance v8, Lio/appium/android/apis/SimpleAdapterWithDesc;

    invoke-virtual {p0, v1}, Lio/appium/android/apis/ApiDemos;->getData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const v5, 0x1090003

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "title"

    aput-object v7, v6, v3

    const-string v3, "contentDescription"

    const/4 v9, 0x1

    aput-object v3, v6, v9

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lio/appium/android/apis/SimpleAdapterWithDesc;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v8}, Lio/appium/android/apis/ApiDemos;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {p0}, Lio/appium/android/apis/ApiDemos;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 56
    return-void

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 159
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 161
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "intent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lio/appium/android/apis/ApiDemos;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method
