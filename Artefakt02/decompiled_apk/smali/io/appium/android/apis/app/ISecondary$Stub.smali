.class public abstract Lio/appium/android/apis/app/ISecondary$Stub;
.super Landroid/os/Binder;
.source "ISecondary.java"

# interfaces
.implements Lio/appium/android/apis/app/ISecondary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ISecondary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/ISecondary$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.appium.android.apis.app.ISecondary"

.field static final TRANSACTION_basicTypes:I = 0x2

.field static final TRANSACTION_getPid:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "io.appium.android.apis.app.ISecondary"

    invoke-virtual {p0, p0, v0}, Lio/appium/android/apis/app/ISecondary$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/appium/android/apis/app/ISecondary;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "io.appium.android.apis.app.ISecondary"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/appium/android/apis/app/ISecondary;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lio/appium/android/apis/app/ISecondary;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lio/appium/android/apis/app/ISecondary$Stub$Proxy;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/ISecondary$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "io.appium.android.apis.app.ISecondary"

    .line 44
    .local v3, "descriptor":Ljava/lang/String;
    const v4, 0x5f4e5446

    const/4 v5, 0x1

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 61
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 67
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 69
    .local v10, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 71
    .local v17, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 73
    .local v18, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 74
    .local v20, "_arg5":Ljava/lang/String;
    move-object/from16 v6, p0

    move v7, v4

    move-wide v8, v15

    move/from16 v11, v17

    move-wide/from16 v12, v18

    move-object/from16 v14, v20

    invoke-virtual/range {v6 .. v14}, Lio/appium/android/apis/app/ISecondary$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v5

    .line 53
    .end local v4    # "_arg0":I
    .end local v10    # "_arg2":Z
    .end local v15    # "_arg1":J
    .end local v17    # "_arg3":F
    .end local v18    # "_arg4":D
    .end local v20    # "_arg5":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/app/ISecondary$Stub;->getPid()I

    move-result v4

    .line 55
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v5

    .line 48
    .end local v4    # "_result":I
    :cond_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
