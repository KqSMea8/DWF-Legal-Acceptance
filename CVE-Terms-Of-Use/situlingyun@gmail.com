Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3564359otd;
        Mon, 13 Aug 2018 14:09:28 -0700 (PDT)
X-Received: by 2002:a02:c617:: with SMTP id i23-v6mr17102695jan.75.1534194568200;
        Mon, 13 Aug 2018 14:09:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1534194568; cv=none;
        d=google.com; s=arc-20160816;
        b=Bd2TiedmeSBhsweLOIixt0O5NP5t7z0gWy/H7vNZ+hDbDyi6ASy22klsXE2SujblEC
         zxQykVvcs0lJrts9P8u9Blo/TtDee+a1xk1v/4TVkDoM7KGgA2uNFAVBImFMWeLAZ39k
         q1sllm8QpGAxXMdpimqZjgFCHYYXTteUymsJueRrBfeTb7E5JLUbydAF+QHSekrE02HT
         yTzFwn88KFL3343VHCfiWJliOkyKRojVne9SwigduJsOTH6OpwV5KOkDQoXSldK4ffAT
         CU/og7ugx/AKZJ5QCHgYQkbYtTZhzJOdbJ7K2OfXWC3cs9UcxTmB560beWXSZnbtXoah
         g8mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=TZfqOJB0o+cTZVcO4slrYhcqm0npkzURGTXSJ3Tlntg=;
        b=iPcqNwp6t4TfY7VMQvrJVZJlYl7THSDXF13EOFBDO65/FN3tHPA0DpSSsOKdv4QtIe
         eFBBvKgRkoJX4NXjA3uRmYrjrpxUIhB7daoRKml+2jIT/FVyJVZdjYyGdT2bGt0V8ziA
         FROCfttKvUm3VWhEtLVvflSXdVYUvEIWa+VZVAWElZOFZ6o8W1ig3wV6GIyWed7IsSXV
         zxqNyqlIt0VPyXepAJRcrBq8iuVRc/h7UPT4a0dAtePmoZuULmHp3keDScTOd5vFC4aR
         oTjuDeGZQxu64EZEGkZvfF6XdCsbRgZwVGXT37oyzoOWSNBmd/dWVhAMVl0arV1wUOPL
         M3lw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W3aKdGzE;
       spf=pass (google.com: domain of situlingyun@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=situlingyun@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <situlingyun@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a29-v6sor6301830jak.45.2018.08.13.14.09.28
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 13 Aug 2018 14:09:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of situlingyun@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W3aKdGzE;
       spf=pass (google.com: domain of situlingyun@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=situlingyun@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=TZfqOJB0o+cTZVcO4slrYhcqm0npkzURGTXSJ3Tlntg=;
        b=W3aKdGzEWpOyCbqVAessND90vMuxVZO4Zht/Uu0416Tjx4kX9CmiiYfgNIfF6DMPZN
         8A7PNvoJPHLzn7fjUHT64XJE7jKz5YlXMKSaVntYiSPk4mOHhld1B3+FS+17nKQBvrmY
         4QeAA4DzT451xf3sjALIajCPl4s0iQQBpe8bE6RiIuN84Trlj+uylXJ1NWT387llrWb1
         hi7NiAL4lr3DK5fuvbC7XKejyc2xY8tDikFMbSO4VITCuJ9VhL6HnA+lPPeEuL6pBcZA
         0DNp0wBfgzSR9LZFPpcwi7taim7E29HMd1SMEV2dscZGSYPzM9SwkKPrHYs7uuGF/YrM
         Sh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=TZfqOJB0o+cTZVcO4slrYhcqm0npkzURGTXSJ3Tlntg=;
        b=Uln8Ab/uXpTHX64rV2hdRrIJHt9c/gF7KvkuchWnKJr3L23Z9EmcjKbg/5+jQ6kpdA
         lNQ9GJZTNPIv5xD4a/BYWcViSDBHeYwngUaqUeMOr35ufgAK/K2+4d1KcQh62X6QE7+l
         LLJcdt6mG5+VlnGsLtAaXLrtsj7fPuyHd+Ouy9XILppC5GB8LtmOcjPweIkALeH51O19
         Ug0KOhWmKgUuZR5n44pFMj71xU+K7/mj2fEh3LXJlTL8S9EjSI6EkNpDSqQ7YMXzY+BB
         CiPmJAu3el/R9bNSZOUEfUZ4tIvLEEWiQM/glJ8d12lQe01GRQ9JKiXxP2X67GsGzI21
         SzXw==
X-Gm-Message-State: AOUpUlGlYRAwskW4wPxNsMzjt6M4GETekt2daZzn7y2nr6MS/VBUPwpG
	6wNw5WlYV7ItmXxiuF10UC/4rzmSf1qs5E3EX4a4jw==
X-Google-Smtp-Source: AA+uWPwtD0sRD0CNwky3EIjE+cO2sXu93V/FcF7AUFSGuUMQpxVM/q1OpBdOXHvPYAcCNCT5bzCr7XvFXIPKLCGbgRI=
X-Received: by 2002:a02:4502:: with SMTP id y2-v6mr17321604jaa.11.1534194567640;
 Mon, 13 Aug 2018 14:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <20180813210011.3797.14797@bigbox.local>
In-Reply-To: <20180813210011.3797.14797@bigbox.local>
From: Lingyun Situ <situlingyun@gmail.com>
Date: Mon, 13 Aug 2018 17:09:16 -0400
Message-ID: <CAAF8OCNA0uTVzcyi7=EjRStyu949sTnRdE1iUs7MRPWOMSjYDQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for situlingyun@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000387a70057357827b"

--000000000000387a70057357827b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

<kurt@seifried.org> =E4=BA=8E2018=E5=B9=B48=E6=9C=8813=E6=97=A5=E5=91=A8=E4=
=B8=80 =E4=B8=8B=E5=8D=885:00=E5=86=99=E9=81=93=EF=BC=9A

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

--000000000000387a70057357827b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I accept.=C2=A0<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.=
org</a>&gt; =E4=BA=8E2018=E5=B9=B48=E6=9C=8813=E6=97=A5=E5=91=A8=E4=B8=80 =
=E4=B8=8B=E5=8D=885:00=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">This is a confirmation email sent from CVE request form at <=
a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">http=
s://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (ass=
uming you filled out the CVE form and want one, we can&#39;t use the data u=
ntil you accept the MITRE CVE Terms of Use). <br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div>

--000000000000387a70057357827b--
