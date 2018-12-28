Delivered-To: kurt@seifried.org
Received: by 10.176.6.200 with SMTP id g66csp796205uag;
        Mon, 19 Jun 2017 18:51:09 -0700 (PDT)
X-Received: by 10.55.99.76 with SMTP id x73mr29693794qkb.219.1497923469581;
        Mon, 19 Jun 2017 18:51:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1497923469; cv=none;
        d=google.com; s=arc-20160816;
        b=injgG4XGzgOmop8oPObLfFo7hMbov2Oh6YtJAPfahD7m0gitQBfcxUR7gO5ckMfnf9
         RUZ/48GiuOO2xNsXH0NHS7vDmFtWUcVhlExUOTOAkHIMF8L33nk9Ok2UHmQGTDJYCPms
         cnobiSU+Q2OZOziSnaziA+HJ6h6NZKTD/td4fyKcCtlLHE/1QtFCkOEzaWPPjVAihY1J
         dDhTQrcCR0Sr6BfbyXAKVok5OyE8n9zOirF09JNGM7sQ5ZTc/TE7oQeY+PodYr8oNWPo
         SBuSXse40rUD9ihULU/pwoQ7QGgil0Dg788DJBlFq9apYCDztsteNkMS4oJBgQXqZY+V
         PGVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=9uRui3ZTOOMPh/1K8CgvZeFhhGsm7IwYYhCsFDlexW0=;
        b=D3n5LG7G3yvohLDWo2S807fC+d6SsP/m15+diwFHjnke7XQv3j8puZP0pXSvTAuk04
         QKzkqJ2MoOsIV4WkG1N7Fw0YjKZivvHGl7DPLJueMGn1YjQwyxNAa/vTWmUEE2RrYjij
         k49kVbw7YH7GiWueZ7l1cSjTPY3lVGyu2e+4yhfG6185e2/F6jT8blezQppexoQR9ZSZ
         S+Yurfd1Qj2NP+6Uw0MvjChOohZN8iMaQx+dKYKQSouErtGgcUpIJAfKChfvgVXyWZ5P
         shrjKqqtceKSQ5VSDY3AakpoxacwnKnH/T4ivp46XAZ+tOTuv9rLMcQxODWyDBoaFdlK
         WO5g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=t9s3z4rm;
       spf=pass (google.com: domain of nafiez.skins@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) smtp.mailfrom=nafiez.skins@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <nafiez.skins@gmail.com>
Received: from mail-qt0-x231.google.com (mail-qt0-x231.google.com. [2607:f8b0:400d:c0d::231])
        by mx.google.com with ESMTPS id g52si10855432qtf.353.2017.06.19.18.51.09
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jun 2017 18:51:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of nafiez.skins@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) client-ip=2607:f8b0:400d:c0d::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=t9s3z4rm;
       spf=pass (google.com: domain of nafiez.skins@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) smtp.mailfrom=nafiez.skins@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x231.google.com with SMTP id u19so123733908qta.3
        for <kurt@seifried.org>; Mon, 19 Jun 2017 18:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=9uRui3ZTOOMPh/1K8CgvZeFhhGsm7IwYYhCsFDlexW0=;
        b=t9s3z4rmrd+/J0+Gji7PVxt9pemU+8MsC7brp3HPBQJsyW1EYSz7+d1r0G3PIReSdo
         q4qiTprRfGne4P0B2ysZXlcOO+qAiFbNliMyZ1toVozGt+yNFc4VRFFvLNcgKlxYcd7h
         Z/njV0io79iDXDi2h7V8LVtQjB3Xz6ts83PonhYFOpMrtEm09z0j5/COHTv/9VBB8HsO
         Wgwad8tU4bp77SkcY/ECIBzsBx3aWsUR3y/+xiixGrr6q4hWKt4JBG//kZQNjfOfj856
         jdemscTHaBOECS6sukA1EWQs8V8oKAoOM7zJihF0MekIk+c5qUoTXHfVC2L5nEpyrLPa
         AC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=9uRui3ZTOOMPh/1K8CgvZeFhhGsm7IwYYhCsFDlexW0=;
        b=BUsRR2FEjFFWhMOeIiHkRdzE/uu7PM6YdxwDjj+ioqjMilfGB8VAusnqwwkdK+gODz
         EX4M2F0O8FrPy0dEcOvXxp6Z6petNdJOOJufFlE5bB+Diw7u0KHKA4NJkUtQj2NnNKde
         rxd0w6Jiu80F6Jl+5CYaD/RB22Rg36X+DAbkhntnn61knYAJOgyIruBQCpcxzRGP6cDu
         woptNxsRdSkpVHQ44R+WQsOTu2LfQNcMpBjRAOb+SPR9vQle5thvGALPexeUq2xNH6Z+
         lW8/9or4xcs/Qu6IAfawMdOzGElcY7LohIkG9A7lIDZvtToA0QjJb/jr97j7+ifMd8eD
         dqkw==
X-Gm-Message-State: AKS2vOyPeETe5D6puwIYlawwyjS7NgdHmQvmhZhNHIOQBpZgnNzaeQVe
	CtnqcNvWIJarmu6wS4KtfvB7ISSQmw==
X-Received: by 10.200.61.153 with SMTP id v25mr33226848qtf.160.1497923469091;
 Mon, 19 Jun 2017 18:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <20170620014515.46686.29308@bigbox.local>
In-Reply-To: <20170620014515.46686.29308@bigbox.local>
From: Mohd Hanafie <nafiez.skins@gmail.com>
Date: Tue, 20 Jun 2017 01:50:58 +0000
Message-ID: <CAFkjv+tdKj3iJjWozQdh-r1ruc7wcq45_H1nPYnj_4sQ7mNBpw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nafiez.skins@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403045f119246a90205525a7c2e"

--f403045f119246a90205525a7c2e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept


On Tue, 20 Jun 2017 at 9:45 AM, <kurt@seifried.org> wrote:

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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
> --
Thanks,
Nafiez

--f403045f119246a90205525a7c2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>I accept=C2=A0</div><div><br></div><div><br><div class=3D"gmail_quote"=
><div>On Tue, 20 Jun 2017 at 9:45 AM, &lt;<a href=3D"mailto:kurt@seifried.o=
rg">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">This is a confirmation email sent from CVE request form at <a href=3D"htt=
ps://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve=
.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fil=
led out the CVE form and want one, we can&#39;t use the data until you acce=
pt the MITRE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature">Thanks,<br>Nafiez</div>

--f403045f119246a90205525a7c2e--
