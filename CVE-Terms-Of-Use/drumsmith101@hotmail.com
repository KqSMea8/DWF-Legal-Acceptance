Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp1936397ivb;
        Sat, 18 Nov 2017 10:03:44 -0800 (PST)
X-Google-Smtp-Source: AGs4zMajRG2tXShSYmaKmiJ7SVz41uXVWSyj0NUXNQq7rvhSQqlT4+faH+oKkaFtPUN/VUqI2prJ
X-Received: by 10.101.100.65 with SMTP id s1mr8699849pgv.185.1511028224607;
        Sat, 18 Nov 2017 10:03:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511028224; cv=none;
        d=google.com; s=arc-20160816;
        b=GEUkIeBG8BxFRtpSQS+7ZeRxIi4/Qz/qTvrROjkjAbEQxuQc6ytlaseN5E4NNW6x9K
         nhCE0pmy632hJrk/RrbZpgdh65pG7hPQ5j3Eht1rDzbO0/9C2DDvWlR/NRBkM59zSjyH
         S3wF8lFfNwjjiLV7V5dXfuazHHC4ARos1OLeTVKttIJrROaXP8VxonWtgHf22TgaawB4
         O1jqPSaOlxInaRPN963mTgeVKg5jXl1IYPQhzILlmDYIXYjRsYfhmdbdeBiGp8x4xvSx
         Vq7Ksh9o7MNFazmgEN2vmpAjHLlvm0so9MxpyYp/Ci5aeo7hW/dZSJD61Py5nFV3ukFY
         AoqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=goNC+xfNTTc2dtQ4fzTXbJARAq9YScLHoHLz6ycXEOI=;
        b=eL2sQP8ucx0tT6kq2jJGnIjrvtoQIiBQbPvrTUqPbD6T98RWtDF/fUysrAgKaKKRul
         j9rlxpGdVZr7fWd6xvewfHGlAwRln9442nj9Z/3jcw7tpwjuGV7IJuPjkKmhE3gQLi13
         A2fU5dU6A5zar5Xi3ThhJNrRJDQQuQAjK+VnOvGJVVMNsHJ5nYYa5E2chtfc0YZIX6qf
         t9JciJDk258VhKr5KsiA8OpLYdEsibQ9+VI6SXOwA52bbsDQOi7/f1i6BHIIzwWeQG0D
         XJV9DGcPVCLCzn/6qB18lhLYIWHWbN8oCRDXx+pRgKZmAgEv1mbjQH95FO6nIozgnlG+
         BiTA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=kjxCuSy7;
       spf=pass (google.com: domain of drumsmith101@hotmail.com designates 40.92.255.25 as permitted sender) smtp.mailfrom=drumsmith101@hotmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=hotmail.com
Return-Path: <drumsmith101@hotmail.com>
Received: from APC01-HK2-obe.outbound.protection.outlook.com (mail-oln040092255025.outbound.protection.outlook.com. [40.92.255.25])
        by mx.google.com with ESMTPS id x10si4910591plr.817.2017.11.18.10.03.44
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Nov 2017 10:03:44 -0800 (PST)
Received-SPF: pass (google.com: domain of drumsmith101@hotmail.com designates 40.92.255.25 as permitted sender) client-ip=40.92.255.25;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=kjxCuSy7;
       spf=pass (google.com: domain of drumsmith101@hotmail.com designates 40.92.255.25 as permitted sender) smtp.mailfrom=drumsmith101@hotmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=hotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=goNC+xfNTTc2dtQ4fzTXbJARAq9YScLHoHLz6ycXEOI=;
 b=kjxCuSy7PuqNTtOvFlpmEMnr25rEPQ49q0kWGnOcLp7GqvF1dKoCXHLllpWvYsZrdfYs/ducoO2SeEGKdD9w2DomfG7r6yljQlcGwX+3qdkeCQgl6472yRbfmFqBFufOhkPsWtptPPMV7nNAapsKrt9Z4TzMefUNukaMLncZ0lbn/xld3JZeere5ZFFxIi8YrUNNY3u8lS/Q8B0fFe09ilFpZdZpdJI5QWJUN/b6JgwAz6P7wzaqwSpR59JVbL9Z5N8yrftc90RSSk41Vmq2YBzyCkON9FXhxc+TUrh57EtEN6MybsaDrzgxopwwn6Emg9qwSRUBSPCX0R807FcUiw==
Received: from PU1APC01FT112.eop-APC01.prod.protection.outlook.com
 (10.152.252.60) by PU1APC01HT105.eop-APC01.prod.protection.outlook.com
 (10.152.253.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.178.5; Sat, 18
 Nov 2017 18:03:42 +0000
Received: from HK2PR0201MB0898.apcprd02.prod.outlook.com (10.152.252.57) by
 PU1APC01FT112.mail.protection.outlook.com (10.152.252.234) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.178.5 via
 Frontend Transport; Sat, 18 Nov 2017 18:03:42 +0000
Received: from HK2PR0201MB0898.apcprd02.prod.outlook.com
 ([fe80::180b:b6b2:e07e:4436]) by HK2PR0201MB0898.apcprd02.prod.outlook.com
 ([fe80::180b:b6b2:e07e:4436%14]) with mapi id 15.20.0239.008; Sat, 18 Nov
 2017 18:03:41 +0000
From: Mee E <drumsmith101@hotmail.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 drumsmith101@hotmail.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 drumsmith101@hotmail.com
Thread-Index: AQHTYIwOOXBL7iwWm0ySZ02vNdMtmaMabanA
Date: Sat, 18 Nov 2017 18:03:41 +0000
Message-ID: <HK2PR0201MB089889EE80C0A86800F879FB9A2C0@HK2PR0201MB0898.apcprd02.prod.outlook.com>
References: <20171118164108.64559.56085@slab.local>
In-Reply-To: <20171118164108.64559.56085@slab.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: seifried.org; dkim=none (message not signed)
 header.d=none;seifried.org; dmarc=none action=none header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:CF0699E8DE15720C0A172736FA42FBF9041231E02550FCE11499D7BB455BD728;UpperCasedChecksum:3E7569A3A62A588AC6292ACBC21E664C3246D358F725E548BADC4F77D83ECDE2;SizeAsReceived:7093;Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [DH7esMnt0VBPeIWAY6P0S7Iv5X4Y0b2X]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;PU1APC01HT105;6:8FooegPfR9Ry9cWY4oMvN3FZDtRbdjE5i9gUeZGbiO46OxDcTtKoT/f3sONBENqeFs9wWmgTZeWRLYMa/6peYovk7VqwYoGUyLfK5dg/LnNDX5+ks0lZiz613psI2BxMtcymjUpu6EjQmZDjcqRJUCg/ATRRD7CZ+Ger16wMau9lYg4Nzt3Uoo9OiYFrLHoEJI/7DsODx+8zFjn3sA34Av1BjT0tRhim84tSjcIQB33KVeQzvyzjWCicYClvtsW/APVWUZCrs6takF7JPdK+ohF5uodfP3Q2msJ03lNWzKw+htaY0ZeKsdUVeEVHas3BKqBTu2OmMITzuSBvFIqOGI6rvZRN9tsFAmSmIwa+yWM=;5:VAiRTNgyj9c+EzKKiwSI4vzFKESUrD/ZuLb4S0ttbCgPi5326J9J1Sf4aHKi1DrbFAHeo1Il3ftVEvLjwfqaRFQi2myESin/6Hefm4QjvMRTPLX/3Gfyzslv8Rx3wKX1d2WgOYuqc2xl085aUgYfvDJZXjiE4+jpgh3Mxv7tXPk=;24:40AA0ShQ4x9xCC//rnAC0HW32dmMixS3QEkboOV3WX8y/0/uBk3UL4fQXul04FzulnSETOtEWInSqmHwc2rXoMTyYIlut5ULaisZi0EOOmk=;7:UwkAlWP6NDGVOfnA8gptXS5nhtgxlj+meevYIvTo1dvc2VbqSL9y/UHqPZxigSvLiT4H+g1F0Ni3/q7GDYO7oXjamleKf+BF0/WzJbuvkDtU+CdrZUt7gyeeFE1ibWdd25xJW33H05zpDqbLs0NSFMPpApZcU+CJ+L+aj3WB9z+r2F/00NfogieQuvSR98HoLRuiADZTiiBhBQn6lFeibaF32o9vY5mW/G0RJm6Z7wbrKvINGQ2dJswcX/ADuapH
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: b80031e1-8389-41ca-ce4c-08d52eaeb394
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);SRVR:PU1APC01HT105;
x-ms-traffictypediagnostic: PU1APC01HT105:
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);SRVR:PU1APC01HT105;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:PU1APC01HT105;
x-forefront-prvs: 04953B1F22
x-forefront-antispam-report: SFV:NSPM;SFS:(7070007)(98901004);DIR:OUT;SFP:1901;SCL:1;SRVR:PU1APC01HT105;H:HK2PR0201MB0898.apcprd02.prod.outlook.com;FPR:;SPF:None;LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_HK2PR0201MB089889EE80C0A86800F879FB9A2C0HK2PR0201MB0898_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b80031e1-8389-41ca-ce4c-08d52eaeb394
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2017 18:03:41.2197
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT105

--_000_HK2PR0201MB089889EE80C0A86800F879FB9A2C0HK2PR0201MB0898_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I accept


'This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fille=
d out the CVE form and want one, we can't use the data until you accept the=
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
th your question/concerns/etc. '

________________________________
From: kurt@seifried.org <kurt@seifried.org>
Sent: Saturday, November 18, 2017 4:41:08 PM
To: drumsmith101@hotmail.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for drumsmith10=
1@hotmail.com

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


--_000_HK2PR0201MB089889EE80C0A86800F879FB9A2C0HK2PR0201MB0898_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.333333015441895px;">I accept</span></p>
<p><br>
</p>
<p>'<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal,=
 &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, ser=
if, EmojiFont; font-size: 13.333333015441895px;">This is a confirmation ema=
il sent from CVE request form at&nbsp;</span><a href=3D"https://iwantacve.o=
rg/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPlnk20790" previe=
winformation=3D"1" style=3D"font-family: wf_segoe-ui_normal, &quot;Segoe UI=
&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; =
font-size: 13.333333015441895px;" previewremoved=3D"true">https://iwantacve=
.org/</a><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_no=
rmal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif=
, serif, EmojiFont; font-size: 13.333333015441895px;">&nbsp;asking
 you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE =
form and want one, we can't use the data until you accept the MITRE CVE Ter=
ms of Use).&nbsp;</span></p>
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">Simply quote the email and rep=
ly with &quot;I accept&quot; at the top if you agree to the MITRE
 CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE =
Terms of Use acceptance data at&nbsp;</span><a href=3D"https://github.com/d=
istributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" tar=
get=3D"_blank" rel=3D"noopener noreferrer" style=3D"font-family: wf_segoe-u=
i_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-s=
erif, serif, EmojiFont; font-size: 13.333333015441895px;">https://github.co=
m/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</=
a><br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">The reason we use a complete c=
opy of the email is that it provides an artifact showing
 that the email address accepted the Terms of Use, when they were accepted =
and so on.&nbsp;</span><br style=3D"color: rgb(33, 33, 33); font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif, serif, EmojiFont; font-size: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">If you did not submit a CVE re=
quest to the DWF you can safely ignore this message, however
 we may resend it at some point in the future, if you don't want any future=
 emails simply reply with &quot;unsubscribe&quot; or &quot;DON'T SEND ME TH=
IS EMAIL EVER AGAIN&quot; and I'll add your email address to the block list=
 so we don't spam you with these, please note that this
 will prevent you from being able to accept the MITRE CVE Terms of Use via =
the DWF automatically in future (you'll have to manually ask). But again, i=
f you have no idea what a CVE is then you can ignore this/ask to be added t=
o the block list with no problems.&nbsp;</span><br style=3D"color: rgb(33, =
33, 33); font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe=
 WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; font-size: 13.33333=
3015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">MITRE CVE Terms of Use</span><=
br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot;=
Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Emo=
jiFont; font-size: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">LICENSE</span><br style=3D"col=
or: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;,=
 &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; font-si=
ze: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">Submissions: For all materials=
 you submit to the Common Vulnerabilities and Exposures
 (CVE??), you hereby grant to The MITRE Corporation (MITRE) and all CVE Num=
bering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge,=
 royalty-free, irrevocable copyright license to reproduce, prepare derivati=
ve works of, publicly display, publicly
 perform, sublicense, and distribute such materials and derivative works. U=
nless required by applicable law or agreed to in writing, you provide such =
materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS O=
F ANY KIND, either express or implied, including,
 without limitation, any warranties or conditions of TITLE, NON-INFRINGEMEN=
T, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span><br style=3D=
"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot;Segoe UI&qu=
ot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; fon=
t-size: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">CVE Usage: MITRE hereby grants=
 you a perpetual, worldwide, non-exclusive, no-charge,
 royalty-free, irrevocable copyright license to reproduce, prepare derivati=
ve works of, publicly display, publicly perform, sublicense, and distribute=
 Common Vulnerabilities and Exposures (CVE??). Any copy you make for such p=
urposes is authorized provided that
 you reproduce MITRE's copyright designation and this license in any such c=
opy.</span><br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_no=
rmal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif=
, serif, EmojiFont; font-size: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">DISCLAIMERS</span><br style=3D=
"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot;Segoe UI&qu=
ot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; fon=
t-size: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">ALL DOCUMENTS AND THE INFORMAT=
ION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON
 AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY
 WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIG=
HTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULA=
R PURPOSE.</span><br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe=
-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans=
-serif, serif, EmojiFont; font-size: 13.333333015441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, =
EmojiFont; font-size: 13.333333015441895px;">A copy is available at&nbsp;</=
span><a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md" target=3D"_blank" rel=3D"noopener noref=
errer" style=3D"font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quo=
t;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; font-size: 1=
3.333333015441895px;">https://github.com/distributedweaknessfiling/DWF-Lega=
l-Acceptance/blob/master/Terms-Of-Use.md</a><br style=3D"color: rgb(33, 33,=
 33); font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; font-size: 13.33333301=
5441895px;">
<br style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, Em=
ojiFont; font-size: 13.333333015441895px;">
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.333333015441895px;">To contact the DWF either h=
it reply, or email kurt@seifried.org manually with your
 question/concerns/etc.</span><span style=3D"color: rgb(33, 33, 33); font-f=
amily: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Taho=
ma, Arial, sans-serif, serif, EmojiFont; font-size: 13.333333015441895px;">=
&nbsp;</span>'</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> kurt@seifried.org &lt=
;kurt@seifried.org&gt;<br>
<b>Sent:</b> Saturday, November 18, 2017 4:41:08 PM<br>
<b>To:</b> drumsmith101@hotmail.com<br>
<b>Subject:</b> DWF/CVE - Acceptance of MITRE Terms of Use for CVE for drum=
smith101@hotmail.com</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:10pt;=
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

--_000_HK2PR0201MB089889EE80C0A86800F879FB9A2C0HK2PR0201MB0898_--
