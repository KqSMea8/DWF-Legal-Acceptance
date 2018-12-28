Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp844792uaa;
        Thu, 6 Apr 2017 13:06:37 -0700 (PDT)
X-Received: by 10.28.20.202 with SMTP id 193mr19150488wmu.43.1491509197350;
        Thu, 06 Apr 2017 13:06:37 -0700 (PDT)
Return-Path: <adrianbn@gmail.com>
Received: from mail-wr0-x22d.google.com (mail-wr0-x22d.google.com. [2a00:1450:400c:c0c::22d])
        by mx.google.com with ESMTPS id l22si3967963wre.304.2017.04.06.13.06.37
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:06:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrianbn@gmail.com designates 2a00:1450:400c:c0c::22d as permitted sender) client-ip=2a00:1450:400c:c0c::22d;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of adrianbn@gmail.com designates 2a00:1450:400c:c0c::22d as permitted sender) smtp.mailfrom=adrianbn@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x22d.google.com with SMTP id c55so5310324wrc.3
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ZX1GZQsstIMa3cnYTfzTfxWjQHbi+quKgcQUxQoUfUE=;
        b=J0e1qdQLLcUy95HorrX/cPl2DbR8a5LR0OUolhqtWwBFVp3P3ZAissh1101I2vxzGW
         19nKloSpbLp7X0SFKievxv65/Jkx7rKQCvfH41Dmi+PdsBQXCC7ecGBuO4SOcMg/yCrP
         8YQxrI35F2tLGVeOfRx2PZZQDNgtANeAbJJlkMQV50dPpFibnqY+9vFCexTKJTe5bE+Q
         UN5EkkCup9C6lQSaKalrtK7MoaA/roncfyM+SPawW2cu2Y+UqR0O79FOWFM+MVn2UolK
         Mgs4HS8ZTs65vP/BUeh7j+zw8c8QzPFAfZwKkAzTCT8rUm9/cixc61f6lYXgOBF/4FHi
         /DQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ZX1GZQsstIMa3cnYTfzTfxWjQHbi+quKgcQUxQoUfUE=;
        b=oU3DDMWdWadr0JYQw8KV1FPI7sDA//XiyMVYNeNA8yt0+uHXfowxaV0J8WM+aY9+2e
         DU+2KIxYghhY7SvJS9c21O6M34HyWEd35tmfil4q/423J6JQZnf/h/GVwoWSB63jnOZ+
         f+JfKE2iEZbfVDi+5fKSu9J2hAxQzOvElL7MNm0DT0hq4xEHjz0ATgMTNVKY1/yy3sdg
         rAd8g2AO/4TTOQFreyZ8CEZmcC6TSNj2bM8GiJVyEKPp2boDMxUCweLhB8tl0X11Js/s
         GH4NVhMSo3sLaOqtTVWlUnOFoYe25ldZs1MmzeNUo5362Ht7IU1Akx6uPMBp88O1A+09
         XTmA==
X-Gm-Message-State: AFeK/H16Mze5v+Q9Qi2KN7I+Bj+BHHQBgkT4U1XNwyL5aHNrhXyX0KKxH/GB+KhFwGIdO/q9LdAPC+1X04k+aw==
X-Received: by 10.28.9.15 with SMTP id 15mr26948202wmj.83.1491509196820; Thu,
 06 Apr 2017 13:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <20170406195634.4090.97830@shiny-2.local>
In-Reply-To: <20170406195634.4090.97830@shiny-2.local>
From: =?UTF-8?Q?Adri=C3=A1n?= <adrianbn@gmail.com>
Date: Thu, 06 Apr 2017 20:06:25 +0000
Message-ID: <CAFDTedq5Z_Z+BQoZPwAP2uYpn-teKaNfvBVAv23AsR7F6iKn-A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for adrianbn@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114447dedb18ca054c850bfd

--001a114447dedb18ca054c850bfd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Apr 6, 2017, 20:56 <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a114447dedb18ca054c850bfd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.<div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Apr 6=
, 2017, 20:56  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmatio=
n email sent from CVE request form at <a href=3D"https://iwantacve.org/" re=
l=3D"noreferrer" class=3D"gmail_msg" target=3D"_blank">https://iwantacve.or=
g/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can&#39;t use the data until you accept =
the MITRE CVE Terms of Use).<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" class=3D"gmail_msg" target=3D"_blank">https://github.com/distributed=
weaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
MITRE CVE Terms of Use<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
LICENSE<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
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
PURPOSE.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br class=3D"gmail_=
msg">
<br class=3D"gmail_msg">
DISCLAIMERS<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" class=3D"gma=
il_msg" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-=
Database/blob/master/TermsOfUse.md</a><br class=3D"gmail_msg">
<br class=3D"gmail_msg">
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" class=3D"gmail_msg" target=3D"_blank">kurt@seifried.org</a> manuall=
y with your question/concerns/etc.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
</blockquote></div></div>

--001a114447dedb18ca054c850bfd--
