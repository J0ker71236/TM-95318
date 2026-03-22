.class public Lio/appium/android/apis/accessibility/TaskListActivity;
.super Landroid/app/ListActivity;
.source "TaskListActivity.java"


# static fields
.field private static final sSettingsIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/appium/android/apis/accessibility/TaskListActivity;->sSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .line 29
    sget-object v0, Lio/appium/android/apis/accessibility/TaskListActivity;->sSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/TaskListActivity;->setContentView(I)V

    .line 42
    const/4 v0, 0x7

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    .line 43
    .local v1, "checkboxes":[Z
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Take out Trash"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Do Laundry"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Conquer World"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "Nap"

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "Do Taxes"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "Abolish IRS"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "Tea with Aunt Sharon"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    .line 47
    .local v0, "labels":[Ljava/lang/String;
    new-instance v2, Lio/appium/android/apis/accessibility/TaskAdapter;

    invoke-direct {v2, p0, v0, v1}, Lio/appium/android/apis/accessibility/TaskAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[Z)V

    .line 48
    .local v2, "myAdapter":Lio/appium/android/apis/accessibility/TaskAdapter;
    invoke-virtual {p0, v2}, Lio/appium/android/apis/accessibility/TaskListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    const v3, 0x7f090048

    invoke-virtual {p0, v3}, Lio/appium/android/apis/accessibility/TaskListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 52
    .local v3, "button":Landroid/widget/ImageButton;
    new-instance v4, Lio/appium/android/apis/accessibility/TaskListActivity$1;

    invoke-direct {v4, p0}, Lio/appium/android/apis/accessibility/TaskListActivity$1;-><init>(Lio/appium/android/apis/accessibility/TaskListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
