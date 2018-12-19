Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp2720678otb;
        Mon, 17 Dec 2018 07:57:58 -0800 (PST)
X-Received: by 2002:a19:7dc2:: with SMTP id y185mr7374850lfc.27.1545062277891;
        Mon, 17 Dec 2018 07:57:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1545062277; cv=none;
        d=google.com; s=arc-20160816;
        b=YVeSsPsd4OaYomLH5AzN4Nzaml+h4h7UVvvySM7CZ1OrkACvM8Jyltrio3HP95k/ZB
         HHMJIfX0pz5JfWmkvtg/VBL1n+LpJrIJSrt0k1fkIMGmO0n1R/SibQPC7PhJwv6Pt1F3
         O7me+E/QessnokXpl2+UpovSz1gjUWX2CHg8LQUsmgly/ZvS/7flSIfaP/4lXGcOEwEK
         U23gbvzuNi2Y/hLp7BgvkklHhx1S6ra9EBDehd4IcB3ot45/Z5Tm9iGcyzfxWzAM2vbA
         hi7kXLGDDuXOZFJdblxDT9E2EAf8ke8Vog6PU5jieWkMsPOYtWoxehnrZ+0MHbW4lxXZ
         heTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=bfxO1kzWx+UB5NSaYSrJbCkW/mNBrUH+lGMrS/F+zZ4=;
        b=EB/VF2SuSyTC2f+4rdaHw0PkkvvA52in/ga3yR9Zfj2LKALWE7xLXZFuA0/sYd1hR+
         gji2AzKyVVlSdLDEGe7cH4+/UTP04UK5N0wRze8Tvp3+0ljFdg3dh0n6CQZVHVsq55Od
         wXiMGppElSPoZNKE0X0P/WyK41AflLeZoVgQdn47wW+zv0/ghh0IYBT9q+EBWGaAkdFc
         06B43Eekxthe+N6i14/RtXONc8Vnoz4CwglUMX8Dz+Q9kXS+CHIqlbOn3d1j3fkAvPFs
         XlkjXnZFiDQqNVAC//gGWVYqOVK9HA5sQInDqb5IjdrucblpixjDPOi7I0qeH7YZdVCz
         YQnQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tKlYJmfd;
       spf=pass (google.com: domain of jupitarsat@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jupitarsat@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jupitarsat@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id w6sor3449559lfc.24.2018.12.17.07.57.57
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 17 Dec 2018 07:57:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jupitarsat@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tKlYJmfd;
       spf=pass (google.com: domain of jupitarsat@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jupitarsat@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=bfxO1kzWx+UB5NSaYSrJbCkW/mNBrUH+lGMrS/F+zZ4=;
        b=tKlYJmfdtH4TJAwfwtZo29Kdq2quwFgWaHyFXIAGakbu91jYacVNzkQ0wzJilrb33M
         TlftGsFRjfVGq7/VAMgsX86TjXuXyRJvsXgj6YX9iz5lL+bj8B5XYvYDRyu6YjvyM6yP
         gmvSB7XY5E8AyjwOratl21UMTiMPRy2CdBBuUd4nwmR6XJfePMLSWDDVtcuO3ElIpNIU
         fnFOWRakWUcg9goFa7m10VXbXZFwyQQYnDs9AL0QijE5AsErFssXhrhrWrbGe6LnPMnL
         4TeVLcP4G/xm2RjsMehDhFFMZxZKtScVmULjPNnuOUmyPn3rcZ35RunuVB4b43lz47ai
         3ebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=bfxO1kzWx+UB5NSaYSrJbCkW/mNBrUH+lGMrS/F+zZ4=;
        b=HucWAfBUfNuHmvN1KmlCMk+aNqwAKj2k+BNPDINE4dCTf1tYOsPQxdhUyjEa6yBSy2
         XFjneqL+lRZUKqeGB1sxVR+/XpfbmtH+4Ze9W9f55p3bQLAPdp/L3xSxOW1N738shiht
         nQGxoon43HjObzwO+Y++6r2tLtMcA9s7XZdf81sVEh1hB1vwk4B4395eqj78MC9lX99s
         A6T15wi9UumjjOGMbrOY0v6TD6S3UsrTQYTWgqwLaEfWuZEbVY4b3fnAFuD5I1mFhssq
         jSuiAx485FwMJI+gsfzfLQkXb8uX31E0ePz+FaE6xT08KGaAG4AGKxKFpompdexQkGgQ
         AI2g==
X-Gm-Message-State: AA+aEWZ+f6sMupe6bBciePWrDraIVwCCot9XSfIYSJ5KkePWiFPiFnRo
	fDUg3rE3TWGwzOQBRxg8AF1ymPeir9/kJfLL57HVwQ==
X-Google-Smtp-Source: AFSGD/Vrkhv3Pjz0aXcKlZKNAYnFMUm/Hs9bAjcxSPskqL8FPms8RrpUqSjR3DTD587dFzOxnk0DRxwHc+4VH2vOfHc=
X-Received: by 2002:a19:2906:: with SMTP id p6mr7456479lfp.17.1545062276981;
 Mon, 17 Dec 2018 07:57:56 -0800 (PST)
MIME-Version: 1.0
References: <20181217155653.4504.98240@bigbox.local>
In-Reply-To: <20181217155653.4504.98240@bigbox.local>
From: sec0x resech <jupitarsat@gmail.com>
Date: Mon, 17 Dec 2018 21:27:43 +0530
Message-ID: <CALVL5=hcbUQY=2n-SJi2YRGFO4LXnEt0RT-e8UFSHfpAnTFJaw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jupitarsat@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000002ce6df057d39d871"

--0000000000002ce6df057d39d871
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree

On Mon, 17 Dec 2018, 21:26 <kurt@seifried.org wrote:

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

--0000000000002ce6df057d39d871
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I agree</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">On Mon, 17 Dec 2018, 21:26  &lt;<a href=3D"mailto:kurt@seifried.org">ku=
rt@seifried.org</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is =
a confirmation email sent from CVE request form at <a href=3D"https://iwant=
acve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://iwantacv=
e.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fi=
lled out the CVE form and want one, we can&#39;t use the data until you acc=
ept the MITRE CVE Terms of Use). <br>
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
</blockquote></div>

--0000000000002ce6df057d39d871--
