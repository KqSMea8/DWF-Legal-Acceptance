Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp778931uad;
        Thu, 20 Apr 2017 09:53:56 -0700 (PDT)
X-Received: by 10.31.196.196 with SMTP id u187mr1054356vkf.41.1492707236176;
        Thu, 20 Apr 2017 09:53:56 -0700 (PDT)
Return-Path: <mbrooks@snapchat.com>
Received: from mail-ua0-x229.google.com (mail-ua0-x229.google.com. [2607:f8b0:400c:c08::229])
        by mx.google.com with ESMTPS id 88si939383uan.199.2017.04.20.09.53.56
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Apr 2017 09:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mbrooks@snapchat.com designates 2607:f8b0:400c:c08::229 as permitted sender) client-ip=2607:f8b0:400c:c08::229;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@snap.com;
       spf=pass (google.com: domain of mbrooks@snapchat.com designates 2607:f8b0:400c:c08::229 as permitted sender) smtp.mailfrom=mbrooks@snapchat.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=snap.com
Received: by mail-ua0-x229.google.com with SMTP id a1so57907149uaf.3
        for <kurt@seifried.org>; Thu, 20 Apr 2017 09:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=aBGslIkg+vW0f3sFcamvuymwmRSPY8Xh6qEitteTVDY=;
        b=CGXGiccHbitXaGYrGwio530oVb9Yqcas9PzoLSZlr3mTGdE7hgtWrwE90WLCc4Un3X
         XLz4Fa/zYzQ2eFUVCgttD3Er0OsdzLmn/6nDJRQRbMfX6JtW/JP81V15zv+pGCxZkZrR
         L6eNJwQRtYlfWiCGrMpS/TQEi062a30oUof1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=aBGslIkg+vW0f3sFcamvuymwmRSPY8Xh6qEitteTVDY=;
        b=AbUm9ZV2m7U5Pql3PIy0YVMCFhZ3Fot263g8MZvZZ9EmclB4zWn4rpUf5qbHaBY/5p
         gxtmw5U2lfuAB1xWEPJ7+w4ZDNP6Lda+37RHPb+P8a3nlaWzC0v6eIDGXsU1dIdJryqt
         iCYmcxNf3houbpO7doaDV367kfxY8nUnhdLto/GNrQ1AypSKV1BXmISz3up4CcY3Fsi9
         zHt4P024pAhqBDdLAgr3g+jOfiZtiPp0/zWBfNxV5ScWfbGx1DjHRN4oxnBwZDNM6FXo
         xyZ5PZsvh0uL9kInCGVmbLE4wpYMvXMHUEAjU5OgKQ3msyK3/swelXp2JhE9Do2IAk0u
         niLw==
X-Gm-Message-State: AN3rC/730Y6gpxMaDUHuBJ31bTh8mY1v8GRgA4eKW+tWaJkfuN59Loxw
	sOdXNv2RSh02+7d1eB9G0Nu8wLPwD9cUl5A=
X-Received: by 10.31.182.141 with SMTP id g135mr2915830vkf.32.1492707235550;
 Thu, 20 Apr 2017 09:53:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.7.194 with HTTP; Thu, 20 Apr 2017 09:53:55 -0700 (PDT)
In-Reply-To: <20170420154345.58112.33354@bigbox.local>
References: <20170420154345.58112.33354@bigbox.local>
From: Michael Brooks <mbrooks@snap.com>
Date: Thu, 20 Apr 2017 09:53:55 -0700
Message-ID: <CAGcSwpHZhJaCUvMg2YiX+O5+T8O7xo2eFKPmoZyKHKprxfCxRA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mbrooks@snap.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a1143896487753f054d9bfca3

--001a1143896487753f054d9bfca3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 20, 2017 at 8:43 AM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__
> iwantacve.org_&d=3DDwIDEQ&c=3DncDTmphkJTvjIDPh0hpF_w&r=3D
> lt254ZUNCi01tPjfl7KYgQ&m=3Dg1XgtZzbs0iDehNbu5z79eRkv_d0jkC4bqovvXd55V0&s=
=3D
> J64JBUopqrcsQYNAoNaLoJEWdo0XRE41mG484HJtZn8&e=3D  asking you to accept th=
e
> MITRE CVE Terms of Use (assuming you filled out the CVE form and want one=
,
> we can't use the data until you accept the MITRE CVE Terms of Use).
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
> and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporatio=
n (MITRE)
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly perfor=
m,
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
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C3=
=82=C2=AE).
> Any copy you make for such purposes is authorized provided that you
> reproduce MITRE's copyright designation and this license in any such copy=
.
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

--001a1143896487753f054d9bfca3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Apr 20, 2017 at 8:43 AM,  <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation ema=
il sent from CVE request form at <a href=3D"https://urldefense.proofpoint.c=
om/v2/url?u=3Dhttps-3A__iwantacve.org_&amp;d=3DDwIDEQ&amp;c=3DncDTmphkJTvjI=
DPh0hpF_w&amp;r=3Dlt254ZUNCi01tPjfl7KYgQ&amp;m=3Dg1XgtZzbs0iDehNbu5z79eRkv_=
d0jkC4bqovvXd55V0&amp;s=3DJ64JBUopqrcsQYNAoNaLoJEWdo0XRE41mG484HJtZn8&amp;e=
=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.<wb=
r>com/v2/url?u=3Dhttps-3A__<wbr>iwantacve.org_&amp;d=3DDwIDEQ&amp;c=3D<wbr>=
ncDTmphkJTvjIDPh0hpF_w&amp;r=3D<wbr>lt254ZUNCi01tPjfl7KYgQ&amp;m=3D<wbr>g1X=
gtZzbs0iDehNbu5z79eRkv_<wbr>d0jkC4bqovvXd55V0&amp;s=3D<wbr>J64JBUopqrcsQYNA=
oNaLoJEWdo0XRE<wbr>41mG484HJtZn8&amp;e=3D</a>=C2=A0 asking you to accept th=
e MITRE CVE Terms of Use (assuming you filled out the CVE form and want one=
, we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<b=
r>
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
 Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute such materials and derivative works. Unless required b=
y applicable law or agreed to in writing, you provide such materials on an =
&quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, eith=
er express or implied, including, without limitation, any warranties or con=
ditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTI=
CULAR PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy =
you make for such purposes is authorized provided that you reproduce MITRE&=
#39;s copyright designation and this license in any such copy.<br>
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
</blockquote></div><br></div>

--001a1143896487753f054d9bfca3--
