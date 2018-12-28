Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp1369723ivl;
        Fri, 29 Sep 2017 19:12:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBClJxz3JPlwStFRUAzdy3G6+orqh8F9waUf6j9D5oB1y/BsBv12FqBiIHXzdmehMPmy+H/
X-Received: by 10.84.130.67 with SMTP id 61mr8966458plc.131.1506737528249;
        Fri, 29 Sep 2017 19:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506737528; cv=none;
        d=google.com; s=arc-20160816;
        b=CmZ5TlE9yjYZUUnbIcKAUqxP8uu4iRyStWoHvUWwp4eZmmCLJ03TfFWjKfkJmZKjqr
         FSaa/P12I+JQ9w1IaBarY4D1NneNXiKPSHooAxOk/QenqDOkawN6X0RBxHg6xqnM7kke
         gOa2Vx+cWeWzuPopJ7yyQjNJ0C9/mp527L7wRwo71oCL+RvdhEmCCrw0gWYLs610NiNP
         23O6KRszwQp3Sif48ISUsvocJ+HqIkpLM09c1LsSl9AA+1pspN9eSNu+X6Vhxsz9uc6s
         6Yme6SCjBy42oDKDmHMrsKOadyUW/QoU/QPudV4onS/5gv8CUq6dA9i+rDrepY98K8AM
         J8HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=gGNnaR4QtMJRxDGb6L1MZBUN4T2UY//Oi8OkKyo2T38=;
        b=DQTW77jFe7XWhVzoHp0FEwwKQPKcbqfIVGJ7IfZJzxVivu23Ravejv/ZoISzpdfCkE
         +cGKmKj2F7t02TcPAyIbmPEauvT3AMtbmF4tpJv/eWUfEPI/fsnRewC3HnkdlZt4Uw4P
         XHU7bTQrsGxHADdp1wYzimcguoILTmUoV2YBBDTi9b/LRWDw66wfmA2LGcJZX44dgGf3
         +dR244HvFfoYhdhaWIo5WqQ9exi74VreJLO7ST4pj+MCk1vCL2uwl/QDcFn4VdmSlRpy
         gjVqnZxQ2T4CiSRIAMRa3KHPxsGuSaCrW3PhbPOB+a8iPnsxgCcg60XAFi/1FuKYdfZM
         Kzcg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=ZpU9YhGR;
       spf=pass (google.com: domain of kongwenbin@live.com designates 40.92.254.88 as permitted sender) smtp.mailfrom=kongwenbin@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Return-Path: <kongwenbin@live.com>
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254088.outbound.protection.outlook.com. [40.92.254.88])
        by mx.google.com with ESMTPS id y11si4206455pfi.187.2017.09.29.19.12.07
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 19:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of kongwenbin@live.com designates 40.92.254.88 as permitted sender) client-ip=40.92.254.88;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=ZpU9YhGR;
       spf=pass (google.com: domain of kongwenbin@live.com designates 40.92.254.88 as permitted sender) smtp.mailfrom=kongwenbin@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=gGNnaR4QtMJRxDGb6L1MZBUN4T2UY//Oi8OkKyo2T38=;
 b=ZpU9YhGRVhEcMhaXJWaPE34e9wpxjXleY5jPUFWVebTnn4BtDq8OAfbC3T1fEDdyAz06PEGW/TqPNuEKpIXhBuDffGT20kFPVBDNpqd+ytYGJRVFdmVN6wY0sCureDlYJSmEtVST4sV+3ELvqMuEgAcjSbpIt2dB0vvBSCBiRfZrVsBk0R9BVTMsbHCrwujMG/iLXgipbj3osj21QPd0CHuKt34wQmfFu2j1pG/KsI6iYjuEP74is3botm4QaGGmvbQ0eQuFxc4LSsqcpyvq/KIfB5fHD2Rz1Xdbgj4HoRUP7n5RD6CTXun9asOE840S3tjuhJLVQ92BdXrTTSF/aA==
Received: from HK2APC01FT035.eop-APC01.prod.protection.outlook.com
 (10.152.248.54) by HK2APC01HT066.eop-APC01.prod.protection.outlook.com
 (10.152.249.164) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.56.11; Sat, 30
 Sep 2017 02:12:06 +0000
Received: from KL1PR0201MB2119.apcprd02.prod.outlook.com (10.152.248.55) by
 HK2APC01FT035.mail.protection.outlook.com (10.152.248.182) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.56.11 via
 Frontend Transport; Sat, 30 Sep 2017 02:12:05 +0000
Received: from KL1PR0201MB2119.apcprd02.prod.outlook.com
 ([fe80::ecbc:147e:a70c:498a]) by KL1PR0201MB2119.apcprd02.prod.outlook.com
 ([fe80::ecbc:147e:a70c:498a%15]) with mapi id 15.20.0077.016; Sat, 30 Sep
 2017 02:12:05 +0000
From: Wen Bin Kong <kongwenbin@live.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 kongwenbin@live.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 kongwenbin@live.com
Thread-Index: AQHTOY0sPYl5XVDzIE6kapV/kmVo7qLMr+vI
Date: Sat, 30 Sep 2017 02:12:05 +0000
Message-ID: <KL1PR0201MB211902D6562BCEF60610D764B77F0@KL1PR0201MB2119.apcprd02.prod.outlook.com>
References: <20170930014053.3437.3241@222.2.168.192.in-addr.arpa>
In-Reply-To: <20170930014053.3437.3241@222.2.168.192.in-addr.arpa>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: seifried.org; dkim=none (message not signed)
 header.d=none;seifried.org; dmarc=none action=none header.from=live.com;
x-incomingtopheadermarker: OriginalChecksum:2D6CC8D263F478A8969C4C051C4EE7F9289FB105642FB5F46C2E0D6B44E91021;UpperCasedChecksum:FADA26886AEA0F630DE5971541984250330EB99E53B66EB8426C72A11A5FCED6;SizeAsReceived:7101;Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [wfFKG8isqujTe43x51mZ9vQ0W4vgsi6P]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;HK2APC01HT066;6:dF76BsUfSYDVeGhx6/WUOBXKywWpHpynGchsoKuzf8HzlyLeumKQH297xsxnnteMSEkJar+pLrwgPlg55Q0xDIb8Y6PWDl4Inmd07bxzDSqzZJ6KFLZ4LeqSiwwz9myAS/P40d6fYeFYe3oevc0WUmYIkC6iFtswaMgp6Onecph+QwOYkcshYBc2F+EzkTgF7jSA5+uDKbsH9ZJWsm7q6sVZ7lUyaEIJKyGid1uN8fJQvchmzlrrIZGS/Iguczc5B6++g4JUo1gLivj5Y7ruM4w5bzDQpdigr4yequTc93gk28oYfisvx5to7rvu6x2gYOFxFgIWlUvZwFSvGBdcFQ==;5:uIr5LBa0T3NY1pnVRFReecLnEIepV/2B/rmxn08dHZiJ5KwebX22rCy2P8nW5QW+DNIJwTjQd1cDT08zPr7nrtKoCzJhvj1RSx8Z+lS/2+ZvqJQvqDqPiQodK56aFsNhfQyfPU6TmYVaXyOAf/7WVg==;24:8H6uB5Rz50V67yv8WrzluxZRJ3fmdHCyAS4vmSbwEUlBP0YwovMlUarvi4cCrbPWhlqUn5vcZo4iz8cu7CULGsswiggtK7zhWrv1GF/U65k=;7:RDPkCt6fKRLFRoVSX/UeGMEDJ/+vNOR5i8FKguqMnLplsh2IEGdc5nY/bETRTExE3+Wh9uXUMQe+VmAlNj9rPb62a2IgqB/k3yDMYueKs83KLXJ+YQsJV9Qx+2EQyxDXPlEt3p0bQDfwE8SxFre9jwYIjAih4y1a/iltgluCt+VDluNVfYJSgStmmJ0zWzyw3E8uLtPmetu+HOfPCClhRW+4qCGbTCUCZlrFfri/zcw=
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: da6cf9bf-f789-4199-070b-08d507a8a5b6
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);SRVR:HK2APC01HT066;
x-ms-traffictypediagnostic: HK2APC01HT066:
x-exchange-antispam-report-test: UriScan:(158342451672863)(166708455590820)(37052965297144);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);SRVR:HK2APC01HT066;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:HK2APC01HT066;
x-forefront-prvs: 0446F0FCE1
x-forefront-antispam-report: SFV:NSPM;SFS:(7070007)(98901004);DIR:OUT;SFP:1901;SCL:1;SRVR:HK2APC01HT066;H:KL1PR0201MB2119.apcprd02.prod.outlook.com;FPR:;SPF:None;LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_KL1PR0201MB211902D6562BCEF60610D764B77F0KL1PR0201MB2119_"
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2017 02:12:05.8082
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT066

--_000_KL1PR0201MB211902D6562BCEF60610D764B77F0KL1PR0201MB2119_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Kurt,

I had 3 submissions and yes, I accept the terms of use for CVE.

Please let me know how I can provide more information to get this through a=
s I can't really release my working crash files in public as there don't se=
em to be anyone actively working on fixing the issue at all. Probably becau=
se the original author last published in 2004 and the new authors only publ=
ished once in 2016 and never touched it again. I raised the issues and it h=
ave been at least a month already.

Thanks.

Regards,
Wen Bin

--
Sent from my mobile

________________________________
From: kurt@seifried.org <kurt@seifried.org>
Sent: Saturday, September 30, 2017 9:40:53 AM
To: kongwenbin@live.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kongwenbin@=
live.com

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


--_000_KL1PR0201MB211902D6562BCEF60610D764B77F0KL1PR0201MB2119_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Hi Kurt,<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
I had 3 submissions and yes, I accept the terms of use for CVE. <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Please let me know how I can provide more information to get this through a=
s I can't really release my working crash files in public as there don't se=
em to be anyone actively working on fixing the issue at all. Probably becau=
se the original author last published
 in 2004 and the new authors only published once in 2016 and never touched =
it again. I raised the issues and it have been at least a month already.
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Thanks.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Regards,<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Wen Bin <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
--<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Sent from my mobile</div>
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> kurt@seifried.org &=
lt;kurt@seifried.org&gt;<br>
<b>Sent:</b> Saturday, September 30, 2017 9:40:53 AM<br>
<b>To:</b> kongwenbin@live.com<br>
<b>Subject:</b> DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kong=
wenbin@live.com</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
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
</span></font>
</body>
</html>

--_000_KL1PR0201MB211902D6562BCEF60610D764B77F0KL1PR0201MB2119_--
