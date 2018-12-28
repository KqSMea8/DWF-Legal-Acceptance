Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp2444750ivl;
        Mon, 28 May 2018 00:11:53 -0700 (PDT)
X-Google-Smtp-Source: AB8JxZrXfDEkPnnjPMIp0Nw5bKAMYxnfQDeUrk4IITEY4tt0yfEDQUF7f/yhwCRVDqduYpH5hqru
X-Received: by 2002:a63:18c:: with SMTP id 134-v6mr9625840pgb.138.1527491513108;
        Mon, 28 May 2018 00:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1527491513; cv=none;
        d=google.com; s=arc-20160816;
        b=wB4bQYn+cdNJZTOhAbM1RdjADbdwQVLu0CBJBqJSIhmVsJY9v6lOoQYiLG+hG0TVcA
         MucYRZ7FRbvKLJLRf54WGFbdcHDx9qXlZSdqJLcL0sbl7labbLU+Xyg9se9NhYdpwSts
         fDdl8FdMTqcNMh0Gq1C/tXUhclU2r0HbjXMr+KujqghQLhsbWmX1Qp+Yqv1vXv7gotfB
         tN6GivRGyVyygwWNqNQJ+IYHNV09hw0uxG0PqZpsnHMXpsfP+GuKI0a4YORRMUt653wY
         M+q+GO+Q/XC3UK3vPOlrR4jgiVYkXjyKZPUe44WeJ3vDZrU0xX7u6KkzoFtLozqW3hGp
         UbLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:spamdiagnosticmetadata
         :spamdiagnosticoutput:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-signature:arc-authentication-results;
        bh=SxarBX0jWOtfJapSf5zupHAVKwT5Fkr2MbPR5jrPtVI=;
        b=a5Iror+/OKTEL991DQnQapAqCqW207NFM3ELpv8XKKQyAin1sGJKzghBcinhm5eUdF
         FJVZNuONph3xAQgKUZeEL/Fgk7FwuaPe+NIuUSCSOR19ekuLslkTZq74+CV2fBqMJJeN
         Pd4U0cROF0biMd19S8//mi3CikI8c1ZD/n9jxXx7rjRmR+oLl7azNUnHvJ51XqZUMuq9
         i9M8p7BLbx3p58pgACuCmS85jRRudz26+J7JmHNfMVLrFP37W2Wu23urG89hlQHzWfF7
         lTg1swEOSmD+NF5cosocmt5PUp4JenUKhW1wO4vunToNuICKfwu84hMv1FYUFU8pQjmg
         6ZSQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@techlabcorp.onmicrosoft.com header.s=selector1-techlabcorp-com header.b=mQCrP4w0;
       spf=neutral (google.com: 104.47.125.109 is neither permitted nor denied by best guess record for domain of sang.ly@techlabcorp.com) smtp.mailfrom=sang.ly@techlabcorp.com
Return-Path: <sang.ly@techlabcorp.com>
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sg2apc01on0109.outbound.protection.outlook.com. [104.47.125.109])
        by mx.google.com with ESMTPS id p61-v6si30002448plb.472.2018.05.28.00.11.52
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 28 May 2018 00:11:52 -0700 (PDT)
Received-SPF: neutral (google.com: 104.47.125.109 is neither permitted nor denied by best guess record for domain of sang.ly@techlabcorp.com) client-ip=104.47.125.109;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@techlabcorp.onmicrosoft.com header.s=selector1-techlabcorp-com header.b=mQCrP4w0;
       spf=neutral (google.com: 104.47.125.109 is neither permitted nor denied by best guess record for domain of sang.ly@techlabcorp.com) smtp.mailfrom=sang.ly@techlabcorp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=techlabcorp.onmicrosoft.com; s=selector1-techlabcorp-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SxarBX0jWOtfJapSf5zupHAVKwT5Fkr2MbPR5jrPtVI=;
 b=mQCrP4w0mRCgLXu/VKA0GR4J7ym1R2RVvaWkboy0yUxH+8F8Bt9FdcPnWc5XPhzqa3YlL/UvGNlM3ZqtSQmN6HZvJPCAZrxFjAR306ubsoII6gTvqjdu0aXnga3AJ62mJODrnlUYPxz8axGVJp3F3zbL47WSzfUbnmqz+rwSUZc=
Received: from HK2PR0601MB1475.apcprd06.prod.outlook.com (10.165.183.9) by
 HK2PR0601MB1313.apcprd06.prod.outlook.com (10.165.182.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.797.11; Mon, 28 May 2018 07:11:49 +0000
Received: from HK2PR0601MB1475.apcprd06.prod.outlook.com
 ([fe80::f5c4:5e5d:f37c:2017]) by HK2PR0601MB1475.apcprd06.prod.outlook.com
 ([fe80::f5c4:5e5d:f37c:2017%2]) with mapi id 15.20.0797.011; Mon, 28 May 2018
 07:11:49 +0000
From: Sang Ly <sang.ly@techlabcorp.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: TL: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 sang.ly@techlabcorp.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 sang.ly@techlabcorp.com
Thread-Index: AQHT9WgHjXsmGvG0Z0mD2jstqhnMOKREubiw
Date: Mon, 28 May 2018 07:11:49 +0000
Message-ID: <HK2PR0601MB14757050E27B50B92B953810EE6E0@HK2PR0601MB1475.apcprd06.prod.outlook.com>
References: <20180527030843.8054.48568@shiny-2.local>
In-Reply-To: <20180527030843.8054.48568@shiny-2.local>
Accept-Language: en-US
Content-Language: vi-VN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [116.118.119.86]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;HK2PR0601MB1313;7:Uv/yhwFPJAvoLu5DvwBntNkW3qJJgs1BOa/wnIp34p+rvZkdDLfTT6KN2YO8hOzlS1Qwv82fSkY9Xn6wJDnDvc/Uam1H8J7AWWqqX0Ho2G8SZTTG45MuC2pTOjrmPCIngxshAZwyqBbREc1QE14u2lUpn08/u3KAPxN7MHouJEh95NXSUIWOu7MfvciMGoV7Lnv5Klr0P1cTnr0gooqBMMKAJXt4LIEcKKg28RO6aQyoqus91BDf/NmyvN7wLNIc
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);SRVR:HK2PR0601MB1313;
x-ms-traffictypediagnostic: HK2PR0601MB1313:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sang.ly@techlabcorp.com; 
x-microsoft-antispam-prvs: <HK2PR0601MB1313A1342D59439460CF2BA3EE6E0@HK2PR0601MB1313.apcprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(3231254)(944501410)(52105095)(10201501046)(149027)(150027)(6041310)(2016111802025)(20161123564045)(20161123562045)(20161123558120)(20161123560045)(6072148)(6043046)(201708071742011)(7699016);SRVR:HK2PR0601MB1313;BCL:0;PCL:0;RULEID:;SRVR:HK2PR0601MB1313;
x-forefront-prvs: 06860EDC7B
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(39830400003)(39380400002)(346002)(366004)(376002)(28244002)(13624006)(38564003)(189003)(199004)(74316002)(476003)(9686003)(3846002)(3280700002)(966005)(486006)(53936002)(6116002)(446003)(33656002)(97736004)(3660700001)(2906002)(2351001)(7736002)(5180700001)(2501003)(186003)(6916009)(102836004)(55016002)(5250100002)(76176011)(8936002)(86362001)(5640700003)(6436002)(68736007)(6506007)(26005)(6306002)(59450400001)(81166006)(81156014)(8676002)(7696005)(1730700003)(105586002)(44832011)(106356001)(66066001)(5660300001)(305945005)(11346002)(478600001)(2900100001)(99286004)(25786009)(316002)(14454004)(221513004)(222073002);DIR:OUT;SFP:1102;SCL:1;SRVR:HK2PR0601MB1313;H:HK2PR0601MB1475.apcprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: techlabcorp.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: /q+sopUrXhbRsZ8gsQD8WZ5gdNZ/6JRKO36NGQuYMS79Lu3aedwDcAYfZyFnZIT+1sZsq9ypefZUGecgvvy8if+Bikj/pgKdSQmyZ7bm1xVDVQYrEC+PaTedUpIzck6wKjNbirnAGE4AiNyhyR84DBp4mHQUAVBqUn35LC9yDCsC2Xc3BZtO53Ow2MP8m7k6
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 18c3d71b-2988-4f2f-04a9-08d5c46a47ff
X-OriginatorOrg: techlabcorp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c3d71b-2988-4f2f-04a9-08d5c46a47ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2018 07:11:49.5255
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ccadb3c5-1e29-410b-a0ca-37ec525f2133
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0601MB1313

SSBhY2NlcHQNCg0KLS0tLS1UaMawIEfhu5FjLS0tLS0NCk5nxrDhu51pIGfhu61pOiBrdXJ0QHNl
aWZyaWVkLm9yZyA8a3VydEBzZWlmcmllZC5vcmc+IA0KxJBhzIMgZ8awzIlpOiBTdW5kYXksIE1h
eSAyNywgMjAxOCAxMDowOSBBTQ0KxJDDqsyBbjogU2FuZyBMeSA8c2FuZy5seUB0ZWNobGFiY29y
cC5jb20+DQpDaHXMiSDEkcOqzIA6IERXRi9DVkUgLSBBY2NlcHRhbmNlIG9mIE1JVFJFIFRlcm1z
IG9mIFVzZSBmb3IgQ1ZFIGZvciBzYW5nLmx5QHRlY2hsYWJjb3JwLmNvbQ0KDQpUaGlzIGlzIGEg
Y29uZmlybWF0aW9uIGVtYWlsIHNlbnQgZnJvbSBDVkUgcmVxdWVzdCBmb3JtIGF0IGh0dHBzOi8v
aXdhbnRhY3ZlLm9yZy8gYXNraW5nIHlvdSB0byBhY2NlcHQgdGhlIE1JVFJFIENWRSBUZXJtcyBv
ZiBVc2UgKGFzc3VtaW5nIHlvdSBmaWxsZWQgb3V0IHRoZSBDVkUgZm9ybSBhbmQgd2FudCBvbmUs
IHdlIGNhbid0IHVzZSB0aGUgZGF0YSB1bnRpbCB5b3UgYWNjZXB0IHRoZSBNSVRSRSBDVkUgVGVy
bXMgb2YgVXNlKS4gDQoNClNpbXBseSBxdW90ZSB0aGUgZW1haWwgYW5kIHJlcGx5IHdpdGggIkkg
YWNjZXB0IiBhdCB0aGUgdG9wIGlmIHlvdSBhZ3JlZSB0byB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9m
IFVzZSBhbmQgd2Ugd2lsbCBhZGQgYSBjb3B5IG9mIHRoZSBlbWFpbCB0byB0aGUgRFdGIE1JVFJF
IENWRSBUZXJtcyBvZiBVc2UgYWNjZXB0YW5jZSBkYXRhIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9k
aXN0cmlidXRlZHdlYWtuZXNzZmlsaW5nL0RXRi1MZWdhbC1BY2NlcHRhbmNlL3RyZWUvbWFzdGVy
L1Rlcm1zLU9mLVVzZQ0KDQpUaGUgcmVhc29uIHdlIHVzZSBhIGNvbXBsZXRlIGNvcHkgb2YgdGhl
IGVtYWlsIGlzIHRoYXQgaXQgcHJvdmlkZXMgYW4gYXJ0aWZhY3Qgc2hvd2luZyB0aGF0IHRoZSBl
bWFpbCBhZGRyZXNzIGFjY2VwdGVkIHRoZSBUZXJtcyBvZiBVc2UsIHdoZW4gdGhleSB3ZXJlIGFj
Y2VwdGVkIGFuZCBzbyBvbi4gDQoNCklmIHlvdSBkaWQgbm90IHN1Ym1pdCBhIENWRSByZXF1ZXN0
IHRvIHRoZSBEV0YgeW91IGNhbiBzYWZlbHkgaWdub3JlIHRoaXMgbWVzc2FnZSwgaG93ZXZlciB3
ZSBtYXkgcmVzZW5kIGl0IGF0IHNvbWUgcG9pbnQgaW4gdGhlIGZ1dHVyZSwgaWYgeW91IGRvbid0
IHdhbnQgYW55IGZ1dHVyZSBlbWFpbHMgc2ltcGx5IHJlcGx5IHdpdGggInVuc3Vic2NyaWJlIiBv
ciAiRE9OJ1QgU0VORCBNRSBUSElTIEVNQUlMIEVWRVIgQUdBSU4iIGFuZCBJJ2xsIGFkZCB5b3Vy
IGVtYWlsIGFkZHJlc3MgdG8gdGhlIGJsb2NrIGxpc3Qgc28gd2UgZG9uJ3Qgc3BhbSB5b3Ugd2l0
aCB0aGVzZSwgcGxlYXNlIG5vdGUgdGhhdCB0aGlzIHdpbGwgcHJldmVudCB5b3UgZnJvbSBiZWlu
ZyBhYmxlIHRvIGFjY2VwdCB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSB2aWEgdGhlIERXRiBh
dXRvbWF0aWNhbGx5IGluIGZ1dHVyZSAoeW91J2xsIGhhdmUgdG8gbWFudWFsbHkgYXNrKS4gQnV0
IGFnYWluLCBpZiB5b3UgaGF2ZSBubyBpZGVhIHdoYXQgYSBDVkUgaXMgdGhlbiB5b3UgY2FuIGln
bm9yZSB0aGlzL2FzayB0byBiZSBhZGRlZCB0byB0aGUgYmxvY2sgbGlzdCB3aXRoIG5vIHByb2Js
ZW1zLiANCg0KTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZQ0KDQpMSUNFTlNFDQoNClN1Ym1pc3Npb25z
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
SEFOVEFCSUxJVFksIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KDQpDVkUg
VXNhZ2U6IE1JVFJFIGhlcmVieSBncmFudHMgeW91IGEgcGVycGV0dWFsLCB3b3JsZHdpZGUsIG5v
bi1leGNsdXNpdmUsIG5vLWNoYXJnZSwgcm95YWx0eS1mcmVlLCBpcnJldm9jYWJsZSBjb3B5cmln
aHQgbGljZW5zZSB0byByZXByb2R1Y2UsIHByZXBhcmUgZGVyaXZhdGl2ZSB3b3JrcyBvZiwgcHVi
bGljbHkgZGlzcGxheSwgcHVibGljbHkgcGVyZm9ybSwgc3VibGljZW5zZSwgYW5kIGRpc3RyaWJ1
dGUgQ29tbW9uIFZ1bG5lcmFiaWxpdGllcyBhbmQgRXhwb3N1cmVzIChDVkU/PykuIEFueSBjb3B5
IHlvdSBtYWtlIGZvciBzdWNoIHB1cnBvc2VzIGlzIGF1dGhvcml6ZWQgcHJvdmlkZWQgdGhhdCB5
b3UgcmVwcm9kdWNlIE1JVFJFJ3MgY29weXJpZ2h0IGRlc2lnbmF0aW9uIGFuZCB0aGlzIGxpY2Vu
c2UgaW4gYW55IHN1Y2ggY29weS4NCg0KRElTQ0xBSU1FUlMNCg0KQUxMIERPQ1VNRU5UUyBBTkQg
VEhFIElORk9STUFUSU9OIENPTlRBSU5FRCBUSEVSRUlOIFBST1ZJREVEIEJZIE1JVFJFIEFSRSBQ
Uk9WSURFRCBPTiBBTiAiQVMgSVMiIEJBU0lTIEFORCBUSEUgQ09OVFJJQlVUT1IsIFRIRSBPUkdB
TklaQVRJT04gSEUvU0hFIFJFUFJFU0VOVFMgT1IgSVMgU1BPTlNPUkVEIEJZIChJRiBBTlkpLCBU
SEUgTUlUUkUgQ09SUE9SQVRJT04sIElUUyBCT0FSRCBPRiBUUlVTVEVFUywgT0ZGSUNFUlMsIEFH
RU5UUywgQU5EIEVNUExPWUVFUywgRElTQ0xBSU0gQUxMIFdBUlJBTlRJRVMsIEVYUFJFU1MgT1Ig
SU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBBTlkgV0FSUkFOVFkgVEhBVCBU
SEUgVVNFIE9GIFRIRSBJTkZPUk1BVElPTiBUSEVSRUlOIFdJTEwgTk9UIElORlJJTkdFIEFOWSBS
SUdIVFMgT1IgQU5ZIElNUExJRUQgV0FSUkFOVElFUyBPRiBNRVJDSEFOVEFCSUxJVFkgT1IgRklU
TkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuDQoNCkEgY29weSBpcyBhdmFpbGFibGUgYXQg
aHR0cHM6Ly9naXRodWIuY29tL2Rpc3RyaWJ1dGVkd2Vha25lc3NmaWxpbmcvRFdGLUxlZ2FsLUFj
Y2VwdGFuY2UvYmxvYi9tYXN0ZXIvVGVybXMtT2YtVXNlLm1kDQoNClRvIGNvbnRhY3QgdGhlIERX
RiBlaXRoZXIgaGl0IHJlcGx5LCBvciBlbWFpbCBrdXJ0QHNlaWZyaWVkLm9yZyBtYW51YWxseSB3
aXRoIHlvdXIgcXVlc3Rpb24vY29uY2VybnMvZXRjLiANCg0K
