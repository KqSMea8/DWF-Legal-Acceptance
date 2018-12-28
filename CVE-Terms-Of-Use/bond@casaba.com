Delivered-To: kurt@seifried.org
Received: by 10.176.6.200 with SMTP id g66csp796404uag;
        Mon, 19 Jun 2017 18:52:04 -0700 (PDT)
X-Received: by 10.98.68.2 with SMTP id r2mr27869375pfa.45.1497923524428;
        Mon, 19 Jun 2017 18:52:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1497923524; cv=none;
        d=google.com; s=arc-20160816;
        b=T9GQMxhU6wLug9OV2ijQh/q/Bg/5+rrGa1AJ9qG0D+Bbz2wx2DKDlJwcjhCaPpCm8f
         /jGEhTyOFr8MjRoS8QgOYX5NsuE7qUZv1frglV/mcnccslwvHGOYtKnMk2gVLpuKIZwx
         bYM3fIxjch4A9EFuq2DkjcytKYoph7/eUquOR6Ira8xGYOss5fbmN0U2TQxzbPGZ/dWf
         i5MsybcQGoWjBWeXzgr6Ms0Lzk6l8bbiIHFhb/NDjqMVW3TP8EiOXpbkoJSznC+Alaip
         gnD9gABQhPYogOfy57gHEoSVAe1+xllH0eUVemYozvYXj+IronMU5P1QGrWvHooGbXfB
         nvzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=QZWCsQuDI5DmKXp3JwXR/r/I/CLa970J6GUNjIS6NbE=;
        b=gFyoCcvW/4g1lm4TRAffyA4uDuxbrHzNc2Zb2Ma8fpXlN6Zn91RbT94yvQwrORelL0
         brVUZzKmr/NF4QJxZ2N1RwBbUy3/7Fj9WHo6E8NeZABcSa21tXuKgHRGIBtRvygFbrwc
         /I+V9OXkaO22WxbSmeIgG/1AyQG79eFbMm8DjO2KHwSI1vfaEOErHaaa6+w1LblwZu1M
         BUx++up/aQlUCYFVwUAvy2Fxb4g0ThMzTJtfLHCS3msVv3jQ3EFKkI1BbxTCWM8HvqCQ
         iRyFBMpYAvhtUCm629GWb6R52hucCalF2/J/qtEXwuEkFEd138DiQ3iVEgtpAr4voIBJ
         oHfQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@CASABA.onmicrosoft.com header.b=Ggn9ZHPz;
       spf=pass (google.com: domain of bond@casaba.com designates 104.47.41.82 as permitted sender) smtp.mailfrom=bond@casaba.com
Return-Path: <bond@casaba.com>
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-dm3nam03on0082.outbound.protection.outlook.com. [104.47.41.82])
        by mx.google.com with ESMTPS id q188si4121433pfb.364.2017.06.19.18.52.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Jun 2017 18:52:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bond@casaba.com designates 104.47.41.82 as permitted sender) client-ip=104.47.41.82;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@CASABA.onmicrosoft.com header.b=Ggn9ZHPz;
       spf=pass (google.com: domain of bond@casaba.com designates 104.47.41.82 as permitted sender) smtp.mailfrom=bond@casaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=CASABA.onmicrosoft.com; s=selector1-casaba-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=QZWCsQuDI5DmKXp3JwXR/r/I/CLa970J6GUNjIS6NbE=;
 b=Ggn9ZHPz9Udnmvo10NeWvofeYoEV36nK2F0x8XESFZ+1hf51nnbnfogpzE4L8davFVzh4sCbPZlxnpBN8IZYOTKNXYX6yvZPq3eTxEtpXdVk6b5ORbZh5b6CD3O1ibFlRf5b48vg0j90BNS71L02H2fiUowuUyNX2WybVN91QzE=
Received: from CO1PR04MB556.namprd04.prod.outlook.com (10.141.73.23) by
 CO1PR04MB555.namprd04.prod.outlook.com (10.141.73.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1178.14; Tue, 20 Jun 2017 01:51:59 +0000
Received: from CO1PR04MB556.namprd04.prod.outlook.com
 ([fe80::e4e7:fb4b:f276:ea9a]) by CO1PR04MB556.namprd04.prod.outlook.com
 ([fe80::e4e7:fb4b:f276:ea9a%27]) with mapi id 15.01.1178.018; Tue, 20 Jun
 2017 01:51:59 +0000
From: Daniel Bond <bond@casaba.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 bond@casaba.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 bond@casaba.com
Thread-Index: AQHS6WbP78LXM9PEdkmQu0HoMubIkKIs/M3h
Date: Tue, 20 Jun 2017 01:51:59 +0000
Message-ID: <CO1PR04MB556F496470F240782E33B6CA1C50@CO1PR04MB556.namprd04.prod.outlook.com>
References: <20170620014446.46686.97533@bigbox.local>
In-Reply-To: <20170620014446.46686.97533@bigbox.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: seifried.org; dkim=none (message not signed)
 header.d=none;seifried.org; dmarc=none action=none header.from=casaba.com;
x-originating-ip: [13.68.108.16]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;CO1PR04MB555;7:tK1GjO67/MK0rIcd/hUSYgwP2bADPpBStieF58HNy/X4kKD47tjibbkfqIDWb1+5EypWSOgD+bGTV1rN2+Ai02zUVNmVsaJm2k3EBuw7y+V+AcOPhuHqtFUp5TlaybSIcmCudwmrsx2NHX1/HB6THm6c8aK4o+Fjgew6OBFjXzK6HkwJm58En1qEdAOEUrspRhLB9xPi8TkDGDkWClbkbjkcCHEaUIWk/HTeFnzm91osT6fStQHqiY/3JisHBc7JCjqbwmJKXu1F6jazVGEU4F+krbQbdnddhhifyWHTcjZdlEA5waP4Y9ZG4+5+AeMOCuGrpvuWOS4+HGvDAn5IV0wft7gyhHfllXzJ1MZml/8aL/XUT4vfkxZYLB5PWfgc0KSKfQcvJGFA+H8U2Lor+yHALOyRFMRfRZZLad/dyDimNSv2bJa06RdCLwLoMBPIdZ6nVmXurIQwekYG5a+niy+zz+pjzWXFLF1/KzPC0lITt9uP8k+Y7R+1RLUwBuNAkpZ01rh0KokIhhnWcISUx3gP1W5nqQ3jl24VCFyDNbSCzkdM3/52oMGbLlGQdu3L8Sj1VKHJluflzycuy7cKVx3lTTEQVEm7S3Ju3yhnMO1hBscIMEUapbTW1nxWrwDyFJLXxTfZu8jbogOOEwNIVHBZhtLc7dtfJAVyeNEabsPZX3zb34UFTc/oOeVLws9zylHsaqENrwx5v4RiX40AeZz+RG95JJpyxkhiDEK9qZCEn76stMBXPDN5pJAWVkGAxafrG/An2Ls7F5ytv37F+tZYrVNS9j7twgVSSiQXlME=
x-ms-office365-filtering-correlation-id: 5b8921e5-bbe4-47f8-503a-08d4b77ef081
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254075)(201703131423075)(201702281549075);SRVR:CO1PR04MB555;
x-ms-traffictypediagnostic: CO1PR04MB555:
x-microsoft-antispam-prvs: <CO1PR04MB5552C385A2FC04B5B46B438A1C50@CO1PR04MB555.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(111885846020525)(81439100147899);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(100000703101)(100105400095)(10201501046)(6041248)(20161123555025)(20161123564025)(2016111802025)(20161123562025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:CO1PR04MB555;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:CO1PR04MB555;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39450400003)(39830400002)(39400400002)(39410400002)(28244002)(38564003)(2950100002)(6916009)(2900100001)(25786009)(53936002)(189998001)(5640700003)(74316002)(606005)(6306002)(9686003)(6506006)(6436002)(55016002)(5180700001)(229853002)(53546009)(99286003)(966005)(2501003)(14454004)(478600001)(110136004)(86362001)(236005)(54896002)(33656002)(38730400002)(81166006)(8676002)(1730700003)(5660300001)(5250100002)(66066001)(305945005)(7696004)(50986999)(7906003)(2906002)(54356999)(76176999)(2351001)(3280700002)(3660700001)(6116002)(8936002)(3846002)(221513004)(222073002);DIR:OUT;SFP:1101;SCL:1;SRVR:CO1PR04MB555;H:CO1PR04MB556.namprd04.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_CO1PR04MB556F496470F240782E33B6CA1C50CO1PR04MB556namprd_"
MIME-Version: 1.0
X-OriginatorOrg: casaba.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2017 01:51:59.2511
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08336204-4650-48d9-94bd-06c1a19333d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR04MB555

--_000_CO1PR04MB556F496470F240782E33B6CA1C50CO1PR04MB556namprd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I accept.

_____________________________
From: kurt@seifried.org<mailto:kurt@seifried.org>
Sent: Tuesday, June 20, 2017 10:44
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for bond@casaba=
.com<mailto:bond@casaba.com>
To: Daniel Bond <bond@casaba.com<mailto:bond@casaba.com>>


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

A copy is available at https://github.com/distributedweaknessfiling/DWF-Dat=
abase/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org<mailto:kurt=
@seifried.org> manually with your question/concerns/etc.




--_000_CO1PR04MB556F496470F240782E33B6CA1C50CO1PR04MB556namprd_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!-- This file has been automatically generated. See web/README.md -->
<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div id=3D"compose-container" style=3D"direction: ltr" itemscope=3D"" itemt=
ype=3D"https://schema.org/EmailMessage">
<span itemprop=3D"creator" itemscope=3D"" itemtype=3D"https://schema.org/Or=
ganization"><span itemprop=3D"name" content=3D"Outlook Mobile for iOS"></sp=
an></span>
<div>
<div style=3D"direction: ltr;">I accept.&nbsp;</div>
<div><br>
</div>
<div class=3D"acompli_signature"></div>
<div class=3D"gmail_quote">_____________________________<br>
From: <a dir=3D"ltr" href=3D"mailto:kurt@seifried.org" x-apple-data-detecto=
rs=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-detectors-res=
ult=3D"0">
kurt@seifried.org</a><br>
Sent: Tuesday, June 20, 2017 10:44<br>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for <a dir=3D"l=
tr" href=3D"mailto:bond@casaba.com" x-apple-data-detectors=3D"true" x-apple=
-data-detectors-type=3D"link" x-apple-data-detectors-result=3D"1">
bond@casaba.com</a><br>
To: Daniel Bond &lt;<a dir=3D"ltr" href=3D"mailto:bond@casaba.com" x-apple-=
data-detectors=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-d=
etectors-result=3D"2">bond@casaba.com</a>&gt;<br>
<br>
<br>
This is a confirmation email sent from CVE request form at <a dir=3D"ltr" h=
ref=3D"https://iwantacve.org/" x-apple-data-detectors=3D"true" x-apple-data=
-detectors-type=3D"link" x-apple-data-detectors-result=3D"3">
https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the data u=
ntil you accept the MITRE CVE Terms of Use).
<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at
<a dir=3D"ltr" href=3D"https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/tree/master/Terms-Of-Use" x-apple-data-detectors=3D"true" x-a=
pple-data-detectors-type=3D"link" x-apple-data-detectors-result=3D"4">
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
A copy is available at <a dir=3D"ltr" href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" x-apple-data-detect=
ors=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-detectors-re=
sult=3D"5">
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a dir=3D"ltr" href=3D"mailto=
:kurt@seifried.org" x-apple-data-detectors=3D"true" x-apple-data-detectors-=
type=3D"link" x-apple-data-detectors-result=3D"6">
kurt@seifried.org</a> manually with your question/concerns/etc. <br>
<br>
<br>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_CO1PR04MB556F496470F240782E33B6CA1C50CO1PR04MB556namprd_--
