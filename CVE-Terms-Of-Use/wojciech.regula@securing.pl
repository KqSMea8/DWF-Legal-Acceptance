Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp534862ivh;
        Fri, 9 Feb 2018 00:24:22 -0800 (PST)
X-Google-Smtp-Source: AH8x224xQESBH7N6UGw9r214gbRPIrE5n2WEakcmHRwThtFp3KsJqQs/yHQ6irjvJXacxhl0FG0b
X-Received: by 10.25.35.137 with SMTP id j131mr1417343lfj.17.1518164662313;
        Fri, 09 Feb 2018 00:24:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518164662; cv=none;
        d=google.com; s=arc-20160816;
        b=sMfW5jNQoMB3m8h5dcI2KL8cLaT3x/iXD8c2J4n0pRO3PY3nzC6CuXq8vi/6IaxjOf
         Z//Js78rpLDJh4Z+W2hE7sAleIAsTbW7cyJsV2PtmpfiJZJlSagYysmMh0hJQ5SB5QY7
         UZo03BTeMjoqrsqtxgNKzthhrj5QSxSzLAzXGUp8K20lBtCDWTJOIH+Z4S8R2GtuKyd9
         Gf/AhFoIdO1MA6AL02VHSon8AOwkaMpOVGDGq4YiArv62vIRGE6HbH0LySr/yRl6KrOQ
         j3Heu3ftnYWuZWVlcQ1PqhwLDOCSCxu0WD9Gv6i0eIxdWw274oEmSRR107IxQV0Cnb7d
         1BbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:arc-authentication-results;
        bh=oabw3iJRS+rzBYYMm5VMwcpsHNY5q5TQxDwSHeKsv7c=;
        b=aM+OOjll/PFsjuuFDRJtwkCXpdx2SJ6P0dVpBBYf0LSoJTepPZKz92dPdfqk0MlUQw
         KUg4a5338RodPdLCqDHIZNnzmc3PcllPoBPN6IJyiiiAx7QMYEzeO4i+T6sr5LrRVLQy
         895rjfD+Dd49LzyJpvSUqSoDRVHES3yUgWTlHeQrTh26QCJqxYBUvE4xNgNmBavg+C1L
         cUq7GYkGQoq+WqMHS8NU4fayimsgItNL/ZxzKPdqd7NBMQsKz8wEwbVNNC+KcY4vE3h3
         rO9zhO2B47IzyxEA0/DQYviRcKveo0lcp9bsaL6BSEWLnQFj0hYgU8PYAod7A7tE5UGa
         ojUQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of wojciech.regula@securing.pl designates 91.150.194.132 as permitted sender) smtp.mailfrom=Wojciech.Regula@securing.pl
Return-Path: <Wojciech.Regula@securing.pl>
Received: from securing.pl (mail.securing.pl. [91.150.194.132])
        by mx.google.com with ESMTP id u15si612946lju.198.2018.02.09.00.24.21
        for <kurt@seifried.org>;
        Fri, 09 Feb 2018 00:24:22 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of wojciech.regula@securing.pl designates 91.150.194.132 as permitted sender) client-ip=91.150.194.132;
Authentication-Results: mx.google.com;
       spf=pass (google.com: best guess record for domain of wojciech.regula@securing.pl designates 91.150.194.132 as permitted sender) smtp.mailfrom=Wojciech.Regula@securing.pl
Received: from localhost (localhost [127.0.0.1])
	by securing.pl (Securing Mailer) with ESMTP id 3B1102B0A33
	for <kurt@seifried.org>; Fri,  9 Feb 2018 09:24:21 +0100 (CET)
Received: from securing.pl ([127.0.0.1])
	by localhost (mail.securing.pl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iTyWwawi5nBX for <kurt@seifried.org>;
	Fri,  9 Feb 2018 09:24:13 +0100 (CET)
Received: from ROHAN.securing.pl (narghil.securing.pl [10.0.0.99])
	by securing.pl (Securing Mailer) with ESMTPS id 6A3CF2B0A23
	for <kurt@seifried.org>; Fri,  9 Feb 2018 09:24:13 +0100 (CET)
Received: from ROHAN.securing.pl ([fe80::3176:9b1d:1cde:4ab3]) by
 ROHAN.securing.pl ([fe80::3176:9b1d:1cde:4ab3%14]) with mapi id
 14.03.0339.000; Fri, 9 Feb 2018 09:25:24 +0100
From: =?utf-8?B?V29qY2llY2ggUmVndcWCYQ==?= <Wojciech.Regula@securing.pl>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 wojciech.regula@securing.pl
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 wojciech.regula@securing.pl
Thread-Index: AQHToPMd3RFX3kpvX0u4A4iJyK9ReKObvNKA
Date: Fri, 9 Feb 2018 08:25:23 +0000
Message-ID: <8C3D24DD-E0D9-4AD0-8D38-F3E3C2578892@securing.pl>
References: <20180208153852.12562.58636@slab.local>
In-Reply-To: <20180208153852.12562.58636@slab.local>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [172.17.18.74]
Content-Type: text/plain; charset="utf-8"
Content-ID: <7806E604DCC3C3458CAA1207EAD33B08@securing.pl>
Content-Transfer-Encoding: base64
MIME-Version: 1.0

SSBhY2NlcHQNCg0KDQrvu79EbmlhIDA4LjAyLjIwMTgsIDE2OjQwIHXFvHl0a293bmlrIOKAnmt1
cnRAc2VpZnJpZWQub3Jn4oCdIDxrdXJ0QHNlaWZyaWVkLm9yZz4gbmFwaXNhxYI6DQoNCiAgICBU
aGlzIGlzIGEgY29uZmlybWF0aW9uIGVtYWlsIHNlbnQgZnJvbSBDVkUgcmVxdWVzdCBmb3JtIGF0
IGh0dHBzOi8vaXdhbnRhY3ZlLm9yZy8gYXNraW5nIHlvdSB0byBhY2NlcHQgdGhlIE1JVFJFIENW
RSBUZXJtcyBvZiBVc2UgKGFzc3VtaW5nIHlvdSBmaWxsZWQgb3V0IHRoZSBDVkUgZm9ybSBhbmQg
d2FudCBvbmUsIHdlIGNhbid0IHVzZSB0aGUgZGF0YSB1bnRpbCB5b3UgYWNjZXB0IHRoZSBNSVRS
RSBDVkUgVGVybXMgb2YgVXNlKS4gDQogICAgDQogICAgU2ltcGx5IHF1b3RlIHRoZSBlbWFpbCBh
bmQgcmVwbHkgd2l0aCAiSSBhY2NlcHQiIGF0IHRoZSB0b3AgaWYgeW91IGFncmVlIHRvIHRoZSBN
SVRSRSBDVkUgVGVybXMgb2YgVXNlIGFuZCB3ZSB3aWxsIGFkZCBhIGNvcHkgb2YgdGhlIGVtYWls
IHRvIHRoZSBEV0YgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSBhY2NlcHRhbmNlIGRhdGEgYXQgaHR0
cHM6Ly9naXRodWIuY29tL2Rpc3RyaWJ1dGVkd2Vha25lc3NmaWxpbmcvRFdGLUxlZ2FsLUFjY2Vw
dGFuY2UvdHJlZS9tYXN0ZXIvVGVybXMtT2YtVXNlDQogICAgDQogICAgVGhlIHJlYXNvbiB3ZSB1
c2UgYSBjb21wbGV0ZSBjb3B5IG9mIHRoZSBlbWFpbCBpcyB0aGF0IGl0IHByb3ZpZGVzIGFuIGFy
dGlmYWN0IHNob3dpbmcgdGhhdCB0aGUgZW1haWwgYWRkcmVzcyBhY2NlcHRlZCB0aGUgVGVybXMg
b2YgVXNlLCB3aGVuIHRoZXkgd2VyZSBhY2NlcHRlZCBhbmQgc28gb24uIA0KICAgIA0KICAgIElm
IHlvdSBkaWQgbm90IHN1Ym1pdCBhIENWRSByZXF1ZXN0IHRvIHRoZSBEV0YgeW91IGNhbiBzYWZl
bHkgaWdub3JlIHRoaXMgbWVzc2FnZSwgaG93ZXZlciB3ZSBtYXkgcmVzZW5kIGl0IGF0IHNvbWUg
cG9pbnQgaW4gdGhlIGZ1dHVyZSwgaWYgeW91IGRvbid0IHdhbnQgYW55IGZ1dHVyZSBlbWFpbHMg
c2ltcGx5IHJlcGx5IHdpdGggInVuc3Vic2NyaWJlIiBvciAiRE9OJ1QgU0VORCBNRSBUSElTIEVN
QUlMIEVWRVIgQUdBSU4iIGFuZCBJJ2xsIGFkZCB5b3VyIGVtYWlsIGFkZHJlc3MgdG8gdGhlIGJs
b2NrIGxpc3Qgc28gd2UgZG9uJ3Qgc3BhbSB5b3Ugd2l0aCB0aGVzZSwgcGxlYXNlIG5vdGUgdGhh
dCB0aGlzIHdpbGwgcHJldmVudCB5b3UgZnJvbSBiZWluZyBhYmxlIHRvIGFjY2VwdCB0aGUgTUlU
UkUgQ1ZFIFRlcm1zIG9mIFVzZSB2aWEgdGhlIERXRiBhdXRvbWF0aWNhbGx5IGluIGZ1dHVyZSAo
eW91J2xsIGhhdmUgdG8gbWFudWFsbHkgYXNrKS4gQnV0IGFnYWluLCBpZiB5b3UgaGF2ZSBubyBp
ZGVhIHdoYXQgYSBDVkUgaXMgdGhlbiB5b3UgY2FuIGlnbm9yZSB0aGlzL2FzayB0byBiZSBhZGRl
ZCB0byB0aGUgYmxvY2sgbGlzdCB3aXRoIG5vIHByb2JsZW1zLiANCiAgICANCiAgICBNSVRSRSBD
VkUgVGVybXMgb2YgVXNlDQogICAgDQogICAgTElDRU5TRQ0KICAgIA0KICAgIFN1Ym1pc3Npb25z
OiBGb3IgYWxsIG1hdGVyaWFscyB5b3Ugc3VibWl0IHRvIHRoZSBDb21tb24gVnVsbmVyYWJpbGl0
aWVzIGFuZCBFeHBvc3VyZXMgKENWRT8/KSwgeW91IGhlcmVieSBncmFudCB0byBUaGUgTUlUUkUg
Q29ycG9yYXRpb24gKE1JVFJFKSBhbmQgYWxsIENWRSBOdW1iZXJpbmcgQXV0aG9yaXRpZXMgKENO
QXMpIGEgcGVycGV0dWFsLCB3b3JsZHdpZGUsIG5vbi1leGNsdXNpdmUsIG5vLWNoYXJnZSwgcm95
YWx0eS1mcmVlLCBpcnJldm9jYWJsZSBjb3B5cmlnaHQgbGljZW5zZSB0byByZXByb2R1Y2UsIHBy
ZXBhcmUgZGVyaXZhdGl2ZSB3b3JrcyBvZiwgcHVibGljbHkgZGlzcGxheSwgcHVibGljbHkgcGVy
Zm9ybSwgc3VibGljZW5zZSwgYW5kIGRpc3RyaWJ1dGUgc3VjaCBtYXRlcmlhbHMgYW5kIGRlcml2
YXRpdmUgd29ya3MuIFVubGVzcyByZXF1aXJlZCBieSBhcHBsaWNhYmxlIGxhdyBvciBhZ3JlZWQg
dG8gaW4gd3JpdGluZywgeW91IHByb3ZpZGUgc3VjaCBtYXRlcmlhbHMgb24gYW4gIkFTIElTIiBC
QVNJUywgV0lUSE9VVCBXQVJSQU5USUVTIE9SIENPTkRJVElPTlMgT0YgQU5ZIEtJTkQsIGVpdGhl
ciBleHByZXNzIG9yIGltcGxpZWQsIGluY2x1ZGluZywgd2l0aG91dCBsaW1pdGF0aW9uLCBhbnkg
d2FycmFudGllcyBvciBjb25kaXRpb25zIG9mIFRJVExFLCBOT04tSU5GUklOR0VNRU5ULCBNRVJD
SEFOVEFCSUxJVFksIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KICAgIA0K
ICAgIENWRSBVc2FnZTogTUlUUkUgaGVyZWJ5IGdyYW50cyB5b3UgYSBwZXJwZXR1YWwsIHdvcmxk
d2lkZSwgbm9uLWV4Y2x1c2l2ZSwgbm8tY2hhcmdlLCByb3lhbHR5LWZyZWUsIGlycmV2b2NhYmxl
IGNvcHlyaWdodCBsaWNlbnNlIHRvIHJlcHJvZHVjZSwgcHJlcGFyZSBkZXJpdmF0aXZlIHdvcmtz
IG9mLCBwdWJsaWNseSBkaXNwbGF5LCBwdWJsaWNseSBwZXJmb3JtLCBzdWJsaWNlbnNlLCBhbmQg
ZGlzdHJpYnV0ZSBDb21tb24gVnVsbmVyYWJpbGl0aWVzIGFuZCBFeHBvc3VyZXMgKENWRT8/KS4g
QW55IGNvcHkgeW91IG1ha2UgZm9yIHN1Y2ggcHVycG9zZXMgaXMgYXV0aG9yaXplZCBwcm92aWRl
ZCB0aGF0IHlvdSByZXByb2R1Y2UgTUlUUkUncyBjb3B5cmlnaHQgZGVzaWduYXRpb24gYW5kIHRo
aXMgbGljZW5zZSBpbiBhbnkgc3VjaCBjb3B5Lg0KICAgIA0KICAgIERJU0NMQUlNRVJTDQogICAg
DQogICAgQUxMIERPQ1VNRU5UUyBBTkQgVEhFIElORk9STUFUSU9OIENPTlRBSU5FRCBUSEVSRUlO
IFBST1ZJREVEIEJZIE1JVFJFIEFSRSBQUk9WSURFRCBPTiBBTiAiQVMgSVMiIEJBU0lTIEFORCBU
SEUgQ09OVFJJQlVUT1IsIFRIRSBPUkdBTklaQVRJT04gSEUvU0hFIFJFUFJFU0VOVFMgT1IgSVMg
U1BPTlNPUkVEIEJZIChJRiBBTlkpLCBUSEUgTUlUUkUgQ09SUE9SQVRJT04sIElUUyBCT0FSRCBP
RiBUUlVTVEVFUywgT0ZGSUNFUlMsIEFHRU5UUywgQU5EIEVNUExPWUVFUywgRElTQ0xBSU0gQUxM
IFdBUlJBTlRJRVMsIEVYUFJFU1MgT1IgSU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRF
RCBUTyBBTlkgV0FSUkFOVFkgVEhBVCBUSEUgVVNFIE9GIFRIRSBJTkZPUk1BVElPTiBUSEVSRUlO
IFdJTEwgTk9UIElORlJJTkdFIEFOWSBSSUdIVFMgT1IgQU5ZIElNUExJRUQgV0FSUkFOVElFUyBP
RiBNRVJDSEFOVEFCSUxJVFkgT1IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuDQog
ICAgDQogICAgQSBjb3B5IGlzIGF2YWlsYWJsZSBhdCBodHRwczovL2dpdGh1Yi5jb20vZGlzdHJp
YnV0ZWR3ZWFrbmVzc2ZpbGluZy9EV0YtTGVnYWwtQWNjZXB0YW5jZS9ibG9iL21hc3Rlci9UZXJt
cy1PZi1Vc2UubWQNCiAgICANCiAgICBUbyBjb250YWN0IHRoZSBEV0YgZWl0aGVyIGhpdCByZXBs
eSwgb3IgZW1haWwga3VydEBzZWlmcmllZC5vcmcgbWFudWFsbHkgd2l0aCB5b3VyIHF1ZXN0aW9u
L2NvbmNlcm5zL2V0Yy4gDQogICAgDQogICAgDQoNCg==
