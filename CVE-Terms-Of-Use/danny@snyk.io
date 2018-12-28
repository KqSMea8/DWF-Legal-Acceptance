Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp238907uad;
        Wed, 19 Apr 2017 05:56:13 -0700 (PDT)
X-Received: by 10.31.67.204 with SMTP id q195mr1119135vka.135.1492606573793;
        Wed, 19 Apr 2017 05:56:13 -0700 (PDT)
Return-Path: <danny@snyk.io>
Received: from mail-ua0-x22e.google.com (mail-ua0-x22e.google.com. [2607:f8b0:400c:c08::22e])
        by mx.google.com with ESMTPS id s72si216112vkb.38.2017.04.19.05.56.13
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Apr 2017 05:56:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of danny@snyk.io designates 2607:f8b0:400c:c08::22e as permitted sender) client-ip=2607:f8b0:400c:c08::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@snyk-io.20150623.gappssmtp.com;
       spf=pass (google.com: domain of danny@snyk.io designates 2607:f8b0:400c:c08::22e as permitted sender) smtp.mailfrom=danny@snyk.io
Received: by mail-ua0-x22e.google.com with SMTP id q26so15223902uaa.0
        for <kurt@seifried.org>; Wed, 19 Apr 2017 05:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snyk-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=eu0QsehGSxRSztX2wxOU2fqh1U6r/ebAnqA0Q69gv0o=;
        b=wFEL4iyEUhfVjqDIBa7xAFsVCz0tMCidjo3j9J4tsThSQMBGsvdHl8iS+4vRDxY/28
         pPwwjHiLoAUtn/lISWgUniaI5Nmy4e3HuFXQRgkbe/y5av4RI3PXa7TFz4gOoYO6u0AT
         2QvI7ZkqJ+PdWvLWah8z5k0x+qSu7Jy5TwDm08q1Ooa/23bA4yadg2u7rapNjJIwM+PA
         r5X2GObpulvxf+w17pUN+rA8LAI+3WF/KePIF2S4dwdaUFQyF6aEbQa/gsbyOmq3bCaP
         6MIa1qEORkZGiqpp+jOGtl7nebRZMgeSmwPu7GIDGJ+M2Xy3XOeINbX0ul2cyYy4gM4g
         iBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=eu0QsehGSxRSztX2wxOU2fqh1U6r/ebAnqA0Q69gv0o=;
        b=k1z/utviYs3Py+22wYl7QmlXdBo/q4BDTMNf/1mnrKaSNoaXlmC2d9mvQ0FVspFANI
         ue+p4pcqlageS21MB0pkEZwpz2DYTAlbOUM+8cVSgY6h1TmiGmH2HiB0CWRQeLCxbu/n
         2qIVQlSSUcuK5JCnBaHAp8vlFKprhbXNcSii3YBtsH49+ell2H8sAntpxLxlLB469oNT
         eJaJK3iNPqjsa2y/D0Ip94Zx8mNSf4oCI5ijsbiEjfzdYrHd/zjj70c4w8ECVwWM6yDk
         58gHQ5899NBMp8hAwj0KyJn2jnciPZXaiAasaJO731p13cK2eDPwGfM7+FfXFECAaizl
         NTng==
X-Gm-Message-State: AN3rC/7k7MqmSF03DK9FrD3Wb/w0B+0NB09hMvfhwh585HLHPX/b3ezQ
	FgOsPacYFCdDbh2r6uHv5TWvj0Y89ym77Pk=
X-Received: by 10.31.217.7 with SMTP id q7mr1043689vkg.131.1492606572955; Wed,
 19 Apr 2017 05:56:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.54.67 with HTTP; Wed, 19 Apr 2017 05:56:12 -0700 (PDT)
In-Reply-To: <20170406201744.4090.68565@shiny-2.local>
References: <20170406201744.4090.68565@shiny-2.local>
From: Danny Grander <danny@snyk.io>
Date: Wed, 19 Apr 2017 15:56:12 +0300
Message-ID: <CAHZSRcBbycDmoiyeVxSnH87HHLj29tTncOgtQdofTu=JvZ=3CQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for danny@snyk.io
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c07c41092219a054d848ccc

--94eb2c07c41092219a054d848ccc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On 6 April 2017 at 23:17, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>


--=20
*Danny Grander *| snyk.io | @grander | +972-50-7616594

--94eb2c07c41092219a054d848ccc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">I accept</span><br></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 6 April 2017 a=
t 23:17,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=
=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">This is a confirmation email sent from CVE request form at <a hr=
ef=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://=
iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assumin=
g you filled out the CVE form and want one, we can&#39;t use the data until=
 you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br>
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
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div><b style=3D"font-size:12.8px;color:rgb(136,136,136);line-height:12.8p=
x;font-family:&quot;Helvetica Neue&quot;">Danny Grander </b><span style=3D"=
font-size:12.8px;color:rgb(136,136,136);line-height:12.8px;font-family:&quo=
t;Helvetica Neue&quot;">|</span><b style=3D"font-size:12.8px;color:rgb(136,=
136,136);line-height:12.8px;font-family:&quot;Helvetica Neue&quot;">=C2=A0<=
/b><span style=3D"font-size:12.8px;line-height:12.8px;color:rgb(136,136,136=
);font-family:&quot;Helvetica Neue&quot;"><a href=3D"http://snyk.io" target=
=3D"_blank">snyk.io</a> |=C2=A0</span><span style=3D"font-size:12.8px;color=
:rgb(136,136,136);font-family:&quot;Helvetica Neue&quot;;line-height:12.8px=
">@grander | </span><span style=3D"color:rgb(136,136,136);font-family:&quot=
;Helvetica Neue&quot;;line-height:12.8px"><font size=3D"1">+972-50-7616594<=
/font></span></div></div></div></div></div></div></div></div></div>
</div>

--94eb2c07c41092219a054d848ccc--
