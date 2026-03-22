.class public Lio/appium/android/apis/preference/MyPreference;
.super Landroid/preference/Preference;
.source "MyPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/preference/MyPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/MyPreference;->setWidgetLayoutResource(I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 46
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 49
    const v0, 0x7f09013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "myTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 51
    iget v1, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 57
    iget v0, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    add-int/lit8 v0, v0, 0x1

    .line 60
    .local v0, "newValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/preference/MyPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    return-void

    .line 66
    :cond_0
    iput v0, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    .line 70
    iget v1, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    invoke-virtual {p0, v1}, Lio/appium/android/apis/preference/MyPreference;->persistInt(I)Z

    .line 73
    invoke-virtual {p0}, Lio/appium/android/apis/preference/MyPreference;->notifyChanged()V

    .line 74
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/appium/android/apis/preference/MyPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 121
    return-void

    .line 125
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/appium/android/apis/preference/MyPreference$SavedState;

    .line 126
    .local v0, "myState":Lio/appium/android/apis/preference/MyPreference$SavedState;
    invoke-virtual {v0}, Lio/appium/android/apis/preference/MyPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 127
    iget v1, v0, Lio/appium/android/apis/preference/MyPreference$SavedState;->clickCounter:I

    iput v1, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    .line 128
    invoke-virtual {p0}, Lio/appium/android/apis/preference/MyPreference;->notifyChanged()V

    .line 129
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 104
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 105
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lio/appium/android/apis/preference/MyPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    return-object v0

    .line 111
    :cond_0
    new-instance v1, Lio/appium/android/apis/preference/MyPreference$SavedState;

    invoke-direct {v1, v0}, Lio/appium/android/apis/preference/MyPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 112
    .local v1, "myState":Lio/appium/android/apis/preference/MyPreference$SavedState;
    iget v2, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    iput v2, v1, Lio/appium/android/apis/preference/MyPreference$SavedState;->clickCounter:I

    .line 113
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 85
    if-eqz p1, :cond_0

    .line 87
    iget v0, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/MyPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    goto :goto_0

    .line 90
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    .local v0, "value":I
    iput v0, p0, Lio/appium/android/apis/preference/MyPreference;->mClickCounter:I

    .line 92
    invoke-virtual {p0, v0}, Lio/appium/android/apis/preference/MyPreference;->persistInt(I)Z

    .line 94
    .end local v0    # "value":I
    :goto_0
    return-void
.end method
