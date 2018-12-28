Delivered-To: kurt@seifried.org
Received: by 10.79.201.12 with SMTP id n12csp384223ivk;
        Tue, 13 Feb 2018 22:14:06 -0800 (PST)
X-Received: by 2002:a17:902:70c9:: with SMTP id l9-v6mr3435908plt.67.1518588846822;
        Tue, 13 Feb 2018 22:14:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518588846; cv=none;
        d=google.com; s=arc-20160816;
        b=S8uK44TNpdZf3WF7ljCUQ+TwHE9MRlQeHJLoZoZ7/KBusQUqlEMLwqEuIdElt3uR0o
         9Yc/iL9ub3OE8YjmWPLx4oNVOtHDx7w5stXt2XSXFhDQBvG1m4NYSldMPvZLtpgRT2CI
         uDBYt66qDP4SuqXOMlsRzEaRcfJwcB7VdCgC9tAmrS0BoptAfkXBL/Ma4lQc76Yq8U4T
         o3LC8ZOKnDG82XYjlFImn7ygurKs6XBDt77mRT3rMPo4AGm1QWqLKpBqIA+V5MmouKa8
         368KRncq8DgHHzxKfyfPd9h803YVHZLzzGkZxchwytleORVBdd4LmaEnnFSZ1sm4COZO
         BTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=jCeZEBkACGujb+KA/3uPLdr1iKobvCkNvB4hfzOLTZo=;
        b=SkWx61gxT49fJS8SRFOr9OsN/kbfUEgBkwJkrULPKadQsBQ3Xh1obmWhUuwlFXV7eF
         vittsqCj4x4PVG0aY/29iZTNWlgmMhsNQZGGaQYlND0B1WB4mHdmHwz2osbfJHyOpoPV
         g/s0qDDLYNv4EanEUCZYbfyIORbIorwmx/X0qZAssw4Zws8lN0YTIGxuFUCI16UYS6VH
         ULYE/yK47na9sCGuzhXFDtZFsoR7DpjchDOekhyD4gXr9ZeT0ECBnDzpsV6MyRnM4kFn
         NAT/Qv7UVyUuiF8lBrqvgEZvgW2TayJLAJYqD+OKLyXOVcbb6Hmf7ec2u9+OWsFKlkm9
         wkxg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gTLSoYVh;
       spf=pass (google.com: domain of kadatushar@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kadatushar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kadatushar@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h6sor2173070pgc.202.2018.02.13.22.14.06
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 13 Feb 2018 22:14:06 -0800 (PST)
Received-SPF: pass (google.com: domain of kadatushar@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gTLSoYVh;
       spf=pass (google.com: domain of kadatushar@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kadatushar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=jCeZEBkACGujb+KA/3uPLdr1iKobvCkNvB4hfzOLTZo=;
        b=gTLSoYVh4OR3Q72YKs50pZMo5jX/MkKr9LI67lD/5b/rziF0gfqt6IbmvCkM5CRWnD
         Y/bh0qiFohyTr/UhrpB2YWMBAIQ1ahxvJne0yShwsC2yGDrQv3dy+WTvxlyCVrbJhN5x
         AltGtYxDtq1UrMmrRLKrOYsUgzjrJCdO0aSMrrF+TkIY9F8bvdkUVdg+U0By30U5KQj8
         AjMeH+ZpEbcCYVpAXDqT4s2c//oy40kAtAaRCshDosfShLmNmjOKHOWVnIlkf0MDNtVr
         3lYZ3G7AUwmB4+sM/Sax/TmJoDhvrTCF0ZPndhCABgIkDL+W4GRtBFxnuxlG9wBec/3Z
         KKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=jCeZEBkACGujb+KA/3uPLdr1iKobvCkNvB4hfzOLTZo=;
        b=rsWnbd3ODsI8I6xCds3Rr1C8oGp2EYcaC/LAnJwGgeG691wcTf7zu2ftwaoPQ6xgPi
         6EmxMPZDGl9lW/zJoBDt1cxVSqz7D/FFt6DlYFlwjLv5i9OAALn4P9kV9ls3/Vkn6jX/
         vEMuvlAF2z+/438oNSVDF96Dqfxr35xW7Hw+AtvzxLsLwallrKvsE/IkIWtRs2xUhDOn
         F8/w7evAeav86Dx1qyw0CnLO7x/7jvvTreGnG+LzS17KKwuCyZDal75iCKpYfjq9DwSZ
         FNaRirz8/SJdX6N5WWt83txLO+TmsvGP/k757an1VvgGuOEPfZhuyd4vWhVQ89TG7EMr
         BHEQ==
X-Gm-Message-State: APf1xPAzdj9+jUajPYecxlbI+9VC0laH0AWS4N0dDwWXEPysgqTAKwY7
	Rxwn8iEvhmEpRCCju06djHnSkL+E9vxT/FHNE9Y=
X-Google-Smtp-Source: AH8x226b26i+4auXb3R4whDpCmdkJmNfz1m+IgccuzlzH+HnMk8FIJHhL5jNUoSO7nW9qWeCWvuf57H3k8xL4OI3I0M=
X-Received: by 10.101.97.5 with SMTP id z5mr2982602pgu.270.1518588845776; Tue,
 13 Feb 2018 22:14:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.128.66 with HTTP; Tue, 13 Feb 2018 22:14:05 -0800 (PST)
Received: by 10.100.128.66 with HTTP; Tue, 13 Feb 2018 22:14:05 -0800 (PST)
In-Reply-To: <CAP8Gws86W_g4aZWNCUb6f5PJWj_fE=0+Dz97LeV4O-09Wax2KQ@mail.gmail.com>
References: <20180213154641.60555.10021@slab.local> <CAP8Gws86W_g4aZWNCUb6f5PJWj_fE=0+Dz97LeV4O-09Wax2KQ@mail.gmail.com>
From: Tushar kadam <kadatushar@gmail.com>
Date: Wed, 14 Feb 2018 11:44:05 +0530
Message-ID: <CAP8Gws87kR1m7sEFnt-Pe_rJJtN-i1Pg_=Z6V4uWNFwigy5vSw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kadatushar@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="089e082bb7a8b662df056526042a"

--089e082bb7a8b662df056526042a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On 13 Feb 2018 9:16 pm, <kurt@seifried.org> wrote:

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at https://github.com/
distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when
they were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Legal-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

--089e082bb7a8b662df056526042a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 13 Feb 2018 9:16 pm,  &lt;<a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquot=
e class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">This is a confirmation email sent from CVE request form at <=
a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">http=
s://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (ass=
uming you filled out the CVE form and want one, we can&#39;t use the data u=
ntil you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div>

--089e082bb7a8b662df056526042a--
