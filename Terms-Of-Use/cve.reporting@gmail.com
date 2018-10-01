Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp977040otd;
        Fri, 14 Sep 2018 09:11:39 -0700 (PDT)
X-Received: by 2002:ab0:1601:: with SMTP id k1-v6mr4178503uae.83.1536941499112;
        Fri, 14 Sep 2018 09:11:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1536941499; cv=none;
        d=google.com; s=arc-20160816;
        b=npllKzA/moed3iFyFrrZQ4NyVGSMLvKrjGlv4sHzT40EbaKrB7ZubM5K3nTWEt+xzP
         emrOEiqmw3mvGmSiSWwytCU61L1hGPP1Z3SWwWFHPjXOvNAk/o8EFgGKx38joFUW5I17
         aEDvnfkh/tHGqipULqR7cP27L6ZpaNMB9V6SWdalW4/iWphUaBNQ9qXOnj4vLudXUQgD
         +lSIpW4NWc+Q1sXfTAvIQnK7a0+R1OKhubMmZMdS+kOnKkIjdx0nUbv+z0+C0arR2SU9
         w+jVWslvl3N9MmJDFOiFkyIvlUZARHpBG2I4Ko8TOsbY9wVYQqoNNmzDjLHsD0XyCW4Q
         6g+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=eFk4M7pYoZm/DNJHXnxIu1fxkDvO2Tk49IkIcAqN8aA=;
        b=VTt6rRMAP7OUpD44q69Nzop6w5+PTmOMl5nqaBQsan13QbmRPyPk0UH1YfMyKaOuXl
         LI97W/lyeT0elWezMyPISBNUJGuBTSdtHKnE9+WgMzCzo0Vl9yRdUr9FMhF4zk110MUH
         NRJ8pJa1u+sOp7sZh/s6jOuEaust3p2dAbK3sl2DP1rjg95urSFYIBlkvbaphUyPEgcv
         +enNoBQ1fnfetNXDcB4mVcVF/jUXc/DKkoLcPtUN0c7Fw+aSj3jQ6VAdGIPq6PiEOYAe
         P3Ub6RP+FJt7qZT3NzWltr/P0mQQvELtake0Ib/79r8qyz+KR0MDtr9j3CkPdyylL4cg
         vNOA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CsvlxhTx;
       spf=pass (google.com: domain of cve.reporting@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cve.reporting@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cve.reporting@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z67-v6sor1784377vsa.109.2018.09.14.09.11.38
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 14 Sep 2018 09:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cve.reporting@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CsvlxhTx;
       spf=pass (google.com: domain of cve.reporting@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cve.reporting@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=eFk4M7pYoZm/DNJHXnxIu1fxkDvO2Tk49IkIcAqN8aA=;
        b=CsvlxhTxpMm/zy9aSKJZNg4p0hO1peScjlSc1QqBtBYyDU721AFAYpdGtJDKvcC06M
         0BsKTKo1aVKuYhugjHFJ/syoTyXwLiU7hw+HkLqh99N+QUgDXTuD7k+ceXFOmt2W1Jti
         lyJeOx3Xq+a7cRX3o5sP/2xeyLF0r3t6YlkesOTTJdkSIhlhvge5Tjqhi/mhWtQSpFk6
         tqx+z7A23pOCNT3xTM9khEVVC1z+OyCA9zW+Mzh+1TrofhOunxbXrTkS42M8xH2N7pD4
         yG0bgWOWe7CFwIelOldQTRh+jc57DD3/VfEuCYtnpID3/M7aMqtjrvhM7c+CCYnt+U3s
         XVqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=eFk4M7pYoZm/DNJHXnxIu1fxkDvO2Tk49IkIcAqN8aA=;
        b=f8iJf5R4/WCbT2sTv/ZF9k5uUVMLU1IAyhbcZUCI9yx5lcdWNIDqtIdwjyBRtCHXWI
         EesRNufOa4+/1QzrGjXDAss7UENfxbTaFSZxbebmiQKTYme+qgIUOX4lWxTs8efi8CFH
         ln2ZcgaUPX11KRgkKZgqEjdDigHbn8WhZGgfyOb9rxve6VFgz8lwu1TlnV6JYju4Txgr
         8FfpzUftXyKo74EQe87IXxXPYYQvp9YxmCeY/06Ik13QuSQ5M7CsyoYUonq7wqQPyXEl
         gBhbnVppvXJMmwYZV8NtKKxwugptAojGVlHgOPUPRZSrRWPA9NZGafRh0VnYZBsvtY/A
         MF+A==
X-Gm-Message-State: APzg51D7dxKQ+6HnQ2I6okJjbAutQYNi0tWA3ANwbLZfNtuGPs41615w
	J3Hb7NutkJDhCMP6UfTlNuF00M0V+kpSBAilV+pNWQ==
X-Google-Smtp-Source: ANB0VdZp7vgQ3+gwK8r/XuKGzjVxdIctGR3+f93ZWrV2lQPZldtgf405HEzLCh+OQRzJKqEyE9cijA5mIy8f+PYGIWY=
X-Received: by 2002:a67:dd01:: with SMTP id y1-v6mr4256889vsj.93.1536941498146;
 Fri, 14 Sep 2018 09:11:38 -0700 (PDT)
MIME-Version: 1.0
References: <20180914001842.1024.21735@shiny-2.local>
In-Reply-To: <20180914001842.1024.21735@shiny-2.local>
From: CVE Reporting <cve.reporting@gmail.com>
Date: Fri, 14 Sep 2018 18:11:27 +0200
Message-ID: <CABPERdeEn+jJr=sOJGWm12MKHcDzJ2L30fX4Ft7AcQz7wya8pQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for cve.reporting@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000009a5630575d71486"

--00000000000009a5630575d71486
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

On Fri, Sep 14, 2018 at 2:18 AM <kurt@seifried.org> wrote:

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

--00000000000009a5630575d71486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I accept.=C2=A0<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Fri, Sep 14, 2018 at 2:18 AM &lt;<a href=3D"mailto:k=
urt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">This is a confirmation email sent from CVE request form at =
<a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (as=
suming you filled out the CVE form and want one, we can&#39;t use the data =
until you accept the MITRE CVE Terms of Use). <br>
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

--00000000000009a5630575d71486--
