Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp1598820otc;
        Tue, 27 Nov 2018 08:02:09 -0800 (PST)
X-Received: by 2002:a24:b714:: with SMTP id h20-v6mr27977873itf.85.1543334528993;
        Tue, 27 Nov 2018 08:02:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543334528; cv=none;
        d=google.com; s=arc-20160816;
        b=Rtr5aRQbdFZl1futc/8kegI24Msoo9uUayakpSRIoYZLtQtyunrMYGjCJmUprRmnur
         x7ylGn6egsZFv0iYAyctcqI0bCP+i2lPON39NO3jcWZc49mSkL/cTpb4cRwduPkhquM4
         +aGJG0R3dviZbg9EwQKunybEgjDFcROxgDb0KoZVay6UviZaUCVXXJO+Kzt3YdIsmCyN
         MTFdkwss+Efb6ilA9OYR9DnvXEs3AaE2W+ahq/MrspwWdTjc2z/nNnDKrvmT1DO31Kqm
         2WPIxYhuUnb6UDXPDIyxu3fILKIRMJbGHqpC3MunzQbIjpPjRHk92KaoEEdxaYaGeLMf
         +tEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=cK7iWwVwrHnHhSHWHLS02qdJ3yZnHswSh1GJFxLPORs=;
        b=b04m9Ar2OSnT30L6/BufsgvgVMPGUk4DmidE/IQiI20qutdTlY3BP3SRf2g0I1yTSw
         EJpiTB94YG5rIDfDEvBK/oXEwq1drpfD0ke7/6sbH/GxkJbDUKJ9x0csLI4JVFTkLIHG
         GZqWPAtwBMxY2WrKyRGAKht+7AC4g7bV1wlwYDU8p69GqiKeIOzyT3cinmuJgXp7l3IO
         1dv26nR6ZrYZWI7QiHxyEdRS5WlU6I7qZ7eneFT2cQ6i1V42+vSPDl1YCV1CXnCLWuRP
         gErP3viMsPhQQ8/ktgSPQ5uAy7drusqyMJ8TP9PzhMHJZI9f6UnSJ4dXP/hJiPQmlL1a
         2suA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b3YsvQL1;
       spf=pass (google.com: domain of sujendra.m@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sujendra.m@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sujendra.m@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id j2sor2081822ioo.87.2018.11.27.08.02.08
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 27 Nov 2018 08:02:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sujendra.m@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b3YsvQL1;
       spf=pass (google.com: domain of sujendra.m@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sujendra.m@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cK7iWwVwrHnHhSHWHLS02qdJ3yZnHswSh1GJFxLPORs=;
        b=b3YsvQL1Pni8+VEhq3ApwVjum0o8ZwhtRSZ+TEmw/B/wf0gUMGDH+1CHKhhozdPxgq
         M+WmItt4G5JUsfC7F6Xht4VXkXG/Y0n4TmRMNpBb+s1y0lNPLGvzQCVjVsy8pSfZm0Ls
         B6NFWxsGvHUmNcxbyfgOjWaeRpaxVewo8oDnO/fH7pG+m3KUcfiodVR0wqXaDsHDHd8I
         3puU9pnBEk9iLgnk3fhLqtE1hxSk0SJJKD1Z1uSRw6mQT7jAwiytEm7B4QiLl8sF31+q
         a7eai2uBhlzVZi1XOV4jli86IW5hy9WDnmgZ23RaLSXrhS+Y73Iov2G8Be4Iqr7lS4kh
         blnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cK7iWwVwrHnHhSHWHLS02qdJ3yZnHswSh1GJFxLPORs=;
        b=IX0fA/k9rWSIOD7Rua0O0vLNIpaSep0UFVm+fdtgZx1NImaErUohROT5sJGurlxqL5
         FZBpW3P0LQt+5CuQD3NEI7MyyoxmtcGohC8gJiPymTMtD8Xl/dr9E12CIOAp0me9LUKg
         te5IpWJLfg+mFdwl0KY9J8e3tp+ot+wTkgd7dYt3YHfdqkYRlPnvDzZ/ZlFQnMxatMyz
         bdgK5eZYcrwyw1rgsm/oqidlzeVdM5MXuDgXzS8leH2ZWSAWA+kw8Q7/mHDphOXEmWES
         SVUy5Yo6yePokuu30xs3Xtm3DPk4cPesLuU5n5ON1DINcLTnhaoxu3BOnhCHv5hMBQrr
         yuKA==
X-Gm-Message-State: AA+aEWaimAVhdm3LHjSOxHhaiUB4lPWlVdooM2iIC+RKB5+GahMAXo/Q
	mh56Jyc85r6s9b3z6/W6Brp9MxvGTHxy/pVziSldHA==
X-Google-Smtp-Source: AFSGD/WFK4iNnpyIUc8KFCnpKaE7XF5Hhy1UqFr2EMV7I6PAidDB5vm9oDWdWBJHQC8vRKm1C5HT2uJveuxeu4k7GMc=
X-Received: by 2002:a6b:b717:: with SMTP id h23mr24161031iof.14.1543334527799;
 Tue, 27 Nov 2018 08:02:07 -0800 (PST)
MIME-Version: 1.0
References: <20181127154132.36526.27691@bigbox.local>
In-Reply-To: <20181127154132.36526.27691@bigbox.local>
From: sujendra nath <sujendra.m@gmail.com>
Date: Tue, 27 Nov 2018 21:31:55 +0530
Message-ID: <CAMOWvZexPvTCHcQiuuUUzai3vsQRTSeu5G8UKo_TN35a=vHjZA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for sujendra.m@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000004c976f057ba792eb"

--0000000000004c976f057ba792eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept
























*"This is a confirmation email sent from CVE request form
at https://iwantacve.org/ <https://iwantacve.org/> asking you to accept the
MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,
we can't use the data until you accept the MITRE CVE Terms of Use). Simply
quote the email and reply with "I accept" at the top if you agree to the
MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE
CVE Terms of Use acceptance data
at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/m=
aster/Terms-Of-Use
<https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mas=
ter/Terms-Of-Use>The
reason we use a complete copy of the email is that it provides an artifact
showing that the email address accepted the Terms of Use, when they were
accepted and so on. If you did not submit a CVE request to the DWF you can
safely ignore this message, however we may resend it at some point in the
future, if you don't want any future emails simply reply with "unsubscribe"
or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to
the block list so we don't spam you with these, please note that this will
prevent you from being able to accept the MITRE CVE Terms of Use via the
DWF automatically in future (you'll have to manually ask). But again, if
you have no idea what a CVE is then you can ignore this/ask to be added to
the block list with no problems. MITRE CVE Terms of UseLICENSESubmissions:
For all materials you submit to the Common Vulnerabilities and Exposures
(CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and all CVE
Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.CVE Usage: MITRE hereby grants you a
perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable
copyright license to reproduce, prepare derivative works of, publicly
display, publicly perform, sublicense, and distribute Common
Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make for such purpo=
ses
is authorized provided that you reproduce MITRE's copyright designation and
this license in any such copy.DISCLAIMERSALL DOCUMENTS AND THE INFORMATION
CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND
THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF
ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND
EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT
INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS
FOR A PARTICULAR PURPOSE.A copy is available
at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/m=
aster/Terms-Of-Use.md
<https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mas=
ter/Terms-Of-Use.md>To
contact the DWF either hit reply, or email kurt@seifried.org
<kurt@seifried.org> manually with your question/concerns/etc. "*

On Tue, 27 Nov 2018 at 21:11 <kurt@seifried.org> wrote:

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

--0000000000004c976f057ba792eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I accept</div><div><br></div><i>&quot;<span style=3D"=
color:rgb(33,33,33)">This is a confirmation email sent from CVE request for=
m at=C2=A0</span><a href=3D"https://iwantacve.org/" rel=3D"noreferrer" targ=
et=3D"_blank">https://iwantacve.org/</a><span style=3D"color:rgb(33,33,33)"=
>=C2=A0asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can&#39;t use the data until you accept =
the MITRE CVE Terms of Use).=C2=A0</span><br style=3D"color:rgb(33,33,33)">=
<br style=3D"color:rgb(33,33,33)"><span style=3D"color:rgb(33,33,33)">Simpl=
y quote the email and reply with &quot;I accept&quot; at the top if you agr=
ee to the MITRE CVE Terms of Use and we will add a copy of the email to the=
 DWF MITRE CVE Terms of Use acceptance data at=C2=A0</span><a href=3D"https=
://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Te=
rms-Of-Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distrib=
utedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br sty=
le=3D"color:rgb(33,33,33)"><br style=3D"color:rgb(33,33,33)"><span style=3D=
"color:rgb(33,33,33)">The reason we use a complete copy of the email is tha=
t it provides an artifact showing that the email address accepted the Terms=
 of Use, when they were accepted and so on.=C2=A0</span><br style=3D"color:=
rgb(33,33,33)"><br style=3D"color:rgb(33,33,33)"><span style=3D"color:rgb(3=
3,33,33)">If you did not submit a CVE request to the DWF you can safely ign=
ore this message, however we may resend it at some point in the future, if =
you don&#39;t want any future emails simply reply with &quot;unsubscribe&qu=
ot; or &quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add=
 your email address to the block list so we don&#39;t spam you with these, =
please note that this will prevent you from being able to accept the MITRE =
CVE Terms of Use via the DWF automatically in future (you&#39;ll have to ma=
nually ask). But again, if you have no idea what a CVE is then you can igno=
re this/ask to be added to the block list with no problems.=C2=A0</span><br=
 style=3D"color:rgb(33,33,33)"><br style=3D"color:rgb(33,33,33)"><span styl=
e=3D"color:rgb(33,33,33)">MITRE CVE Terms of Use</span><br style=3D"color:r=
gb(33,33,33)"><br style=3D"color:rgb(33,33,33)"><span style=3D"color:rgb(33=
,33,33)">LICENSE</span><br style=3D"color:rgb(33,33,33)"><br style=3D"color=
:rgb(33,33,33)"><span style=3D"color:rgb(33,33,33)">Submissions: For all ma=
terials you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE),=
 you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Au=
thorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-=
free, irrevocable copyright license to reproduce, prepare derivative works =
of, publicly display, publicly perform, sublicense, and distribute such mat=
erials and derivative works. Unless required by applicable law or agreed to=
 in writing, you provide such materials on an &quot;AS IS&quot; BASIS, WITH=
OUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, includ=
ing, without limitation, any warranties or conditions of TITLE, NON-INFRING=
EMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span><br styl=
e=3D"color:rgb(33,33,33)"><br style=3D"color:rgb(33,33,33)"><span style=3D"=
color:rgb(33,33,33)">CVE Usage: MITRE hereby grants you a perpetual, worldw=
ide, non-exclusive, no-charge, royalty-free, irrevocable copyright license =
to reproduce, prepare derivative works of, publicly display, publicly perfo=
rm, sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any copy you make for such purposes is authorized provided that you r=
eproduce MITRE&#39;s copyright designation and this license in any such cop=
y.</span><br style=3D"color:rgb(33,33,33)"><br style=3D"color:rgb(33,33,33)=
"><span style=3D"color:rgb(33,33,33)">DISCLAIMERS</span><br style=3D"color:=
rgb(33,33,33)"><br style=3D"color:rgb(33,33,33)"><span style=3D"color:rgb(3=
3,33,33)">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY M=
ITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE OR=
GANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORA=
TION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL =
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY T=
HAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY =
IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<=
/span><br style=3D"color:rgb(33,33,33)"><br style=3D"color:rgb(33,33,33)"><=
span style=3D"color:rgb(33,33,33)">A copy is available at=C2=A0</span><a hr=
ef=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blo=
b/master/Terms-Of-Use.md" rel=3D"noreferrer" target=3D"_blank">https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-=
Use.md</a><br style=3D"color:rgb(33,33,33)"><br style=3D"color:rgb(33,33,33=
)"><span style=3D"color:rgb(33,33,33)">To contact the DWF either hit reply,=
 or email=C2=A0</span><a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a><span style=3D"color:rgb(33,33,33)">=C2=A0manually w=
ith your question/concerns/etc.=C2=A0</span><br style=3D"color:rgb(33,33,33=
)">&quot;</i></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, =
27 Nov 2018 at 21:11 &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried=
.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confi=
rmation email sent from CVE request form at <a href=3D"https://iwantacve.or=
g/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking =
you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE f=
orm and want one, we can&#39;t use the data until you accept the MITRE CVE =
Terms of Use). <br>
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

--0000000000004c976f057ba792eb--
