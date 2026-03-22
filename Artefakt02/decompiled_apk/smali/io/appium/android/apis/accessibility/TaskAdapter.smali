.class final Lio/appium/android/apis/accessibility/TaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskListView.java"


# instance fields
.field private mCheckboxes:[Z

.field private mContext:Landroid/content/Context;

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "labels"    # [Ljava/lang/String;
    .param p3, "checkboxes"    # [Z

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mCheckboxes:[Z

    .line 69
    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mCheckboxes:[Z

    .line 76
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 112
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0b0115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v0, 0x7f09020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 94
    .local v0, "checkbox":Landroid/widget/CheckBox;
    iget-object v1, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mCheckboxes:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    const v1, 0x7f09020b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, "label":Landroid/widget/TextView;
    iget-object v2, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e039f

    .line 100
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/appium/android/apis/accessibility/TaskAdapter;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "contentDescription":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    return-object p2
.end method
