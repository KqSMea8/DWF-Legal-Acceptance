Delivered-To: kurt@seifried.org
Received: by 10.79.67.129 with SMTP id q123csp2748257iva;
        Wed, 10 Jan 2018 11:40:53 -0800 (PST)
X-Received: by 10.25.59.136 with SMTP id d8mr3792384lfl.141.1515613253216;
        Wed, 10 Jan 2018 11:40:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1515613253; cv=none;
        d=google.com; s=arc-20160816;
        b=JH9pZx3JJKFT+Umkt1GvmMorVJy8ZiMF9xaX7D8IYm4oEgGLPnxqIdulSdKKQTEnGS
         tBlODAZAivy/glh/e4/rRyRWUkWQNgGJ3dvnYcHSTE7Ce18vnEsxjXXgrNtAGAYAM5+6
         2pC7PQ7FGNs7YZHpGoJbtT0nRwmvGLf1GiDFiY4DigfN296C53qvhCeJRYc0Q2XqVtsn
         5tQ/GqYebgDzR/6gsIHUurCWJ9NqVNwYnpWIcCWeSDewt/1z4sxWlNfkd6/bj7ysrq5t
         rhYWmLPRxGYTrFD9FRdj8R8gkM1O3ptAFnk+B1BGHc5MewW0hzKJ5nzl6G/KwVDNc1Xc
         CfgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=MdZBFdDbkPpEFF4KQSY6Y7CLagV85vOTv5FwRYRa6rE=;
        b=z4XCM1OW92y9E8qFvlb4oHyqJgtGsS3aKjW7pny1o7pPYT3d7mI25nmn2xm4B/Hx4x
         rLI+azMJUzxHBV9cwOe94D36y5bQdNE1PREWYm+Dgh7F41wTvXyDtnqNLDFJxcgp6xsk
         o3kjNG+FU8kICrbw57yD1R/5hpkYGqGLrOVQPWUKUvtrcUiNSXX+uyeEH6ffwWfIMZxP
         8WnszndC9G3sPdLMExmqAey573LfDDO2Pl5eXlb4enSYP4dh5zLsgwm7BhCrBhBWMRhW
         PgXz7mbJCE7rDg3nAiFWaiRJDTi4e2r3urzc1FLtY6VujSgnanYJzleRNl0BFwo8y94Z
         jvdg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uv6qN3eH;
       spf=pass (google.com: domain of cslab223a@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cslab223a@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <cslab223a@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i8sor1216185lfl.86.2018.01.10.11.40.53
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 10 Jan 2018 11:40:53 -0800 (PST)
Received-SPF: pass (google.com: domain of cslab223a@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uv6qN3eH;
       spf=pass (google.com: domain of cslab223a@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cslab223a@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=MdZBFdDbkPpEFF4KQSY6Y7CLagV85vOTv5FwRYRa6rE=;
        b=uv6qN3eHT6+712QFCQCnReUgaCrvOOd2kg9ce2pe6Mht6LhgtZFna5+n95697ckQ3c
         3/VazH+ccJkF3UgK2KptDE4bYFpPhHxB84u+0jY4hWAeI+bWt58sNciZjZRTMZzl+u12
         KZQFkm50uYlQ2JwQchtbyGD1RmipVj8Yr6nlbdit27L04/hEoQh2R0zJw4sbN0uAJdYQ
         FAOTcf8ZnbKgBZyq6DwQFI9NNC8RKiBXw40fBhVeEemw649mY8sNEXSofNisKM9NE+/p
         pc01IdUXbC7QdVAx3IsCAILzgD25FxG6sNN28jkCeoSctcE+FY8jriGuMNZqbOuSIF97
         x7Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=MdZBFdDbkPpEFF4KQSY6Y7CLagV85vOTv5FwRYRa6rE=;
        b=DYDJ4pks/AgGP1Zx1HIQctIEd/vLP3X9iXHg452vFyz7uOPQFmFFCzLu79EAr7LvB3
         6s3t73W/Buh9f3ZPzXvRUmkhuMoW7Kj9GzwG4a9SmRwAu8I8vXaB9ZWYEM4tHiiqy69o
         zxh77to9+k0yCH5LIuDp8ng57LsBh7/+gnvBmXGZlQ1ccs7xlUMLsXFWc8sTBlxMzThp
         0RHQMgs8tgCbFwLUyg9f/HXMlWmwEPcS0a1dSHAnGzXLlbUfTllp0iZbievRUmDi96v/
         mfPIuEc9mqvIfPk8vmUj0GaKScfYCEOcX55cbl6Bax03yhPr92Q+ZRH9YhbFkBkgJklO
         5SVQ==
X-Gm-Message-State: AKwxytdbLg9V+YrTR2odW3Afk0WX0KO2H9VblW1UkPCILDYAPvKaThuF
	fnOCTTev1nXGDAfpCji/6eMp5Q4aqsce2kDcfj3FpA==
X-Google-Smtp-Source: ACJfBotP6ptLpLm4Ac55mtc7Hm5g5NYtHFzGsvZmdwaGIADaDF7q3c1+r3G0CF1418OcCKfz1fDHLG05CrlaDf2lMeY=
X-Received: by 10.25.155.205 with SMTP id d196mr9989690lfe.31.1515613252564;
 Wed, 10 Jan 2018 11:40:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.214.18 with HTTP; Wed, 10 Jan 2018 11:40:51 -0800 (PST)
In-Reply-To: <20180110191204.72975.36905@slab.local>
References: <20180110191204.72975.36905@slab.local>
From: 223A Lab <cslab223a@gmail.com>
Date: Thu, 11 Jan 2018 03:40:51 +0800
Message-ID: <CACFoMiHN+yAD9=cRsW1k=LA+s6jz1xWbHXYd=F=8jJR2NBBxdA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for cslab223a@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a11401f0889458b0562713504"

--001a11401f0889458b0562713504
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Jan 11, 2018 at 3:12 AM, <kurt@seifried.org> wrote:

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

--001a11401f0889458b0562713504
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Jan 11, 2018 at 3:12 AM,  <span dir=3D"ltr">&lt;<a hr=
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

--001a11401f0889458b0562713504--
