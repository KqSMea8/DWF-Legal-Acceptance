Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp194124uag;
        Wed, 10 May 2017 00:16:15 -0700 (PDT)
X-Received: by 10.46.81.17 with SMTP id f17mr2035391ljb.106.1494400575456;
        Wed, 10 May 2017 00:16:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1494400575; cv=none;
        d=google.com; s=arc-20160816;
        b=u5NULn7zsWROd4q51cZ9N+HB0xGglWRY1Knj/IYq7J+ELfxfpTNVpvN0sq3KHf2Yj0
         yuSlXtRapacTQObZ6WY8+z2zQoRALJvnobJ84YVziu71gn/AjHQ4zp3rdCe+Ff4mBMYC
         PIo0Cde3NoF/79dTjkKrpUxfM20iR9TmwCsp5q8tFwla3lTD6ClRMC2QQdyI53v58kdu
         hOIhd0AEn24AWvEq4mdQo3VxWetoESlvIEyewQkYmpCt1DaRT4vjqjxdncGuBEqnjbYj
         Tehh4I92EOoUA9PQWtofzHtDtWtkzfLQHvQP6w3rbSDArjm/OR7srYVYGN7TihzHu0nk
         HS3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=DULKeEyWZpz4XJInKAIMKDN8lypLzNSKgJWHv4KgXMc=;
        b=SKRNKVNUhjvH8AxDwaIXLKkj8kBnEPcLLcQ3kQfRFXogo63E+P0+H+9BNWn7dW5se8
         myRqg3zFz0/c9kYZfNJBwHzUEbpVtfehSJOPSQOpeiAjCit1dXtgPL5kFLlR530JbF8p
         ALgj8x5LUi6uotfowb49jLvgDmQdlzSjxu9CNoUkgmfKZRJ/3iMP9S1UXjn0wUT22ku8
         bwkpCSnakUIaoHlWyKr1MipdaqqdD0zpQWImoO1b933MA5w4gxb7mTX9MDxwzZPqopWm
         c+fIt8Ro0g86bYBSxpbCi3ECJtczSUA3eCOGv9XlI+XHLeZ7dreas2ojS0SFRuY5x5Pb
         3dyA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of coolteygame@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) smtp.mailfrom=coolteygame@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <coolteygame@gmail.com>
Received: from mail-lf0-x22e.google.com (mail-lf0-x22e.google.com. [2a00:1450:4010:c07::22e])
        by mx.google.com with ESMTPS id g185si1224096lfe.109.2017.05.10.00.16.14
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2017 00:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of coolteygame@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) client-ip=2a00:1450:4010:c07::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of coolteygame@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) smtp.mailfrom=coolteygame@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22e.google.com with SMTP id r17so14471473lfg.0
        for <kurt@seifried.org>; Wed, 10 May 2017 00:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=DULKeEyWZpz4XJInKAIMKDN8lypLzNSKgJWHv4KgXMc=;
        b=eSUgJI9avpavOZ+OFUrD4hTnX8CBK4EMU73/YAotAKYa10ZStikeXPO40Ls08FNuHN
         njSrZXOSBajpKDb09dF5TsYB3jA5t0SD41A6fJP2rvavB0dVJO1/bVUJUHjywiJEpboZ
         Wn+DLiSjxg6EIx22ig5vfki8n/LP9G+i+yLp7bAQCe74I0bi/Nb0Dbf/jjJYl8dC93kF
         bGUjdLH/fT0yBPhhODw/5/lVMrU79cLOk/EZhxsLpMz9JvmafIU7wy9OgN04oYWKaAz7
         CJsvlQ96D3uxfTLXT3uL0XFYKN0lL81nTTQ0/sytQ7MKan/eNQCIc+YsRIBmb/i1HIVe
         iZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=DULKeEyWZpz4XJInKAIMKDN8lypLzNSKgJWHv4KgXMc=;
        b=F6FnCXhJNOYLH7d6iRkFljqiIiXpjjxwRMMIp28yJZ0PQN8kmmvEpxmVzzdaj5q2rC
         vzcf1BGNGD0FJ+dFRXmaLXCQuHFd033DrOJgwzFiK5nEV4r31y4OyjPzg8wvP27xS6ty
         8NAr5y0aIBkSktLqv4cQdxdgRFqTY5iwOfsTgkxHEw4O4dZp4HPNelH+bTCr5VQ8I0GH
         xnTs8f37bMuQ/xdYw3z6AKRbBDs29NJK7TjVJUD2aBiXpUEgdoARHVYXRnP/bnKdVo/f
         n+Y2TYiLN7p6zvv5DBpg9jz07r47Xxdlu+rUT7YBWoE26NTWgvj5Cvh2Effs8gqIjbEa
         QzwA==
X-Gm-Message-State: AODbwcBd2HUpLUIee7YQFKVio+LCEWNzlPKvSjZEFtlJQvPauuEcakr7
	vnoIxfT6N+aqYxfvJOCEk3CAjzGVQV0Hwx0=
X-Received: by 10.46.21.79 with SMTP id 15mr2103621ljv.15.1494400574479; Wed,
 10 May 2017 00:16:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.24.217 with HTTP; Wed, 10 May 2017 00:15:53 -0700 (PDT)
In-Reply-To: <20170510023117.8102.13891@bigbox.local>
References: <20170510023117.8102.13891@bigbox.local>
From: Cooltey Feng <coolteygame@gmail.com>
Date: Wed, 10 May 2017 00:15:53 -0700
Message-ID: <CAM2ZEkVZHB=qVD8Cjgfwd502dAKYpHpawKdYNAzaFCwwz+xThQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for coolteygame@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=94eb2c1cd79864e6a5054f263f4b

--94eb2c1cd79864e6a5054f263f4b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

2017-05-09 19:31 GMT-07:00 <kurt@seifried.org>:

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
*Cooltey Feng*
coolteygame@gmail.com

--94eb2c1cd79864e6a5054f263f4b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&quot;mi=
crosoft jhenghei&quot;,sans-serif;font-size:small"><span style=3D"font-fami=
ly:arial,sans-serif;font-size:14px">I accept</span><br></div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-05-09 19:31 GMT-07:0=
0  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_bl=
ank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Th=
is is a confirmation email sent from CVE request form at <a href=3D"https:/=
/iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org=
/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled =
out the CVE form and want one, we can&#39;t use the data until you accept t=
he MITRE CVE Terms of Use).<br>
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
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><f=
ont face=3D"comic sans ms, sans-serif" size=3D"2"><b>Cooltey Feng</b></font=
><div><font face=3D"comic sans ms, sans-serif"><a href=3D"mailto:coolteygam=
e@gmail.com" target=3D"_blank">coolteygame@gmail.com</a></font></div></div>=
</div>
</div>

--94eb2c1cd79864e6a5054f263f4b--
