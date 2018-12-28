Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1001795ivl;
        Thu, 5 Apr 2018 02:51:12 -0700 (PDT)
X-Received: by 10.31.199.65 with SMTP id x62mr13075848vkf.189.1522921872339;
        Thu, 05 Apr 2018 02:51:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522921872; cv=none;
        d=google.com; s=arc-20160816;
        b=VnLHC4W+LIFWENcO1LZwDu3LzQEXwDxsJQYBRkWD+Uqbjolhyl7fodoMZVkLpU1ouS
         LIuXZucon8oksCxujgEDcOY4LATvqMOe71CiKAKaNjVGTywrpPwjVT3M9RLjHMdMR230
         tQ7hq0X8gerABSt3HvqozRMCC8LgJRNjkTlDubnCjQbrOzusrIJRkNuVupA7AqC8VyB8
         0zEik/nS69Lx+xwwT/LhbnAQuc6QzAIzxLVgcU7M7xIQX0x4qfNDOKLhA8iIBvg9a7k8
         B3suNwYMsSE0gD+/TIwYTfd2JkzveI9i3DrF/0QlDVpnJyqdJGGTEeqkBjj6wS3OEMQf
         ClYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=eG4KQZ1tS7TjdaPFRCPDxgc4wLi6bWdhPAiaVi6nUnk=;
        b=qv2izdW7e49LWWVRF0PLzQBY/zwgqUUIxrTG/tMhT5/EYjRdaY+lPwA4UXAqn69SKY
         GPi/JlA9nXMpoRqBmzYKiZZkNU8r5yunK5WzJ+J2M+jdXT/Upn0EYGzLhnurrmC0Ayp9
         9ma8HYiyCSgdU+8Z2hGIYKlcTrJjA2CfVnjqivC+xn05ugaQU2fyD99pMBYD8SYITJBg
         iieZqMrWx9hkrxFYZCoTPP3gYUrJL+M+4+riWSjNWYdOeBEvYRHpMCKmmp19O645D1wv
         bHg6+DLMeREK4Kgv2xM+vKEMYO0RpOD7ctJKDGR9UvErshAqnhCHGrlySjCl4R7b8SG2
         /dfw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NGC0Nh1u;
       spf=pass (google.com: domain of everardo.padilla.saca@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=everardo.padilla.saca@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <everardo.padilla.saca@gmail.com>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id b71sor3080943vke.238.2018.04.05.02.51.12
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Apr 2018 02:51:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of everardo.padilla.saca@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NGC0Nh1u;
       spf=pass (google.com: domain of everardo.padilla.saca@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=everardo.padilla.saca@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=eG4KQZ1tS7TjdaPFRCPDxgc4wLi6bWdhPAiaVi6nUnk=;
        b=NGC0Nh1uzF6lLTQ00kFH3i6WhOYoR/OxLRV8qyPeb92ZiNWoEOaUL3291/2IWiaB5d
         P6Q/Sqg1AjBVlrwDtquWy/Yo9tZF2TRnVG+hV4bKjwsRryl/mnaE/HGseLkR9ePSLhMS
         JgiCjynOU+XDjp6gH6G6KeaI3C5WyIpEO1Zf4/hmPM/KHUS5w2JF+U2j28RN09vfJ8Ul
         Xv5P5DBBhzDFq+EU6WeuaVaA4LrEWw9qouiH4ctO7MNNtcWioJcdfzY4mv7jkyVqcJmb
         uZ9PnM7vc67L9HT39dZmnABJwmShgUL2Mloj4uqtYDFI5GWb3BmMpFLw1U2KID7SjXqs
         o4zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=eG4KQZ1tS7TjdaPFRCPDxgc4wLi6bWdhPAiaVi6nUnk=;
        b=CeCqC/1OAfgC+tS90ndwUBC7QI2a5lZcjwqwt0jiJYaXIWPMDR6l4Eg/ATjt1g0+7m
         Y36GTzdLpNrJqYcm4XJZFk5dr/6dg4LyFJgP9zH2oq5K893qwAiAAuPc35V6el43zyJh
         m9/++p4t5Ty6WgRHCmBii+LEzadbhxmEalG/zu+5OPoUReBxV5898TBV9Z4/ms+eoRQu
         9c326xPj2cbJ56Jc2DnQV9SyVvV0nIMbYOGrP/pTj5gm+IL87Jroy1BTru9l2iJgRFYe
         7ThHZRfHfVv+MqO6cqrIYu+dOndFxK0F9Y8G5w5B8FgYU5S/R1AVhT7lOaKxb9aDawKu
         xwAQ==
X-Gm-Message-State: ALQs6tALEANk7msfvCL6fDG95oGo7AT6YLCH8WojYNwYvKL34Emyej9U
	6ynxqG9lK0MW1vxFy4IhyXGgAbL9deNqwQLY/Mk=
X-Google-Smtp-Source: AIpwx4/08iRAPTnLt1tFnj6y3pI+EeW3fIcDeyLaX1wI8fuPdIHvl2cEdQXBV3s8v48/gULOFXA0kY0u/daPxQZNNQM=
X-Received: by 10.31.74.1 with SMTP id x1mr13098839vka.44.1522921871658; Thu,
 05 Apr 2018 02:51:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.151.11 with HTTP; Thu, 5 Apr 2018 02:51:11 -0700 (PDT)
In-Reply-To: <20180405090453.26722.19666@slab.local>
References: <20180405090453.26722.19666@slab.local>
From: Everardo Padilla Saca <everardo.padilla.saca@gmail.com>
Date: Thu, 5 Apr 2018 12:51:11 +0300
Message-ID: <CAFa20Lx1=vqAyu5vpFGtqRfFq4B7MrHjOfUojBbctodNM+iE4A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for everardo.padilla.saca@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114db1102e55c5056916e1a8"

--001a114db1102e55c5056916e1a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 5, 2018 at 12:04 PM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a114db1102e55c5056916e1a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Apr 5, 2018 at 12:04 PM,  <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation ema=
il sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"=
noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to acce=
pt the MITRE CVE Terms of Use (assuming you filled out the CVE form and wan=
t one, we can&#39;t use the data until you accept the MITRE CVE Terms of Us=
e).<br>
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

--001a114db1102e55c5056916e1a8--
