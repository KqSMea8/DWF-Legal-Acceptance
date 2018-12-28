Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp1529704ivr;
        Fri, 23 Feb 2018 22:09:56 -0800 (PST)
X-Received: by 10.98.202.23 with SMTP id n23mr4097191pfg.52.1519452596926;
        Fri, 23 Feb 2018 22:09:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519452596; cv=none;
        d=google.com; s=arc-20160816;
        b=Wt3QPIq3FOUmMckFnIEDbhWkl0C6FoQKDlV7o4VpWa8m86bDveGtsPqLpER96OZwDz
         aLcEgqSMdt+IMN+PJS7ftu1ElvtlV0bTyxjcWqfCxGL3zZPuSdFMxSJqgg9qFHoWBoE3
         c2WrFwqSGpLra3ugiDhYM3i9SI1eKaGf8Zuj63V4NUgXynowWzpfguUtyhWCbihcSQXW
         xU+eB73JMcJ/OmqAE5CR9GxynFyEBa21dbDm/aQbvzMyt+34EhlGnp0p97yjmuNBq3Q3
         f2Ao8RR2qFcpEpmjnJhUmAXslboLW0KFsq7A1wEIbVOEd2G4P9T3fqszfVigS4KXiZVt
         f52Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=O4vqQ7pQhh/9lP52Eaq7/rXjHwdKYxiIW2bwS39kOgg=;
        b=cM5ylZ1TPKhMVPTw8FStAXqac88kR8fgWnAzKkTttgewt3cZ0vuZUgViVgrgV3u47n
         9urUuF6YO5brwqdp+qDsQxwtOE0UZT09Xy6cfHSMKA3vVjXF/0iwcXNT5aamm6mdPd0u
         +JX2zfsWMpNylL0CeqRLFgeaCV003A7927W85nksGX7r4qbu53lfTdgT1MlhCLNr6VPx
         Uzp/whlYUIpRYQXqAU+bnkxUXuGssMHUwPl4HsNsHXXiit/Ly9EvqvP2bLI39cmB8uJz
         pZ3A4RmyIqwkI2u4wkYAZhiSlm9TE4qgDlfCo2Un7zh3DSD//TACjNTSnPKtbW53c4mu
         aoxA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MT7jpsQY;
       spf=pass (google.com: domain of gsingh2011@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gsingh2011@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gsingh2011@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q68sor1153682pfb.68.2018.02.23.22.09.56
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 23 Feb 2018 22:09:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gsingh2011@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MT7jpsQY;
       spf=pass (google.com: domain of gsingh2011@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gsingh2011@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=O4vqQ7pQhh/9lP52Eaq7/rXjHwdKYxiIW2bwS39kOgg=;
        b=MT7jpsQYacQWdFRRDWXalg5LLTTq9Yn2ZzcfkrG0eDNKr1/OAhtl6SEb6SeYkJTNGW
         2VVf80UXvztIgmzVTgUNERzKlMqqrQP+ysZlYZnx2ldhD/CTJk46NzDkfOoVbiTidcVB
         GGZWGNSZDne6fOK3g1A94UbjDZClZzmKPXuJiLLSiV60tfFJ06nqhPcqmBPa7/jTuBMf
         HCeRaWxaNTcaOvvR9OB4w/+5sC2ikPqWb+mXoBfpsow/JAmBuDPYosulsdDG1yXw/6hI
         A4jdDt5a4xddAjghFN3XWhdGRoxxPnS7eIqT06q7YJ4T/aDri94zXC193RPmmU0c1fHu
         7XyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=O4vqQ7pQhh/9lP52Eaq7/rXjHwdKYxiIW2bwS39kOgg=;
        b=jfClob6H/bZERbg1suxS0py6Ao2yLCLkjmKxjEWbUTyWejtT2jfqs/C8ipZ/+DMwYP
         mXq5eXbnA++I8I53to5h20FVoA+P4/C0rVM9ruSckLnWPMzJjxprgC4VP6ErOiNvli6t
         wtNc7Ppt4icWgsQBkbzUWEHLfgbLqSkHgB5z3zcJG7Rbf5a8pqgprBpcaoWW6vFEMBph
         nR1N/s03UQ2+8AzHxKVeHgd+WHrie1yHuNMG/lY2KHUTg9XgzkJvBYlogi7P80crYpKv
         cgnFobNLBB7QkO9e8QK/f8pnaJMOmETkbyIMSf50a7d52K0fK6NYFu4tXklmhfw9mon6
         0hTA==
X-Gm-Message-State: APf1xPD3gwdd9825LGr48aMmWCIT2sAKd3+L5eJQ0jlzb/WkpbWyr2JQ
	jIZNfATPZyKoEZHgsHTGpZmwoenWQygC/yTs5kmfMA==
X-Google-Smtp-Source: AH8x224jq/nsyM3z7eCO7wXWCrBT9Lyy91ZnHkkZSZQVIzN0WQrkP7cLKASdQrZ/5e33N7Nfd4EG7HSLsor6NebChNM=
X-Received: by 10.98.152.205 with SMTP id d74mr4090419pfk.115.1519452596119;
 Fri, 23 Feb 2018 22:09:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.165.98 with HTTP; Fri, 23 Feb 2018 22:09:55 -0800 (PST)
In-Reply-To: <20180224041508.2287.50907@slab.local>
References: <20180224041508.2287.50907@slab.local>
From: Gulshan Singh <gsingh2011@gmail.com>
Date: Fri, 23 Feb 2018 22:09:55 -0800
Message-ID: <CANEZYrcSp3sXsprxQUvdqZ7cC74ReKKvqkmbaDuMNOQQ3wBP5Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for gsingh2011@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c04d41c3ec0b00565ef2056"

--94eb2c04d41c3ec0b00565ef2056
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Feb 23, 2018 at 8:15 PM, <kurt@seifried.org> wrote:

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


--=20
PGP Key: https://keybase.io/gsingh93

--94eb2c04d41c3ec0b00565ef2056
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Fri, Feb 23, 2018 at 8:15 PM,  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation email=
 sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"no=
referrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept=
 the MITRE CVE Terms of Use (assuming you filled out the CVE form and want =
one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use)=
.<br>
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
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div style=3D"color:rgb(136,136,136);font-family:arial,=
sans-serif;font-size:13px">PGP Key:=C2=A0<a href=3D"https://keybase.io/gsin=
gh93" target=3D"_blank">https://keybase.io/gsingh93</a></div></div></div></=
div></div>
</div></div>

--94eb2c04d41c3ec0b00565ef2056--
