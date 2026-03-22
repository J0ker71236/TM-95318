.class public Lio/appium/android/apis/view/List7;
.super Landroid/app/ListActivity;
.source "List7.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final COLUMN_PHONE_LABEL:I = 0x2

.field private static final COLUMN_PHONE_NUMBER:I = 0x3

.field private static final COLUMN_PHONE_TYPE:I = 0x1

.field private static final PHONE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mPhone:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/view/List7;->PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List7;->setContentView(I)V

    .line 58
    const v0, 0x7f09015e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List7;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/view/List7;->mPhone:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lio/appium/android/apis/view/List7;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 63
    invoke-virtual {p0}, Lio/appium/android/apis/view/List7;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lio/appium/android/apis/view/List7;->PHONE_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1 NOT NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List7;->startManagingCursor(Landroid/database/Cursor;)V

    .line 67
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const-string v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v11, v4

    new-array v12, v2, [I

    const v2, 0x1020014

    aput v2, v12, v4

    const v9, 0x1090003

    move-object v7, v1

    move-object v8, p0

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 76
    .local v1, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List7;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 80
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_1

    .line 82
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 83
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 84
    .local v1, "type":I
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "phone":Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, "label":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 88
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/List7;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 92
    .local v4, "numberType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "text":Ljava/lang/String;
    iget-object v6, p0, Lio/appium/android/apis/view/List7;->mPhone:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "type":I
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "numberType":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
