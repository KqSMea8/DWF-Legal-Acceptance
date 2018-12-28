Delivered-To: kurt@seifried.org
Received: by 10.157.8.51 with SMTP id 48csp726672oty;
        Sun, 20 Aug 2017 02:25:21 -0700 (PDT)
X-Received: by 10.37.172.76 with SMTP id r12mr11390777ybd.213.1503221121383;
        Sun, 20 Aug 2017 02:25:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503221121; cv=none;
        d=google.com; s=arc-20160816;
        b=tgez1KYAwYFjLeTpcvUTDcibZDbazOddVMWPetxT6gmpAj41fG/C5OOeQQu9ikJIB1
         RSQaDWv3tqQmE8wODEJPJdDwh7DQSVLzGdlFmw/w1r3p4gloTFqmbH36s9Wfhm2dRtr3
         4m7z4anPt+tc+B8D9fGL9UaqDPup7K2emGk0HWjSgqNnpxLrvF1uvMgA0qA0aZTpGc8s
         vLQMSPWVRaudWwCJwt6cl84ANRd82CqyoUp1CpHtV0335m1B4n80sSsYPDM4xeAIfVfG
         MacATvpDmdNG07zGBcyfYuVUT81Pd/Pg4ZEamQx7DWjTBb9rNdjwRO493CqUZRLQa4NR
         3twQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=qAZxHBtDkgf7jOp1DkgSfHuL34IaUU+qpNEYw/P2qyY=;
        b=jKpzHStMLBZtw0cBM2lndGYl+QUMzZ8F2LT3AEmmCY3Eietr+S9s3bJ67YoepwXI3K
         v17v7ViRmmhX4ao7C5X2WJHnpMSIh9N02ZsAp5AgSbYkln+X8Vxp97hc1Y5X5xzrVs8o
         PXBLneXazjKTZ0dcU1bV/PShfWeRmWaqjawffJQx1wQqI6NTocPqJ5q9Q79EVLxop3rQ
         OIRxCr6gCzqbzJcXmsx6JIS2F/DqQQRtXZShrnyYk/PmKP3vmeUr9KskVxKh3KXPBQ0B
         kvNcjRS3AhwIFgBaK3MKEIm7f9fMg+YosOZRVouZtn7SAGDYnos4C09YFxOEdaXhqqbd
         K28A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cmWpD8bv;
       spf=pass (google.com: domain of puzzorsj@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) smtp.mailfrom=puzzorsj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <puzzorsj@gmail.com>
Received: from mail-yw0-x235.google.com (mail-yw0-x235.google.com. [2607:f8b0:4002:c05::235])
        by mx.google.com with ESMTPS id c9si2589518ywk.241.2017.08.20.02.25.21
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Aug 2017 02:25:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of puzzorsj@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) client-ip=2607:f8b0:4002:c05::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cmWpD8bv;
       spf=pass (google.com: domain of puzzorsj@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) smtp.mailfrom=puzzorsj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x235.google.com with SMTP id h127so9719885ywf.0
        for <kurt@seifried.org>; Sun, 20 Aug 2017 02:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=qAZxHBtDkgf7jOp1DkgSfHuL34IaUU+qpNEYw/P2qyY=;
        b=cmWpD8bvlmnT9bcNm5lJmJn0wwZu3yvhlm0/r3ELkwIjKHLT8BJoBBNbMQoK/81T6u
         iPO4f+aFQQzmRj/n8gjK2pLpZaIbRl71CU+H5q7nvJfphsHbLb/Rz/lk3nssDPJUPHDg
         YazAkU+6VQ3/6IHEpKItibzk/yMsUhC5KJgMOoBY6RdyiaxFKvc+31UVKnVdoGpmSIYC
         BJBhXDfwmPM7/C17A4g8bjYnTCZJUMeBUqpt+bBcvTozxVQk/5YdBxJBBqcH6GUVVTAN
         FNCg7ILxqkuG5YrVyURTO8yK0fcH2ltrDw6wvMXy8NLsF6T2cb9VgkWM5GiiMPV46ICB
         FINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=qAZxHBtDkgf7jOp1DkgSfHuL34IaUU+qpNEYw/P2qyY=;
        b=BlPgPG5U1gDygnikXpR53PzDWsRf/q4ho6H8Ff/SKew1tB3k1ANNQsp9SDxfoF9e+F
         gemClXNNZpudz5L8niuru9a0PFj4YtC+ASFR/I5+8ERew0rNDODEIwKa5tNZiSCVBVyI
         EXh3TbFT1ZxNL4T7ntbeK5MnNJD8elXlX4L9z8rmdak+I8Xq+8iDVdz3EdwBn1cTSfLh
         UQERcsyMGbdNqlsYeS2cabK/o1wMdiKNR2f0mTuT0g/qBb2XPEvIcYRj6wSmp1bgnpej
         HPoe0HgSuknfxOFDIPvx0IWmfD4KRj/7/wn3q88tJ5gz41F2g5nLPaQyFgnSD0RL8iOD
         ZUmg==
X-Gm-Message-State: AHYfb5hsL/6f+2FN/E8EVLFJKmfOYpnSaeA00iYmefTWn8HCcekyKRSa
	+pP7zLHWBEyvRi9vys+yq8RI8ecQmQ==
X-Received: by 10.129.123.193 with SMTP id w184mr546124ywc.413.1503221120641;
 Sun, 20 Aug 2017 02:25:20 -0700 (PDT)
MIME-Version: 1.0
References: <20170819025228.56150.69080@shiny-2.local>
In-Reply-To: <20170819025228.56150.69080@shiny-2.local>
From: Sj Puzzor <puzzorsj@gmail.com>
Date: Sun, 20 Aug 2017 09:25:10 +0000
Message-ID: <CALvRyEnLrsV1YaL3k4tZq=OE3dnoNDyePeT2qqh=c-Gha_kLTA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for puzzorsj@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114935d2ea2ff105572bf0fb"

--001a114935d2ea2ff105572bf0fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

<kurt@seifried.org>=E4=BA=8E2017=E5=B9=B48=E6=9C=8819=E6=97=A5 =E5=91=A8=E5=
=85=AD=E4=B8=8A=E5=8D=8810:52=E5=86=99=E9=81=93=EF=BC=9A

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
From gmai mobile Shi Ji=EF=BC=88@Puzzor=EF=BC=89

--001a114935d2ea2ff105572bf0fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div>&l=
t;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt;=E4=BA=8E20=
17=E5=B9=B48=E6=9C=8819=E6=97=A5 =E5=91=A8=E5=85=AD=E4=B8=8A=E5=8D=8810:52=
=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is=
 a confirmation email sent from CVE request form at <a href=3D"https://iwan=
tacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a>=
 asking you to accept the MITRE CVE Terms of Use (assuming you filled out t=
he CVE form and want one, we can&#39;t use the data until you accept the MI=
TRE CVE Terms of Use).<br>
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
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature">From gmai mobile
Shi Ji=EF=BC=88@Puzzor=EF=BC=89</div>

--001a114935d2ea2ff105572bf0fb--
