Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp4136325otd;
        Tue, 10 Jul 2018 11:38:27 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpe861BQSIH4QKcrq+0kNmNUV1QLXVmB3aGAa+0AoG1GW9odD9WjGM20m8WHHVRkPL2BOS05
X-Received: by 2002:a63:1f4d:: with SMTP id q13-v6mr23917207pgm.241.1531247907360;
        Tue, 10 Jul 2018 11:38:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531247907; cv=none;
        d=google.com; s=arc-20160816;
        b=qx5WF6kBRJzahAIEkpKogyrbwxnhC+8Stk5Yb+EL7aYFVJjBhFmwg4jg7qZY2jK7lQ
         7jF+M814pLcsFQVMib64yfu6woqx2iWGtUpVqnHjkQC6JXDQpY1IEq2tdECAM2CW9i4X
         NNl656KQGzPQ9KIJy/PkKBCxRY83Rb3L77CzQc5AJwbU0t6p21J61YHC2AErye3JzkkX
         ufN0DH1FWgbCVdYqfOayHi4B+5vzTobmpMjTDQKd72rlhrEPUOgOXNYicvxoLLpZC2t0
         J1BFDGzI82RhzqLJGyqxaCD7zWgYV64+7lBIi9P0FoOoEO2s9IzhF6R2oYGPsxxpex1J
         FEEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id
         :spamdiagnosticmetadata:spamdiagnosticoutput:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=g70g5gdI+FtuYX0JsVFVqLoIlL1BJ8EsMVfA8XZm1IE=;
        b=RQDN0TMjF0f/ay0pn8n9jmBlKWbjSBTTU70h0Uu916GiuHSYQg3HRn3cnr00sLGBTQ
         GsuEdG47UIh1MotVGKcoS7JIDRD50OviDQcc1+5vDOGpwvMqouWK8KBPRRLat7nbCXm1
         mEvAHcdkHzNdixGfqInxzm1DOCWLME5QM13n1T+WISrJlliUEoAPcDJIKK6bxYfDthBN
         /ZfmSzalDmkKTmz1MDrE0VR/GJK/cWTy50YoncTBdDJnPSZBc7b/YVueacl+vtlP+Xa+
         l/ppUTz2ozwbjKDdFecx9ZtQnW1/WyK220tTBlRZCEGH61juLkjnCdmkDDZn2ac6W19E
         Ch+w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@docusign.com header.s=selector1 header.b=nd0INSTN;
       spf=pass (google.com: domain of kurt.boberg@docusign.com designates 104.47.34.124 as permitted sender) smtp.mailfrom=kurt.boberg@docusign.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=docusign.com
Return-Path: <kurt.boberg@docusign.com>
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (mail-by2nam01on0124.outbound.protection.outlook.com. [104.47.34.124])
        by mx.google.com with ESMTPS id d2-v6si17239734plh.387.2018.07.10.11.38.27
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Jul 2018 11:38:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of kurt.boberg@docusign.com designates 104.47.34.124 as permitted sender) client-ip=104.47.34.124;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@docusign.com header.s=selector1 header.b=nd0INSTN;
       spf=pass (google.com: domain of kurt.boberg@docusign.com designates 104.47.34.124 as permitted sender) smtp.mailfrom=kurt.boberg@docusign.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=docusign.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=docusign.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g70g5gdI+FtuYX0JsVFVqLoIlL1BJ8EsMVfA8XZm1IE=;
 b=nd0INSTNgo5tZoocFTkyenOXpxn9m3m1/SVzsPq/SK4wLa6AnSxjTgDpuky10TqqpndEkR5xl8uVaS4shsUQ94Ty8fGpJoHNbrWZe446duB49glNFjM5tParww1IfMJLTC7g5Tgr5D5i4mlnXZfxsBNQgHQibC0eWO+odTr6Ulw=
Received: from CY4PR04MB0440.namprd04.prod.outlook.com (10.173.189.141) by
 CY4PR04MB1016.namprd04.prod.outlook.com (10.171.244.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.930.21; Tue, 10 Jul 2018 18:38:25 +0000
Received: from CY4PR04MB0440.namprd04.prod.outlook.com
 ([fe80::ad6f:ecd5:a11:4de]) by CY4PR04MB0440.namprd04.prod.outlook.com
 ([fe80::ad6f:ecd5:a11:4de%7]) with mapi id 15.20.0930.022; Tue, 10 Jul 2018
 18:38:24 +0000
From: Kurt Boberg <kurt.boberg@docusign.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 kurt.boberg@docusign.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 kurt.boberg@docusign.com
Thread-Index: AQHUGHyWLYKFa70JiU+w6zViJb3LeKSIVAwA
Date: Tue, 10 Jul 2018 18:38:24 +0000
Message-ID: <EE8607DF-7CBB-4E09-A5A8-474575EE4519@docusign.com>
References: <20180710183400.20096.67073@shiny-2.local>
In-Reply-To: <20180710183400.20096.67073@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kurt.boberg@docusign.com; 
x-originating-ip: [208.184.224.11]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;CY4PR04MB1016;7:sbbq8CyhcJ50NhQ3hewjD8llWuZNdWZLkdQ3Gk1Oehp77OVtdEtzFi9NIymyQ4zfERBpOePYA3D0lJf7bkmTdH6Sh/SWntu3UXG+CMaIua5Jud7ukvTBKG0aDj1ldasSSZh+KkEHLqxGLvKxMoanmV6qiNdieJGNgiLaer05Pdme9DkYGY9lZD69znnqmP0nFjrvam/GNR+DIkgLivJ7Qb2Xy/X8ow7/OomYRIYsSb/NyesHqB5Rund7v6ZRQpXc
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: e711668a-73ac-4de6-e258-08d5e6945218
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652040)(8989117)(5600053)(711020)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(2017052603328)(7153060)(7193020);SRVR:CY4PR04MB1016;
x-ms-traffictypediagnostic: CY4PR04MB1016:
x-microsoft-antispam-prvs: <CY4PR04MB10160C1AD3CA1E2F12239E36925B0@CY4PR04MB1016.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(58426504366037);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(6072148)(201708071742011)(7699016);SRVR:CY4PR04MB1016;BCL:0;PCL:0;RULEID:;SRVR:CY4PR04MB1016;
x-forefront-prvs: 0729050452
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(376002)(39860400002)(346002)(366004)(396003)(47650400002)(199004)(38564003)(189003)(28244002)(13624006)(25786009)(256004)(11346002)(446003)(66066001)(476003)(3846002)(6116002)(53936002)(36756003)(486006)(99286004)(2616005)(82746002)(44832011)(14444005)(83716003)(316002)(5660300001)(76176011)(6916009)(478600001)(97736004)(2906002)(6246003)(6506007)(2351001)(6306002)(105586002)(86362001)(106356001)(6486002)(6512007)(68736007)(26005)(102836004)(2900100001)(186003)(14454004)(5180700001)(1730700003)(81166006)(81156014)(33656002)(8676002)(5250100002)(2501003)(8936002)(305945005)(229853002)(5640700003)(966005)(7736002)(6436002)(221513004)(222073002);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR04MB1016;H:CY4PR04MB0440.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: docusign.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: qLvLDVT3mza4T3yZmlDphOv8Csm2DAQO5H381bCHasADWyTDygXkgR/AteiBGZTQMdl646Z40gN1ET6G4AjbL9JRTllmPxWO5kD/VXMmSRZhmS4ccXdF4ElPekK/s/jOSepDEzmQ1+4exgMRnPDLlTw3D9BB+sUIXTB5dpFTgadHjK2oBoIFnP5+0Lf8IKfJLtySuFJhI215GWu3ULm/X4FW3vhQBGqsml6bVgsNV+yNFMtvhGbZAppDWqZ9W13WQjlKC/hXeYj7trppXUqWq9IY4gijTveeee5/aLX/Jg5nUFiHFgKU7IXyMzyDJSZt71u/zj53TEMUp4vSe9Ot30hRo3s+nTN+36c4oCyFm0g=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-ID: <838CCB6645CEE84297771725AE1B3D1F@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: docusign.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e711668a-73ac-4de6-e258-08d5e6945218
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2018 18:38:24.9079
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 237e701c-327f-4cad-a5a1-dda2412d89d9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR04MB1016

SSBhY2NlcHQuDQoNCu+7v09uIDcvMTAvMTgsIDExOjM0IEFNLCAia3VydEBzZWlmcmllZC5vcmci
IDxrdXJ0QHNlaWZyaWVkLm9yZz4gd3JvdGU6DQoNCiAgICBUaGlzIGlzIGEgY29uZmlybWF0aW9u
IGVtYWlsIHNlbnQgZnJvbSBDVkUgcmVxdWVzdCBmb3JtIGF0IGh0dHBzOi8vaXdhbnRhY3ZlLm9y
Zy8gYXNraW5nIHlvdSB0byBhY2NlcHQgdGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgKGFzc3Vt
aW5nIHlvdSBmaWxsZWQgb3V0IHRoZSBDVkUgZm9ybSBhbmQgd2FudCBvbmUsIHdlIGNhbid0IHVz
ZSB0aGUgZGF0YSB1bnRpbCB5b3UgYWNjZXB0IHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNlKS4g
DQogICAgDQogICAgU2ltcGx5IHF1b3RlIHRoZSBlbWFpbCBhbmQgcmVwbHkgd2l0aCAiSSBhY2Nl
cHQiIGF0IHRoZSB0b3AgaWYgeW91IGFncmVlIHRvIHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNl
IGFuZCB3ZSB3aWxsIGFkZCBhIGNvcHkgb2YgdGhlIGVtYWlsIHRvIHRoZSBEV0YgTUlUUkUgQ1ZF
IFRlcm1zIG9mIFVzZSBhY2NlcHRhbmNlIGRhdGEgYXQgaHR0cHM6Ly9naXRodWIuY29tL2Rpc3Ry
aWJ1dGVkd2Vha25lc3NmaWxpbmcvRFdGLUxlZ2FsLUFjY2VwdGFuY2UvdHJlZS9tYXN0ZXIvVGVy
bXMtT2YtVXNlDQogICAgDQogICAgVGhlIHJlYXNvbiB3ZSB1c2UgYSBjb21wbGV0ZSBjb3B5IG9m
IHRoZSBlbWFpbCBpcyB0aGF0IGl0IHByb3ZpZGVzIGFuIGFydGlmYWN0IHNob3dpbmcgdGhhdCB0
aGUgZW1haWwgYWRkcmVzcyBhY2NlcHRlZCB0aGUgVGVybXMgb2YgVXNlLCB3aGVuIHRoZXkgd2Vy
ZSBhY2NlcHRlZCBhbmQgc28gb24uIA0KICAgIA0KICAgIElmIHlvdSBkaWQgbm90IHN1Ym1pdCBh
IENWRSByZXF1ZXN0IHRvIHRoZSBEV0YgeW91IGNhbiBzYWZlbHkgaWdub3JlIHRoaXMgbWVzc2Fn
ZSwgaG93ZXZlciB3ZSBtYXkgcmVzZW5kIGl0IGF0IHNvbWUgcG9pbnQgaW4gdGhlIGZ1dHVyZSwg
aWYgeW91IGRvbid0IHdhbnQgYW55IGZ1dHVyZSBlbWFpbHMgc2ltcGx5IHJlcGx5IHdpdGggInVu
c3Vic2NyaWJlIiBvciAiRE9OJ1QgU0VORCBNRSBUSElTIEVNQUlMIEVWRVIgQUdBSU4iIGFuZCBJ
J2xsIGFkZCB5b3VyIGVtYWlsIGFkZHJlc3MgdG8gdGhlIGJsb2NrIGxpc3Qgc28gd2UgZG9uJ3Qg
c3BhbSB5b3Ugd2l0aCB0aGVzZSwgcGxlYXNlIG5vdGUgdGhhdCB0aGlzIHdpbGwgcHJldmVudCB5
b3UgZnJvbSBiZWluZyBhYmxlIHRvIGFjY2VwdCB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSB2
aWEgdGhlIERXRiBhdXRvbWF0aWNhbGx5IGluIGZ1dHVyZSAoeW91J2xsIGhhdmUgdG8gbWFudWFs
bHkgYXNrKS4gQnV0IGFnYWluLCBpZiB5b3UgaGF2ZSBubyBpZGVhIHdoYXQgYSBDVkUgaXMgdGhl
biB5b3UgY2FuIGlnbm9yZSB0aGlzL2FzayB0byBiZSBhZGRlZCB0byB0aGUgYmxvY2sgbGlzdCB3
aXRoIG5vIHByb2JsZW1zLiANCiAgICANCiAgICBNSVRSRSBDVkUgVGVybXMgb2YgVXNlDQogICAg
DQogICAgTElDRU5TRQ0KICAgIA0KICAgIFN1Ym1pc3Npb25zOiBGb3IgYWxsIG1hdGVyaWFscyB5
b3Ugc3VibWl0IHRvIHRoZSBDb21tb24gVnVsbmVyYWJpbGl0aWVzIGFuZCBFeHBvc3VyZXMgKENW
RT8/KSwgeW91IGhlcmVieSBncmFudCB0byBUaGUgTUlUUkUgQ29ycG9yYXRpb24gKE1JVFJFKSBh
bmQgYWxsIENWRSBOdW1iZXJpbmcgQXV0aG9yaXRpZXMgKENOQXMpIGEgcGVycGV0dWFsLCB3b3Js
ZHdpZGUsIG5vbi1leGNsdXNpdmUsIG5vLWNoYXJnZSwgcm95YWx0eS1mcmVlLCBpcnJldm9jYWJs
ZSBjb3B5cmlnaHQgbGljZW5zZSB0byByZXByb2R1Y2UsIHByZXBhcmUgZGVyaXZhdGl2ZSB3b3Jr
cyBvZiwgcHVibGljbHkgZGlzcGxheSwgcHVibGljbHkgcGVyZm9ybSwgc3VibGljZW5zZSwgYW5k
IGRpc3RyaWJ1dGUgc3VjaCBtYXRlcmlhbHMgYW5kIGRlcml2YXRpdmUgd29ya3MuIFVubGVzcyBy
ZXF1aXJlZCBieSBhcHBsaWNhYmxlIGxhdyBvciBhZ3JlZWQgdG8gaW4gd3JpdGluZywgeW91IHBy
b3ZpZGUgc3VjaCBtYXRlcmlhbHMgb24gYW4gIkFTIElTIiBCQVNJUywgV0lUSE9VVCBXQVJSQU5U
SUVTIE9SIENPTkRJVElPTlMgT0YgQU5ZIEtJTkQsIGVpdGhlciBleHByZXNzIG9yIGltcGxpZWQs
IGluY2x1ZGluZywgd2l0aG91dCBsaW1pdGF0aW9uLCBhbnkgd2FycmFudGllcyBvciBjb25kaXRp
b25zIG9mIFRJVExFLCBOT04tSU5GUklOR0VNRU5ULCBNRVJDSEFOVEFCSUxJVFksIG9yIEZJVE5F
U1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KICAgIA0KICAgIENWRSBVc2FnZTogTUlUUkUg
aGVyZWJ5IGdyYW50cyB5b3UgYSBwZXJwZXR1YWwsIHdvcmxkd2lkZSwgbm9uLWV4Y2x1c2l2ZSwg
bm8tY2hhcmdlLCByb3lhbHR5LWZyZWUsIGlycmV2b2NhYmxlIGNvcHlyaWdodCBsaWNlbnNlIHRv
IHJlcHJvZHVjZSwgcHJlcGFyZSBkZXJpdmF0aXZlIHdvcmtzIG9mLCBwdWJsaWNseSBkaXNwbGF5
LCBwdWJsaWNseSBwZXJmb3JtLCBzdWJsaWNlbnNlLCBhbmQgZGlzdHJpYnV0ZSBDb21tb24gVnVs
bmVyYWJpbGl0aWVzIGFuZCBFeHBvc3VyZXMgKENWRT8/KS4gQW55IGNvcHkgeW91IG1ha2UgZm9y
IHN1Y2ggcHVycG9zZXMgaXMgYXV0aG9yaXplZCBwcm92aWRlZCB0aGF0IHlvdSByZXByb2R1Y2Ug
TUlUUkUncyBjb3B5cmlnaHQgZGVzaWduYXRpb24gYW5kIHRoaXMgbGljZW5zZSBpbiBhbnkgc3Vj
aCBjb3B5Lg0KICAgIA0KICAgIERJU0NMQUlNRVJTDQogICAgDQogICAgQUxMIERPQ1VNRU5UUyBB
TkQgVEhFIElORk9STUFUSU9OIENPTlRBSU5FRCBUSEVSRUlOIFBST1ZJREVEIEJZIE1JVFJFIEFS
RSBQUk9WSURFRCBPTiBBTiAiQVMgSVMiIEJBU0lTIEFORCBUSEUgQ09OVFJJQlVUT1IsIFRIRSBP
UkdBTklaQVRJT04gSEUvU0hFIFJFUFJFU0VOVFMgT1IgSVMgU1BPTlNPUkVEIEJZIChJRiBBTlkp
LCBUSEUgTUlUUkUgQ09SUE9SQVRJT04sIElUUyBCT0FSRCBPRiBUUlVTVEVFUywgT0ZGSUNFUlMs
IEFHRU5UUywgQU5EIEVNUExPWUVFUywgRElTQ0xBSU0gQUxMIFdBUlJBTlRJRVMsIEVYUFJFU1Mg
T1IgSU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBBTlkgV0FSUkFOVFkgVEhB
VCBUSEUgVVNFIE9GIFRIRSBJTkZPUk1BVElPTiBUSEVSRUlOIFdJTEwgTk9UIElORlJJTkdFIEFO
WSBSSUdIVFMgT1IgQU5ZIElNUExJRUQgV0FSUkFOVElFUyBPRiBNRVJDSEFOVEFCSUxJVFkgT1Ig
RklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuDQogICAgDQogICAgQSBjb3B5IGlzIGF2
YWlsYWJsZSBhdCBodHRwczovL2dpdGh1Yi5jb20vZGlzdHJpYnV0ZWR3ZWFrbmVzc2ZpbGluZy9E
V0YtTGVnYWwtQWNjZXB0YW5jZS9ibG9iL21hc3Rlci9UZXJtcy1PZi1Vc2UubWQNCiAgICANCiAg
ICBUbyBjb250YWN0IHRoZSBEV0YgZWl0aGVyIGhpdCByZXBseSwgb3IgZW1haWwga3VydEBzZWlm
cmllZC5vcmcgbWFudWFsbHkgd2l0aCB5b3VyIHF1ZXN0aW9uL2NvbmNlcm5zL2V0Yy4gDQogICAg
DQogICAgDQoNCg==
