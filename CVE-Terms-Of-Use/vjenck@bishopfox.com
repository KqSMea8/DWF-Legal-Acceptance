Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp6895otc;
        Tue, 27 Nov 2018 08:45:05 -0800 (PST)
X-Google-Smtp-Source: AFSGD/WYkgRXKAmqFjq3B01KHBVopuGbfLTpQN77XzdbTQNAoo/n/AeCd23Ep+5rugYW75qyacoS
X-Received: by 2002:a24:128a:: with SMTP id 132mr27930992itp.80.1543337105215;
        Tue, 27 Nov 2018 08:45:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543337105; cv=none;
        d=google.com; s=arc-20160816;
        b=I7BiTJ3d5DpZYQWb+RqLbsvEYKA8u9U9JLOkJXVY68bNtv7F74wZeBNlcIXvxNbAIK
         0mMwzbI/OvOO1iISn1YxUnbvLlP9dhLE9A3bJL42aIRagJ+2UBYblP+jE0tNYw+TxwM9
         eeMLaQ4PSTkSFouzbL4/CSA+J3jFJmfN5safZpB21iIdr/pLJJqUn+W8R3uS5RK8KByR
         qPp5hzYarm7rM+h+jo4p8k6wUqjFE6emcNRSL09MSY++DgQDv+P5M9fyhRxMrqs9jUDZ
         PXeg5GujjG091CgBgteZLGSlFVO/kurjlObWvrjeq6cxqPXOZXIPzdDOWc8bPhSGEsA6
         283A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature;
        bh=ZpGH16sIjm/PwLX9WQgnEDot5RaP+7NnOUWMlntQKjk=;
        b=Qh10NVKprnzMRCf3Ntg5/dHxrK9jKXktosgn0KXYePvQLx5Ih3oMkXOX0Tk6Di227c
         LWTESNbxEQfuzMVCDVXA2DfCw7kBKMdB4NgGSb08o133rExJ13Sv9G0ioxopLPYUse3U
         9Qxlgs5NmyN01EFlKtVQYazIV70DwDPPuAiENLazfwd6o6UvZVPamZnt/ez+LaABYTap
         g0brV6EyaxsVHDzQyoGpStP2txi+VqnyoBCSNnvuByXV1PiOf5ggkkCRyoYn6nvMkZeh
         dzuTkwlTL3DTrmLc+P4ijrKb9XiXoP7MOg/qhXI3fgXjDYn7r5xvPuaB/pF6jsJRDEq6
         1wEg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@bishopfox.com header.s=selector1 header.b=u5Z6cOY3;
       spf=pass (google.com: domain of vjenck@bishopfox.com designates 40.107.75.102 as permitted sender) smtp.mailfrom=vjenck@bishopfox.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=bishopfox.com
Return-Path: <vjenck@bishopfox.com>
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-eopbgr750102.outbound.protection.outlook.com. [40.107.75.102])
        by mx.google.com with ESMTPS id v189-v6si2984862iof.117.2018.11.27.08.45.04
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Nov 2018 08:45:05 -0800 (PST)
Received-SPF: pass (google.com: domain of vjenck@bishopfox.com designates 40.107.75.102 as permitted sender) client-ip=40.107.75.102;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@bishopfox.com header.s=selector1 header.b=u5Z6cOY3;
       spf=pass (google.com: domain of vjenck@bishopfox.com designates 40.107.75.102 as permitted sender) smtp.mailfrom=vjenck@bishopfox.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=bishopfox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bishopfox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZpGH16sIjm/PwLX9WQgnEDot5RaP+7NnOUWMlntQKjk=;
 b=u5Z6cOY34c+SB1piF4cK0MMAavUB4HkhgJdpV4xc2HInbhvCZeDgL7ZwzHoGxSg1vQjIww6p48OKZXsFkucMvSn743iRt58Gntlc7ptF1rF70JyuXs9JPj1XedikfcsPeqbgrJ/6P5HhBLiCuy7sWNWJyRjrg/26IiAQ0SEG38M=
Received: from BYAPR13MB2408.namprd13.prod.outlook.com (52.135.229.146) by
 BYAPR13MB2488.namprd13.prod.outlook.com (52.135.230.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1382.14; Tue, 27 Nov 2018 16:45:01 +0000
Received: from BYAPR13MB2408.namprd13.prod.outlook.com
 ([fe80::9ddc:f34e:4309:84e0]) by BYAPR13MB2408.namprd13.prod.outlook.com
 ([fe80::9ddc:f34e:4309:84e0%4]) with mapi id 15.20.1382.012; Tue, 27 Nov 2018
 16:45:01 +0000
From: Virginie Jenck <vjenck@bishopfox.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 vjenck@bishopfox.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 vjenck@bishopfox.com
Thread-Index: AQHUhmd7qaY7XfvT8EKSpZxAB5jeKqVj07IA
Date: Tue, 27 Nov 2018 16:45:00 +0000
Message-ID:
 <BYAPR13MB2408EE71D2C69D518CC21B0FD4D00@BYAPR13MB2408.namprd13.prod.outlook.com>
References: <20181127154007.36526.5942@bigbox.local>
In-Reply-To: <20181127154007.36526.5942@bigbox.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vjenck@bishopfox.com; 
x-originating-ip: [65.156.60.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics:
 1;BYAPR13MB2488;6:iwUp92ByDrOG2X9UYZB6VUvx6/gc3fumCezHc3yksM8Ae6sccQJQDPaET4nii2+JqY/X9x4CB1I9MVymp9U6c6D90nn0YhYwdo9xWXRZjPBu6rG4IVxbV6fKEPeTJRkc22feIKcoFuliIRPQT3fVZOVTwBwa5AWCFOGt13c3N1yU7LRhM0FQqgnGQYtRCLot+xFjwAw1E1oVUm2XTXaLQomzcFXIAP4+k7p+cWjEcQ4TkcbEDDrmoI7fsAoETMHmIBP0cgHuZIIgFyiqfMgJgFSxCukaBfErkxvhQK492+OF5szVcftuuxRdap03ML8d5te787MAq3d9PLcKt83C1wDBY6jdbR4v5UlPPc0RNm1DOsv4zSsMKyQxhqvyRLZN0Wcxc+ePBrjAP3OmT8TXwYrEjZrsEp34zuQuEMhaxfbVH1sGVsTK1Ysx2soohRN2sJR3UJVGbleJMg/m3RzuUw==;5:tce22SikmxoBf3LPj7L5qEhfrtT41n66gY0ono7eTPih2cZ9bTtaprfDeKVfnp+ZTwFcmidVFb95LFT9QoJ4poiSvxZglSAkJgiHYGk4126P+KS72PLyh4mVevnKXYQOu60YHq+gGtsbe0A0G2xWNxNPbtu3UbJeiixNnd5ccAM=;7:MRmZCsW9c9m/+PWkv2Evt+3OqJj1OuGRSN1X7ltV12HjwRkzW8GSpkTJOfIz/QGfSpGHoZoZyDO1aYs0wDHrxGKX03BXUKL+OnA/gF97KYAZ6hE6bz/BDWUnjVcpEmSzEOCAITtx3eUQQfsf2S4ryg==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: e645a357-3294-4413-cca5-08d65487ac8a
x-microsoft-antispam:
 BCL:0;PCL:0;RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(49563074)(7193020);SRVR:BYAPR13MB2488;
x-ms-traffictypediagnostic: BYAPR13MB2488:
x-microsoft-antispam-prvs:
 <BYAPR13MB24881737EB4D7D85A8441D03D4D00@BYAPR13MB2488.namprd13.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test:
 BCL:0;PCL:0;RULEID:(8211001083)(102415395)(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(3231443)(944501410)(4983020)(52105112)(93006095)(93001095)(148016)(149066)(150057)(6041310)(20161123562045)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(201708071742011)(7699051)(76991095);SRVR:BYAPR13MB2488;BCL:0;PCL:0;RULEID:;SRVR:BYAPR13MB2488;
x-forefront-prvs: 086943A159
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10019020)(346002)(396003)(366004)(39840400004)(136003)(376002)(13464003)(189003)(199004)(13624006)(38564003)(106356001)(53546011)(105586002)(74316002)(86362001)(102836004)(446003)(11346002)(8936002)(305945005)(66066001)(25786009)(2501003)(7736002)(6506007)(26005)(68736007)(2351001)(186003)(966005)(478600001)(8676002)(97736004)(81166006)(81156014)(1730700003)(486006)(99936001)(256004)(71200400001)(229853002)(14444005)(5640700003)(316002)(6916009)(6116002)(14454004)(6436002)(3846002)(222073003)(2906002)(71190400001)(5660300001)(53936002)(76176011)(7696005)(476003)(6246003)(55016002)(15974865002)(33656002)(9686003)(99286004)(6306002)(221513004);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR13MB2488;H:BYAPR13MB2408.namprd13.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: bishopfox.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info:
 9XLcdTEuzJB4maw12cjS94dnz41LFKwopRu4DnPTL142pwTGfpL2Y0dAfLpLRxmTkWaQ6+IjnWz2hSLJgLXzPzOXVdWECprsEOTRqW1+AGhDwk70CUDCKV3xfbJe/SUWufdD6hKg0yK/p+HMW4e0M/DNdsmiusfEkJ3HJlmyB4DCMKJneb4vs/TEbB7WfY1fEvEEMSRxGisu7fSqqrY9tCXl7zIq25z+610y8pt8AWnIv++OABvqW8HKO6No2z8B4L9DJrjLSDn5A8QrpcscAshC6Mrbzfbe2pBWeexdGTT4Mt2Y5cEzoRo2eh3IPcSOgoq26MEPsRTlZRmYEVAVZN6b2mIDttEefU5sCerPqJI=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0017_01D48635.DBDC8D00"
MIME-Version: 1.0
X-OriginatorOrg: bishopfox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e645a357-3294-4413-cca5-08d65487ac8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2018 16:45:01.0662
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59185728-a5f6-4629-bfc4-3c833d60489a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2488

------=_NextPart_000_0017_01D48635.DBDC8D00
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I accept the MITRE Terms of use.

Thank you.

Virginie Jenck
MARKETING MANAGER
(602) 320-8387
www.bishopfox.com


-----Original Message-----
From: kurt@seifried.org <kurt@seifried.org> 
Sent: Tuesday, November 27, 2018 8:40 AM
To: Virginie Jenck <vjenck@bishopfox.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
vjenck@bishopfox.com

################This email contains links from external source. Please ONLY
open links from trusted source################

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/maste
r/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when they
were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically in
future (you'll have to manually ask). But again, if you have no idea what a
CVE is then you can ignore this/ask to be added to the block list with no
problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute such materials and derivative works. Unless required by
applicable law or agreed to in writing, you provide such materials on an "AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied, including, without limitation, any warranties or conditions of
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make
for such purposes is authorized provided that you reproduce MITRE's
copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/maste
r/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.


------=_NextPart_000_0017_01D48635.DBDC8D00
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
czovL3d3dy5kaWdpY2VydC5jb20vQ1BTMIGIBgNVHR8EgYAwfjA9oDugOYY3aHR0cDovL2NybDMu
ZGlnaWNlcnQuY29tL0RpZ2lDZXJ0U0hBMkFzc3VyZWRJRENBLWcyLmNybDA9oDugOYY3aHR0cDov
L2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0U0hBMkFzc3VyZWRJRENBLWcyLmNybDB5BggrBgEF
BQcBAQRtMGswJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBDBggrBgEFBQcw
AoY3aHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0U0hBMkFzc3VyZWRJRENBLmNy
dDANBgkqhkiG9w0BAQsFAAOCAQEAjFOWSi1A36f3G231fdw4su57rZX1qORBm63p8ysAWjcKcT/6
sMqtbRT/PvoUqVZRAOA/CjCqGXxfVrQ+ovtVsF0zOo+qbFbedsY4BVvp3ivrH7VBKVw8bau9HS3R
Us2XMnHClaIuFFDycGU5U/XwjdfFcqgklerzxCpdVJNOrP0xZSq3tRzYSqzPbfFuSAmviVSvDFaT
pG1HLiUsxC58nA2tHAkRqy6sXA1l7N5LT8uQtgjYiP08Pk7JM7y/KaCwNENFg99EzWDn2np3LTFS
E79HIiFjXwAktfq+Ncld9BFqR2bN2vpqk22XW8XaqOFOrE2oguVoNvTXxDaAasK3sDCCBk4wggU2
oAMCAQICEASueWBmZpAaucV/pmxb3M0wDQYJKoZIhvcNAQELBQAwZTELMAkGA1UEBhMCVVMxFTAT
BgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMb
RGlnaUNlcnQgQXNzdXJlZCBJRCBSb290IENBMB4XDTEzMTEwNTEyMDAwMFoXDTI4MTEwNTEyMDAw
MFowZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRp
Z2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQgU0hBMiBBc3N1cmVkIElEIENBMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3PgRIz9qte/AJ3kbLQWHohBDMd8O1BUbT3ekIs4+jHDw
vgeO3ScqvAEdtiwKyt1pWB9B7WoFH9pjeFkeIiwr+Lp+yTU7VvEffEJ+JbAjGcZFONc9RPkgfGCu
HLBaGAS+jzv3qfCUmqYMY0m2QRdTQDK9T+ZQelAfJUXo8Ymvzf9e/1Dz8BcR/73FifW9YrnY+45F
BIVtmc3FSE39JqsCNkXqNtdfauIagkEK3OnZ9ZEXjsYhrTg8E+Yef2ac1U3ZRtr2z1KnfTskw7TB
UTXGm+vU737kewPhRL16CzfgT8uCig1xGOSm4IksG/OyczzBsJKeGH29q33FfQihLMKfcwIDAQAB
o4IC+DCCAvQwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAYYwNAYIKwYBBQUHAQEE
KDAmMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wgYEGA1UdHwR6MHgwOqA4
oDaGNGh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmww
OqA4oDaGNGh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5j
cmwwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMIIBswYDVR0gBIIBqjCCAaYwggGiBgpg
hkgBhv1sAAIEMIIBkjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzCC
AWQGCCsGAQUFBwICMIIBVh6CAVIAQQBuAHkAIAB1AHMAZQAgAG8AZgAgAHQAaABpAHMAIABDAGUA
cgB0AGkAZgBpAGMAYQB0AGUAIABjAG8AbgBzAHQAaQB0AHUAdABlAHMAIABhAGMAYwBlAHAAdABh
AG4AYwBlACAAbwBmACAAdABoAGUAIABEAGkAZwBpAEMAZQByAHQAIABDAFAALwBDAFAAUwAgAGEA
bgBkACAAdABoAGUAIABSAGUAbAB5AGkAbgBnACAAUABhAHIAdAB5ACAAQQBnAHIAZQBlAG0AZQBu
AHQAIAB3AGgAaQBjAGgAIABsAGkAbQBpAHQAIABsAGkAYQBiAGkAbABpAHQAeQAgAGEAbgBkACAA
YQByAGUAIABpAG4AYwBvAHIAcABvAHIAYQB0AGUAZAAgAGgAZQByAGUAaQBuACAAYgB5ACAAcgBl
AGYAZQByAGUAbgBjAGUALjAdBgNVHQ4EFgQU5wIjgABP2Ne8lAvZP3Q5STI8inkwHwYDVR0jBBgw
FoAUReuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcNAQELBQADggEBAE7UiSe5/R2Hd34PKAWQ
8QovyTs+vZOckMav+pFRhzJUa+jKwXFRXJmOtfrgYhmZpgeafBMn2+UCooQS2RX2CkRXxDSPbXMf
OtagAT3e44LkRWuy6yX9gF4dOZC+W0L2zpFg4/mgVgxIEM4zaHvNk6vwastPWA+5e10bBIGepyLi
V0kn7pKTCL5pCFMCOi5dyBn0UIBOAtmwXZG0k4f5lpaBVUCOZu2C2LsoX+1MYe0GWCgZUxFEvEcg
KbIEbNiJVJk7ddtneCweknjGVT1YEhEybr1DDE0023vGQtvsvqubYUwGkuOO3yEqUFcEwGCiNdUk
nmY3CUnP1fhls+DibsIxggO/MIIDuwIBATB5MGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdp
Q2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IFNI
QTIgQXNzdXJlZCBJRCBDQQIQDFOG81UCfg0hehJdzSFFLjANBglghkgBZQMEAgEFAKCCAhcwGAYJ
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTgxMTI3MTY0NDU4WjAvBgkq
hkiG9w0BCQQxIgQg3i1lLtSlaQyr7ZHTq8y7r0Sd3aiAeyBAHnTgoRXTKUAwgYgGCSsGAQQBgjcQ
BDF7MHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3
LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQgU0hBMiBBc3N1cmVkIElEIENBAhAMU4bz
VQJ+DSF6El3NIUUuMIGKBgsqhkiG9w0BCRACCzF7oHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoT
DERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNl
cnQgU0hBMiBBc3N1cmVkIElEIENBAhAMU4bzVQJ+DSF6El3NIUUuMIGTBgkqhkiG9w0BCQ8xgYUw
gYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAsGCWCGSAFlAwQCATALBglghkgBZQMEAgMwCwYJ
YIZIAWUDBAICMAcGBSsOAwIaMA0GCSqGSIb3DQEBAQUABIIBAIsCz3Olk+gEBrxjsHaudEXn2VoT
UadgNLCSziePqDCWwZ9n1tShFJib/6zJGiv21EOwVnMqHcBMUHFh9k63bFpDt839xwUxPABuO8/D
10ImkqrsGI/WrEJlCVzl/lsBQ9ktH/GqzieOgbJjqbg6A7926/tWVUfdcRGY0g/HbuZdI/sNcWRX
GmISp+JV2afI57RHhtOlfC8XVwqsHB7r2keCQchilnOWktjBfrq9S0OU8aasMK0U6hoJCbQb0wln
2d5jc0YbMtrxp19a19ADO5WUgrDu2rG7MCzDBHrAVBNWpL7qPSiCzj8/E68PtBqROnkQwnv9eQAq
DErBLVUh18oAAAAAAAA=

------=_NextPart_000_0017_01D48635.DBDC8D00--
