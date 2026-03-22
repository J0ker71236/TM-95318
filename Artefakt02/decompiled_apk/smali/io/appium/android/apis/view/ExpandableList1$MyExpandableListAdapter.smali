.class public Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableList1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ExpandableList1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyExpandableListAdapter"
.end annotation


# instance fields
.field private children:[[Ljava/lang/String;

.field private groups:[Ljava/lang/String;

.field final synthetic this$0:Lio/appium/android/apis/view/ExpandableList1;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/ExpandableList1;)V
    .locals 8
    .param p1, "this$0"    # Lio/appium/android/apis/view/ExpandableList1;

    .line 89
    iput-object p1, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->this$0:Lio/appium/android/apis/view/ExpandableList1;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 91
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "People Names"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Dog Names"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Cat Names"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Fish Names"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->groups:[Ljava/lang/String;

    .line 92
    new-array v1, v0, [[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const-string v7, "Arnold"

    aput-object v7, v2, v3

    const-string v7, "Barry"

    aput-object v7, v2, v4

    const-string v7, "Chuck"

    aput-object v7, v2, v5

    const-string v7, "David"

    aput-object v7, v2, v6

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Ace"

    aput-object v2, v0, v3

    const-string v2, "Bandit"

    aput-object v2, v0, v4

    const-string v2, "Cha-Cha"

    aput-object v2, v0, v5

    const-string v2, "Deuce"

    aput-object v2, v0, v6

    aput-object v0, v1, v4

    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "Fluffy"

    aput-object v2, v0, v3

    const-string v2, "Snuggles"

    aput-object v2, v0, v4

    aput-object v0, v1, v5

    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "Goldy"

    aput-object v2, v0, v3

    const-string v2, "Bubbles"

    aput-object v2, v0, v4

    aput-object v0, v1, v6

    iput-object v1, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->children:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->children:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 104
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {p0}, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->getGenericView()Landroid/widget/TextView;

    move-result-object v0

    .line 128
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->children:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method

.method public getGenericView()Landroid/widget/TextView;
    .locals 4

    .line 113
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 116
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->this$0:Lio/appium/android/apis/view/ExpandableList1;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    const/4 v2, 0x0

    const/16 v3, 0x24

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    return-object v1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .line 133
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->groups:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->groups:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {p0}, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->getGenericView()Landroid/widget/TextView;

    move-result-object v0

    .line 147
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/ExpandableList1$MyExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 152
    const/4 v0, 0x1

    return v0
.end method
