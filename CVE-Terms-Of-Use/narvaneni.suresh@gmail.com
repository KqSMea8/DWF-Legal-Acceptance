Delivered-To: kurt@seifried.org
Received: by 10.79.210.98 with SMTP id r89csp688230ivj;
        Fri, 23 Mar 2018 10:42:15 -0700 (PDT)
X-Received: by 2002:a9d:2564:: with SMTP id j33-v6mr15479798otd.398.1521826935115;
        Fri, 23 Mar 2018 10:42:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521826935; cv=none;
        d=google.com; s=arc-20160816;
        b=L+jKNrrWRR5YZlsjD4pOKquf7A9Age9slKNQZ96XgWp5i8Ao4EqjogLBF8JYcTjn8v
         U/RR1PHW7BLy8wq9Kfj22LOQwMIi1ipaV1o3JGJ8PjaYWLsPRj9qe5uviSgBZ9jGKCiZ
         8nbDdQR5GCAfPrTYeK5IEfBPWmle3UttNMBB3sckcnkB69Rn3kSgZX1GRhr8L/UoqLZR
         NX0Jk5Hr4y1HmnHcbV0VfE3pmS8mi0cABjc0sHIGuqeb34kGuxFZL97pyYJXpcMswJBF
         AdqF+LAzHQAer/vzMYh+QOwyumSdEu84morF5a7q7SHYkuHeN9MdRS0v9ctuk8bVZjDU
         +Ahw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=TCAp7thjWWXCUq8cLlswms0euOjoZfUBJUtCwV0LBPo=;
        b=cSJ6DKKH9gShwcSTIxCRUpnhYUhLiSZnPkc6ZNMQPh+MPVAQQ0TtVtfWNwyfpy1ZlC
         9eIp1IupZxMTph01XqPoS9MPt6tcuGcLThVX0JiwbwUhyvYqiYVsoeeobNGEwu0XEaxf
         8hl53lqk30lVVQ7cgPcAaTpv7wobwgIqul/fHkTtndZAs4X45a2IXfEiv1R5cmC4Gi9g
         jp04P3xYm7ByI5IY7qviKx2wwa4j9VqE2nfOFKIWazkU/0cdew8x43+NEhvNSITcpuHO
         efwu9iGWU4MYbHwVogCurwtomEzH3AeFCyNWbLNvy4Mgravdh9QThrPrrfV2iYW0VGgN
         IlSg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EfBLrncK;
       spf=pass (google.com: domain of narvaneni.suresh@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=narvaneni.suresh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <narvaneni.suresh@gmail.com>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id z20sor3590113oia.0.2018.03.23.10.42.15
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 23 Mar 2018 10:42:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of narvaneni.suresh@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EfBLrncK;
       spf=pass (google.com: domain of narvaneni.suresh@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=narvaneni.suresh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=TCAp7thjWWXCUq8cLlswms0euOjoZfUBJUtCwV0LBPo=;
        b=EfBLrncKWZjPS/JCJu4CuJc4VaTaDNXVJqEvG4ue0kitE/vqcjJPNnLg1NPSAOJxcv
         9x/7z3FJJoyH8KqxW7G0nm4zoJfhzMnXoZvDFKPhbpNFs0g2wtw3/ywMaoJpXhOYesk1
         9F0FC6szODNWCyJ08iNs1NJQUD0a3ZwKX1O2G1OwmVCOiXTldiEIwU9PkNj5jYx2AfDx
         WD1Hb0X2Hc0NvdBJ8WPb/Qy+t8g4UJDwrqYIebWJo9U04qPJ85ZZzD8ii/LsIdQHDZtR
         1XcTDE4hraM+/EuRhcwDcLLrfn8KbgSCL0Hs1G9CaFYecEKsTyTPDDH4VcEM246rtrmU
         9K7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=TCAp7thjWWXCUq8cLlswms0euOjoZfUBJUtCwV0LBPo=;
        b=ayKpYKGfWthXhU0KwIzhFPct5hHxyUpcx4u8YDShUkJcHh9n8+kOE2LrFaIsgx0tuT
         VJ0PzKthulHdWgkpEb0Q+AaVRFRBIAw35OZnMXDmGdIwP2OUVMgc0cZA8LkeN5mQ4kr5
         2QQUNOEQUcuU5nqYqfLZo1j8eOIe8UkRkLmFHYT54hoJHzF3+gNY4A3XErwKx34/neIJ
         DK4ia5KephdPRw1DJ23L4DU2+MbkXNthekQL4J01fIl/7cQ3phxsskjN3iSjLgDaepDm
         uvBnRUsq+BMphLDW3KaIGSYFNW1GHhNaI2fv2EBX/QbvVuB1cxhY69h0vwk3FO2m8fhl
         d8aA==
X-Gm-Message-State: AElRT7GOeexWQLWy8UqfAdTo6c9VGvCrWXuwbi8/5CvR0QD9mAHMMuGI
	PKyvr4QvbTepzZrVmMihGJqoUGLZWHJQO4cNn3sdqA==
X-Google-Smtp-Source: AG47ELuDIue6ISUrh/Qk0kMcI/2Qs7LUU/obEUm3feQEQ+OOdODWkUcclEjsGMo+wJSE+DRvqeqOtRaHc/cX6M4yrrU=
X-Received: by 10.84.68.11 with SMTP id k11mr8067436oiw.357.1521826934522;
 Fri, 23 Mar 2018 10:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <20180323160717.24748.18689@slab.local>
In-Reply-To: <20180323160717.24748.18689@slab.local>
From: Suresh Narvaneni <narvaneni.suresh@gmail.com>
Date: Fri, 23 Mar 2018 17:42:04 +0000
Message-ID: <CAH_foQ7Uoyyffa-dpvy696QS4KTs58Q6VXoePrGzwTYY62ZXmA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for narvaneni.suresh@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f4f5e808c6f8d78749056817f14a"

--f4f5e808c6f8d78749056817f14a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, 23 Mar 2018 at 9:37 PM, <kurt@seifried.org> wrote:

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
> --



Sureshbabu Narvaneni,
Security Analyst | Bug Hunter,
HackerOne (mrreboot/mrr3boot) | BugCrowd (Mr_R3boot)
Mob: +919987942136

--f4f5e808c6f8d78749056817f14a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept=C2=A0</div><br><div class=3D"gmail_quote"><=
div>On Fri, 23 Mar 2018 at 9:37 PM, &lt;<a href=3D"mailto:kurt@seifried.org=
">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
This is a confirmation email sent from CVE request form at <a href=3D"https=
://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.o=
rg/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fille=
d out the CVE form and want one, we can&#39;t use the data until you accept=
 the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-size:s=
mall"><br></div><div style=3D"font-size:small"><br></div><div style=3D"font=
-size:small"><br></div><div style=3D"font-size:small">Sureshbabu Narvaneni,=
</div><div style=3D"font-size:small">Security Analyst | Bug Hunter,</div><d=
iv style=3D"font-size:small">HackerOne (mrreboot/mrr3boot) | BugCrowd (Mr_R=
3boot)</div><div style=3D"font-size:small">Mob: +919987942136</div></div></=
div></div></div></div></div></div>

--f4f5e808c6f8d78749056817f14a--
