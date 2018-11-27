Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp1578997otc;
        Tue, 27 Nov 2018 07:46:16 -0800 (PST)
X-Google-Smtp-Source: AFSGD/Wi1z2Xxbv2dKgZkGYq0lorHR/SzJMyeAuLu6JZeu3ZSnb5yZ5L1peFcYHw46LC+Jt1DHmq
X-Received: by 2002:adf:9b11:: with SMTP id b17mr28043641wrc.168.1543333576650;
        Tue, 27 Nov 2018 07:46:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543333576; cv=none;
        d=google.com; s=arc-20160816;
        b=LltFtCT2n7BbaMVKZ5d6eRrM70fDXZSDwr66WCbjZUPogyEH4N23CM3kBVJ6tNL/GD
         ZQ75odd50yv2pFVsXRMQEryKd8B4v69RtLYseRmgCzAMY2esD5pDlG57d7POMopMd8aW
         8PIJ3hd3pqzbZX5FhFjoHcbfouG7MvRXKd/t46VjINHblFNtx+q1zS6YzBfvaD++qOy4
         rsG7aLKRmjaQ0qHOvV28YUm9wEuGRYd8ME6er6muDPW2nWMYX4GrTwTdFmJRDsaHrks8
         tjSgnM4c/RIlEq5XJ+Zg6XK7lvZxIRjKEt0uhAg3b5FSZ1ZTn2YS8h0YztHmJBW9DPeq
         3jhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version;
        bh=Ps0mi84hnSdKTqqEtvI7EGNA6gq+B/1GEw+yDbsFIrY=;
        b=qny7+v6Hwpqy53s6XVMfDM5ykOzxz3xOCOZcONfmIaaIGG8L3kn+u6BqFBNBOc37lH
         64EpzTT7SYOqyQ2MlHIbeFBFZ/gmeV2CK3wczWKaYfGUZvG9mQLyS7BzKYtHDJegybfY
         HWG67xqnMlhJSUvJuliMKQ7Q/LsYU4cTnBILCmWDl8Ki3gIM5fUeF4Mr5xlupj5OSAfg
         BQBt5ZehbEM6fSqtykEXmkQW4ZIG740n6OYLqY/kruFn/1hanD8pABVDMPQS8gSzhh0J
         ZxLFlczXR+sUqTZiqqysvfRYjdARgbvgx/iBa4iH7bq+L22yRp50pTAkhWdhELxnzEKa
         k+ng==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of krzysztof@burghardt.pl designates 178.33.107.143 as permitted sender) smtp.mailfrom=krzysztof@burghardt.pl
Return-Path: <krzysztof@burghardt.pl>
Received: from 1.mo177.mail-out.ovh.net (1.mo177.mail-out.ovh.net. [178.33.107.143])
        by mx.google.com with ESMTPS id 186-v6si3457075wmz.74.2018.11.27.07.46.16
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Nov 2018 07:46:16 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof@burghardt.pl designates 178.33.107.143 as permitted sender) client-ip=178.33.107.143;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of krzysztof@burghardt.pl designates 178.33.107.143 as permitted sender) smtp.mailfrom=krzysztof@burghardt.pl
Received: from player792.ha.ovh.net (unknown [10.109.143.24])
	by mo177.mail-out.ovh.net (Postfix) with ESMTP id E71E8D3A9B
	for <kurt@seifried.org>; Tue, 27 Nov 2018 16:46:15 +0100 (CET)
Received: from burghardt.pl (mail-io1-f42.google.com [209.85.166.42])
	(Authenticated sender: krzysztof@burghardt.pl)
	by player792.ha.ovh.net (Postfix) with ESMTPSA id 944295D0300
	for <kurt@seifried.org>; Tue, 27 Nov 2018 15:46:15 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id n9so17318332ioh.7
        for <kurt@seifried.org>; Tue, 27 Nov 2018 07:46:15 -0800 (PST)
X-Gm-Message-State: AA+aEWYX0JgiDfmLvVNKeDIv3drLLYr4XXpVoOBKhD7E/fdPW7vw/SLO
	2dRlEKyEnpN+HNgD79MBK+cyN9LYLafKlOtxgh0=
X-Received: by 2002:a6b:e802:: with SMTP id f2mr24335583ioh.296.1543333574621;
 Tue, 27 Nov 2018 07:46:14 -0800 (PST)
MIME-Version: 1.0
References: <20181127153957.36526.89703@bigbox.local>
In-Reply-To: <20181127153957.36526.89703@bigbox.local>
From: Krzysztof Burghardt <krzysztof@burghardt.pl>
Date: Tue, 27 Nov 2018 16:46:02 +0100
X-Gmail-Original-Message-ID: <CANTbKE9eU3xxBfYOdiqH_Hj89Y3M77JRqvSzdpQnqfm1D+Y70Q@mail.gmail.com>
Message-ID: <CANTbKE9eU3xxBfYOdiqH_Hj89Y3M77JRqvSzdpQnqfm1D+Y70Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for krzysztof@burghardt.pl
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000007c43ae057ba759d0"
X-Ovh-Tracer-Id: 7405888115139810183
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtkedrudduledgudehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc

--0000000000007c43ae057ba759d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I  accept.

wt., 27 lis 2018, 16:40: <kurt@seifried.org> napisa=C5=82(a):

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--0000000000007c43ae057ba759d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><font face=3D"sans-serif"><span style=3D"font-size:1=
2.8px">I=C2=A0=C2=A0accept.</span></font><br><br><div class=3D"gmail_quote"=
><div dir=3D"ltr">wt., 27 lis 2018, 16:40:  &lt;<a href=3D"mailto:kurt@seif=
ried.org">kurt@seifried.org</a>&gt; napisa=C5=82(a):<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">This is a confirmation email sent from CVE request form a=
t <a href=3D"https://iwantacve.org/" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE T=
erms of Use (assuming you filled out the CVE form and want one, we can&#39;=
t use the data until you accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br=
>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank" rel=3D"noreferrer">kurt@seifried.org</a> manually=
 with your question/concerns/etc. <br>
<br>
</blockquote></div></div></div>

--0000000000007c43ae057ba759d0--
