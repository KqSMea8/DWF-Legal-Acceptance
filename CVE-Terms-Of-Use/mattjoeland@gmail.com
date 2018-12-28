Delivered-To: kurt@seifried.org
Received: by 10.79.205.134 with SMTP id g6csp2087695ivm;
        Tue, 6 Mar 2018 12:13:12 -0800 (PST)
X-Received: by 10.176.6.197 with SMTP id g63mr11281680uag.72.1520367192402;
        Tue, 06 Mar 2018 12:13:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520367192; cv=none;
        d=google.com; s=arc-20160816;
        b=G80IVoA5T0Gao2UwByAEtifu8TBWdoP6990+t4GpLeErxkURT7ECkIl6m1nCRg/BpK
         pJT4BWhKp88Uufg7/BOmjXyJdVts3chuKZ34RXnidI9P9vZuhVPCoc1O2jeL4Mmi4UuA
         si3NXML0rWlI7oHG/QEvBfQkVC6vFPI94M/k0FDJMgIqUBQ+6eLOM5s2PlrWmqc3YSCs
         eFGbtZqt1eiLlRO5iluPLfphmrBhnbWcEUu1ziXySTowark0Tv1l463GvVuKOuuTJBLa
         kmpLDUijDPXbvZvqqGBZMVQP0jCA4/epNCfLT9qngzxhuboEmrCm8of+JhvCdZ1kAk0M
         2cSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=JIhpKeZ6Y9T4tFcue9wKKIdh27Z+9gmn4bsBnJzmfOM=;
        b=VolzB7uIv8wOCmk9bIwtygQFCfiSLgT5kewfOKhgTwo3tse0TP9aGCE4gzFf2VVE4t
         HNWheyLoWeElExA6w6BpBqetnRLUj7HJm33w6yJu21EoIHOdWxCoOL5+AdSQupiTr1tX
         kY514VgruaeC8NI+nePyf9aEWXpGbJQeUvAEU6nZdj7/ZbToattP+DQ2kCxmFk5RKefX
         EQ2PIaHecUANEggHQ1AM9emWUJ8aqL0zE/NHMOkIJ/9oEMtnC8L9t3+U5qXTkoqyE03G
         xRmbDlPeLUTufLzSB4sGADuZtH4ZzU2xzKnMgXMZF/UOUidcyhdvR762vZDgErHS1tUL
         UJqQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lq6CEFSd;
       spf=pass (google.com: domain of mattjoeland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=mattjoeland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mattjoeland@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 129sor6254799vkf.37.2018.03.06.12.13.12
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 06 Mar 2018 12:13:12 -0800 (PST)
Received-SPF: pass (google.com: domain of mattjoeland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lq6CEFSd;
       spf=pass (google.com: domain of mattjoeland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=mattjoeland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=JIhpKeZ6Y9T4tFcue9wKKIdh27Z+9gmn4bsBnJzmfOM=;
        b=Lq6CEFSdOPSNl9vkxrvhnAE/JbQxPMVOeQYqX17ZWvGImUze/jBDJz7MOidhRVz75m
         tuPb+dSi7tIDfsWKvqy2m3lkYIbjcF7RKVKqmh8+Ho/YuVYcm0U9a5Xzh6M0G5Sm3OLd
         Rq1wl0HeLbauSYI29suQ5OeMPpztDJh5OLYt/9h9HEk82CHU0/+bvP4/7OKy6qNkzMqn
         IZl850qCTK6+1eVL3OS/07Z11DbUr0Y1nfwWI1vBWc8V3UUyhFXxlP8yCWCg4UmDrPjX
         xhu5KLktYDAB5u55lvoEWWCAOfTI+UVucr3eRyobafnmDzsa2dTRvx23bNDwfw5/k6JA
         seYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=JIhpKeZ6Y9T4tFcue9wKKIdh27Z+9gmn4bsBnJzmfOM=;
        b=mWu3Ca7x8Wq8pcPcGY1h2HCc33YOw/2Qt2OY9pyCcLrX3EhHVUG1wJ59v8uH+2rnz8
         HyYggRRxHHdVwhVPePdfjnvbKDC56YLxDXfj6K97GzKGEnf0Y3vazmh/cenl5e/+2Rz6
         mpSe3ktp3zOJk9srS6cagBtTzFbCMHbJtBa1LQIKZ0yoU1nN7u2Drx8b6RZov2zgMMhl
         i5tiVL5frSQllmnbxv7XQ3nD1I+mPPorjj7+Bf0/JIa+/cqqYCxot4ItS2Sp9KO3OMLy
         C0dRVjPnEPYzRtC0OIooZH1foENssPNlhYFLe5q6J/2ggEcJBNFI0FyJlDoWadq41akA
         JV8w==
X-Gm-Message-State: APf1xPBt0UZXgkztw6Mcyl9NIyGUXeGLOlleJQANOUGlgK3R7kQCRvjC
	c8YBLvzttDyo+22goayUXxgj0H8EFrSnD0mMEZQ=
X-Google-Smtp-Source: AG47ELsmoY9t5C1Jtq0XpbMhFNCkV1H914bQAnYg/YyT2Xjcg8DOzjQEdrASiqMXA7U58+7wiVTtDkcFpfWeXLSVSyU=
X-Received: by 10.31.189.12 with SMTP id n12mr13831631vkf.3.1520367191826;
 Tue, 06 Mar 2018 12:13:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.196 with HTTP; Tue, 6 Mar 2018 12:13:11 -0800 (PST)
Received: by 10.159.39.196 with HTTP; Tue, 6 Mar 2018 12:13:11 -0800 (PST)
In-Reply-To: <20180306195320.24677.42353@slab.local>
References: <20180306195320.24677.42353@slab.local>
From: Matt Landers <mattjoeland@gmail.com>
Date: Tue, 6 Mar 2018 15:13:11 -0500
Message-ID: <CACoyvjoy+MW5rKc+yUN8LxRdf_MUjJ9ON9jiEA3v=2H_qgH2hQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mattjoeland@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114da99e65a4110566c412b4"

--001a114da99e65a4110566c412b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Mar 6, 2018 2:53 PM, <kurt@seifried.org> wrote:

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

--001a114da99e65a4110566c412b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Mar 6, 2018 2:53 PM,  &lt;<a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">This is a confirmation email sent from CVE request for=
m at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank=
">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Us=
e (assuming you filled out the CVE form and want one, we can&#39;t use the =
data until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div>

--001a114da99e65a4110566c412b4--
