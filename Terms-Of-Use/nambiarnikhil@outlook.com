Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp778911otd;
        Sat, 11 Aug 2018 00:00:28 -0700 (PDT)
X-Google-Smtp-Source: AA+uWPx34FeX0MilyjkTWC554+qknl/0oDYX4dKiF1cvfzIn+KVdOKfa2onFSFfkUmAgpcyfqYWu
X-Received: by 2002:aca:3a57:: with SMTP id h84-v6mr10470519oia.336.1533970828834;
        Sat, 11 Aug 2018 00:00:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1533970828; cv=none;
        d=google.com; s=arc-20160816;
        b=sQZ5pyS/GapxewL9EGl8vD0GMkAXLttFAuo6gwdU4Rh3tIiVxEXkJkz5mq33cMa24q
         hz0cng9gKsFrCbSmYIXMKPtIb8SvorTYJvgaoBe96/9xdZ6VNL1lP+vjMMumRmOnJT2y
         Z4dw0pZUfGF5pT16iVNBN48TFDe7c5UMEI6pRY/tLEGGLRAg5A3JrcGizuBZj8U9+PPG
         x3v6qKUlZ2DFHbGxEPGv+yvZvzgYj8dJyQMePpxNOEf6RwF//6eYLV4sVgUudHyhUeZK
         Pvu9gXW3YG6WgDErO6N0jd4UUj+lT3k0DkJWgMx1rolzU2bMAnZQbUBIKAvSCfYQLBnK
         hJEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-signature:arc-authentication-results;
        bh=jvckIrviYJKrXQ5RmQ2p0m3o1Njz+PGOEA40N994dnM=;
        b=eWgLx8Omwz+DbE1gCkNbB5DI2E/1enX8y+kYKHZcgiZTsZ+jHKM8ZdQD1BOMUolPkX
         mpkXNPEKYolL0cESEoGHFSnwfo5/UHtDblHQ1/gMYXLE4TBMmBxjlE15Pqc2Ch0qktlS
         k/T4QaRvvHWwv6pUbSgXNyEo3WnwiqBQM9jX+6W6nsrlxjcrycnJMktU9E/OcY341ZWj
         kMsUEDwV5vqxPgX3SKF+yqt995hp60FGIEsM72OIRf+1HDwCfTwAHeM3KhPefu4890Eb
         yFlXmm+r49AI3CMBZmo67ueYDdaO+854yHJqP/X2rsdx+oyQ5MRrazMNTuo8X5ueLuEW
         pFYg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=tjV0klYS;
       spf=pass (google.com: domain of nambiarnikhil@outlook.com designates 40.92.6.71 as permitted sender) smtp.mailfrom=nambiarnikhil@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Return-Path: <nambiarnikhil@outlook.com>
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (mail-oln040092006071.outbound.protection.outlook.com. [40.92.6.71])
        by mx.google.com with ESMTPS id p187-v6si7503055oif.436.2018.08.11.00.00.28
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Aug 2018 00:00:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nambiarnikhil@outlook.com designates 40.92.6.71 as permitted sender) client-ip=40.92.6.71;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=tjV0klYS;
       spf=pass (google.com: domain of nambiarnikhil@outlook.com designates 40.92.6.71 as permitted sender) smtp.mailfrom=nambiarnikhil@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jvckIrviYJKrXQ5RmQ2p0m3o1Njz+PGOEA40N994dnM=;
 b=tjV0klYSXf/rdMyk9iOmx+LmHRBMsB+KOWRzzv4r+OiBqcMtBZWbWHXyfwEcsQWaUJeuwSAP1hNr4Cr44ttx4upU3QKOpKxsql4H0O24VBgx7ZWSCzCLRgZrPprK1ig4Thtu1DXGMft9IiWMWFLFnKi1RUF4WOk9bWZa7lIbMtgpnXIiZP3blSchoGgwOeibjFpGb+FznwxKOWVLMYwH/KEX+JPT4xBTFPYZO50f7xl021AnKof2I4CJufR60rk7g0kdyUaplDJ+PImbEVhZ6+uMn8vyhhS+/RirF7+3AkF+wyGE8YMi0pUCUHGzK6NJnqaFMt1BK7OHwTjhcKZoow==
Received: from DM3NAM03FT054.eop-NAM03.prod.protection.outlook.com
 (10.152.82.58) by DM3NAM03HT096.eop-NAM03.prod.protection.outlook.com
 (10.152.83.17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.1038.13; Sat, 11
 Aug 2018 07:00:26 +0000
Received: from BN4PR15MB0644.namprd15.prod.outlook.com (10.152.82.56) by
 DM3NAM03FT054.mail.protection.outlook.com (10.152.83.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.20.1059.14 via Frontend Transport; Sat, 11 Aug 2018 07:00:26 +0000
Received: from BN4PR15MB0644.namprd15.prod.outlook.com
 ([fe80::1901:9e63:a7fc:47]) by BN4PR15MB0644.namprd15.prod.outlook.com
 ([fe80::1901:9e63:a7fc:47%4]) with mapi id 15.20.1038.023; Sat, 11 Aug 2018
 07:00:26 +0000
From: Nikhil Nambiar <nambiarnikhil@outlook.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nambiarnikhil@outlook.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nambiarnikhil@outlook.com
Thread-Index: AQHUMPdggzxHzdDd/USLx+04Fg7ddKS6IAKi
Date: Sat, 11 Aug 2018 07:00:26 +0000
Message-ID: <BN4PR15MB0644062C79E9B6C9175AC19DA73B0@BN4PR15MB0644.namprd15.prod.outlook.com>
References: <20180810221330.2668.47791@shiny-2.local>
In-Reply-To: <20180810221330.2668.47791@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-incomingtopheadermarker: OriginalChecksum:57C4A006B994044BBA730672CFA17924F770A579AFB8F06D932218B63FD88185;UpperCasedChecksum:775ADAD8B38787EB2FB3CD9CE2EFF913C8D16A65A54ACA46E3A8C90F72EB3740;SizeAsReceived:7080;Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [/cL7u1bssIKHsaFkq6/Zw86APbBxGSJA]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;DM3NAM03HT096;6:ajPeeduGX7cHfy7w2cAd85plhDhA+Tf+jjiD4HKdQovuJ0DZ4TePMT3Bqp1DnIRrStN9xRmW5Epd8KrXNLlGAUrHWQjar8RmDlu0wCpr1cxpiAK7LoYfijTmDay/4rdPFgSRGwZc/E7YLQKMKDDCaMdcSQsDEwswvhupfBW185hprGLu1T1oysC8ZPbT3uD9eoUJ7CRMS6fabAqXSKtbdWs/UDzQQbeoUVanhhztP1XFPBLdF2KJ6lFjnWHWTiY7Dx5dTKpUirp5feKpJ7ylix6p4rV9diDxVjh189SmQ0oYtPE7Aw5m+ckNvdOX7RNz8DtC8jzd7o10G9Cn279OSu+JQN792NdEIpJGsAovsT/MUB8RWa25ZOshoDqCKcMZ3Ik9ZlSEAJOxdjJkHGrngzvZ6PqIf2POHeKrq+1P5VvEcAWVOtcxi2ENZpJG2N2DV9/IlnpJUjGvV6iQicdrWA==;5:GdIIxnChNCiDm+lAohQ0uFrW6Tfyk1ZSkx3j02BTCoNTFxuP4v56ZtVDRvtn6mtv4mpWc/gVulqAnn9URexMRc8p6KP0e78hwFQik9t7hpyJtMNfXeH7mUGZFxfanmI5KhQORgbsWIys+w3GghOFiaovYPfEMVkC8S5HodV8IDU=;7:vTFJuZnaaxTa9kU9uRncd/PNQHFW3ULmUzL/JC7iT7YsVn7lheiUuXpO8xoRGYEYXf7/JEA1u42rLb7clREKSN1UJFdMPoeoLGZE9XarN+rjCAc/XRWDOedlJ+IinfG4FhgzBVJjIIN1WsvWGim8kKtLEwZpz8Feg1USiufGvfXDEmbWK5eQDXHNGwv4LCTl4ajUOkfh1r9YhpajyJbYlYKLD9d6GTFY4OPkqKA6XyOH7wTQtDAc00tZ3MtxQM31
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);SRVR:DM3NAM03HT096;
x-ms-traffictypediagnostic: DM3NAM03HT096:
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(4566010)(82015058);SRVR:DM3NAM03HT096;BCL:0;PCL:0;RULEID:;SRVR:DM3NAM03HT096;
x-forefront-prvs: 0761DE1EDD
x-forefront-antispam-report: SFV:NSPM;SFS:(7070007)(47540400005)(189003)(199004)(13624006)(28244002)(38564003)(86362001)(5250100002)(19627405001)(2501003)(426003)(5660300001)(14454004)(229853002)(106356001)(6346003)(74316002)(2351001)(99286004)(14444005)(25786009)(256004)(7696005)(446003)(76176011)(476003)(222073003)(6246003)(486006)(2900100001)(11346002)(102836004)(6916009)(82202002)(236005)(55016002)(56003)(68736007)(606006)(5640700003)(97736004)(6436002)(105004)(26005)(33656002)(6306002)(54896002)(53546011)(104016004)(45080400002)(20460500001)(966005)(81156014)(105586002)(8936002)(5180700001)(8676002)(1730700003)(87572001)(221513004);DIR:OUT;SFP:1901;SCL:1;SRVR:DM3NAM03HT096;H:BN4PR15MB0644.namprd15.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: outlook.com does not designate
 permitted sender hosts)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nambiarnikhil@outlook.com; 
x-microsoft-antispam-message-info: 0kNQglMvb4543AzLYjrQH/SZglBqWnGAQ7VYxFd7wHEW22xgx/8VWSV6jFM6/Kocr6NttGjYYBua6J8bZ/Sm3Ws6nn9+PU565pBfF31ES9QqyZm4qUuES2Nhmhk8KtUDYVxnOIhhaUy9Trs2dplGzm5I76WS82L/1K4WSIqizlvtHZcmSwfL1/TuiTruy5c0yQP79HrCo84e0VjlJYGsEzTRuZLiyAhFh0QWa0s8qkY=
Content-Type: multipart/alternative;
	boundary="_000_BN4PR15MB0644062C79E9B6C9175AC19DA73B0BN4PR15MB0644namp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: f12efbb0-867f-4c93-8261-502eceebfafa
X-MS-Exchange-CrossTenant-Network-Message-Id: fffb7bc4-f3c7-4bbe-a714-08d5ff581e13
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: f12efbb0-867f-4c93-8261-502eceebfafa
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2018 07:00:26.8821
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT096

--_000_BN4PR15MB0644062C79E9B6C9175AC19DA73B0BN4PR15MB0644namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I accept
________________________________
From: kurt@seifried.org <kurt@seifried.org>
Sent: Saturday, August 11, 2018 3:43 AM
To: nambiarnikhil@outlook.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nambiarnikh=
il@outlook.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable copyright license to reproduce, prepar=
e derivative works of, publicly display, publicly perform, sublicense, and =
distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BA=
SIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implie=
d, including, without limitation, any warranties or conditions of TITLE, NO=
N-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE??). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyrigh=
t designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.


--_000_BN4PR15MB0644062C79E9B6C9175AC19DA73B0BN4PR15MB0644namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I accept<br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> kurt@seifried.org &lt=
;kurt@seifried.org&gt;<br>
<b>Sent:</b> Saturday, August 11, 2018 3:43 AM<br>
<b>To:</b> nambiarnikhil@outlook.com<br>
<b>Subject:</b> DWF/CVE - Acceptance of MITRE Terms of Use for CVE for namb=
iarnikhil@outlook.com</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">This is a confirmation email sent from CVE request=
 form at
<a href=3D"https://iwantacve.org/">https://iwantacve.org/</a> asking you to=
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form an=
d want one, we can't use the data until you accept the MITRE CVE Terms of U=
se).
<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at
<a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptanc=
e/tree/master/Terms-Of-Use">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use</a><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.
<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with &quot;unsubscribe&quot; or &quot;D=
ON'T SEND ME THIS EMAIL EVER AGAIN&quot; and I'll add
 your email address to the block list so we don't spam you with these, plea=
se note that this will prevent you from being able to accept the MITRE CVE =
Terms of Use via the DWF automatically in future (you'll have to manually a=
sk). But again, if you have no idea
 what a CVE is then you can ignore this/ask to be added to the block list w=
ith no problems.
<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable
 copyright license to reproduce, prepare derivative works of, publicly disp=
lay, publicly perform, sublicense, and distribute such materials and deriva=
tive works. Unless required by applicable law or agreed to in writing, you =
provide such materials on an &quot;AS
 IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or implied, including, without limitation, any warranties or conditions =
of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PU=
RPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities
 and Exposures (CVE??). Any copy you make for such purposes is authorized p=
rovided that you reproduce MITRE's copyright designation and this license i=
n any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES,
 DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO =
ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTIC=
ULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_BN4PR15MB0644062C79E9B6C9175AC19DA73B0BN4PR15MB0644namp_--
