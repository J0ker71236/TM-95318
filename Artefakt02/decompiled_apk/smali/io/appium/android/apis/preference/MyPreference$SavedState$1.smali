.class final Lio/appium/android/apis/preference/MyPreference$SavedState$1;
.super Ljava/lang/Object;
.source "MyPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/preference/MyPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/appium/android/apis/preference/MyPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/appium/android/apis/preference/MyPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    new-instance v0, Lio/appium/android/apis/preference/MyPreference$SavedState;

    invoke-direct {v0, p1}, Lio/appium/android/apis/preference/MyPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lio/appium/android/apis/preference/MyPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lio/appium/android/apis/preference/MyPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/appium/android/apis/preference/MyPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 166
    new-array v0, p1, [Lio/appium/android/apis/preference/MyPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lio/appium/android/apis/preference/MyPreference$SavedState$1;->newArray(I)[Lio/appium/android/apis/preference/MyPreference$SavedState;

    move-result-object p1

    return-object p1
.end method
