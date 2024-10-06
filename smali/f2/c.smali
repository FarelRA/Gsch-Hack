.class public final Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf2/c;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lf2/c;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 16
    .line 17
    new-instance v3, Ljava/security/spec/EllipticCurve;

    .line 18
    .line 19
    new-instance v4, Ljava/security/spec/ECFieldFp;

    .line 20
    .line 21
    new-instance v5, Ljava/math/BigInteger;

    .line 22
    .line 23
    const-string v6, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    .line 24
    .line 25
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Ljava/math/BigInteger;

    .line 32
    .line 33
    const-string v6, "115792089210356248762697446949407573530086143415290314195533631308867097853948"

    .line 34
    .line 35
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Ljava/math/BigInteger;

    .line 39
    .line 40
    const-string v7, "41058363725152142129326129780047268409114441015993725554835256314039467401291"

    .line 41
    .line 42
    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Ljava/security/spec/ECPoint;

    .line 49
    .line 50
    new-instance v5, Ljava/math/BigInteger;

    .line 51
    .line 52
    const-string v6, "48439561293906451759052585252797914202762949526041747995844080717082404635286"

    .line 53
    .line 54
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/math/BigInteger;

    .line 58
    .line 59
    const-string v7, "36134250956749795798585127919587881956611106672985015071877198253568414405109"

    .line 60
    .line 61
    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Ljava/math/BigInteger;

    .line 68
    .line 69
    const-string v6, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    .line 70
    .line 71
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 79
    .line 80
    new-instance v4, Ljava/security/spec/EllipticCurve;

    .line 81
    .line 82
    new-instance v5, Ljava/security/spec/ECFieldFp;

    .line 83
    .line 84
    new-instance v7, Ljava/math/BigInteger;

    .line 85
    .line 86
    const-string v8, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319"

    .line 87
    .line 88
    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v7}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 92
    .line 93
    .line 94
    new-instance v7, Ljava/math/BigInteger;

    .line 95
    .line 96
    const-string v8, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112316"

    .line 97
    .line 98
    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v8, Ljava/math/BigInteger;

    .line 102
    .line 103
    const-string v9, "27580193559959705877849011840389048093056905856361568521428707301988689241309860865136260764883745107765439761230575"

    .line 104
    .line 105
    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v4, v5, v7, v8}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 109
    .line 110
    .line 111
    new-instance v5, Ljava/security/spec/ECPoint;

    .line 112
    .line 113
    new-instance v7, Ljava/math/BigInteger;

    .line 114
    .line 115
    const-string v8, "26247035095799689268623156744566981891852923491109213387815615900925518854738050089022388053975719786650872476732087"

    .line 116
    .line 117
    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v8, Ljava/math/BigInteger;

    .line 121
    .line 122
    const-string v9, "8325710961489029985546751289520108179287853048861315594709205902480503199884419224438643760392947333078086511627871"

    .line 123
    .line 124
    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v5, v7, v8}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 128
    .line 129
    .line 130
    new-instance v7, Ljava/math/BigInteger;

    .line 131
    .line 132
    const-string v8, "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643"

    .line 133
    .line 134
    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v3, v4, v5, v7, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Ljava/security/spec/ECParameterSpec;

    .line 141
    .line 142
    new-instance v5, Ljava/security/spec/EllipticCurve;

    .line 143
    .line 144
    new-instance v7, Ljava/security/spec/ECFieldFp;

    .line 145
    .line 146
    new-instance v8, Ljava/math/BigInteger;

    .line 147
    .line 148
    const-string v9, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151"

    .line 149
    .line 150
    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v7, v8}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 154
    .line 155
    .line 156
    new-instance v8, Ljava/math/BigInteger;

    .line 157
    .line 158
    const-string v9, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057148"

    .line 159
    .line 160
    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v9, Ljava/math/BigInteger;

    .line 164
    .line 165
    const-string v10, "1093849038073734274511112390766805569936207598951683748994586394495953116150735016013708737573759623248592132296706313309438452531591012912142327488478985984"

    .line 166
    .line 167
    invoke-direct {v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-direct {v5, v7, v8, v9}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 171
    .line 172
    .line 173
    new-instance v7, Ljava/security/spec/ECPoint;

    .line 174
    .line 175
    new-instance v8, Ljava/math/BigInteger;

    .line 176
    .line 177
    const-string v9, "2661740802050217063228768716723360960729859168756973147706671368418802944996427808491545080627771902352094241225065558662157113545570916814161637315895999846"

    .line 178
    .line 179
    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v9, Ljava/math/BigInteger;

    .line 183
    .line 184
    const-string v10, "3757180025770020463545507224491183603594455134769762486694567779615544477440556316691234405012945539562144444537289428522585666729196580810124344277578376784"

    .line 185
    .line 186
    invoke-direct {v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v7, v8, v9}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 190
    .line 191
    .line 192
    new-instance v8, Ljava/math/BigInteger;

    .line 193
    .line 194
    const-string v9, "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449"

    .line 195
    .line 196
    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v4, v5, v7, v8, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 200
    .line 201
    .line 202
    const-string v5, "P-256"

    .line 203
    .line 204
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    const-string v2, "P-384"

    .line 215
    .line 216
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    const-string v2, "P-521"

    .line 227
    .line 228
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    return-void
.end method
