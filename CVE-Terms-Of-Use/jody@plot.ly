Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp287312uaa;
        Fri, 7 Apr 2017 07:57:34 -0700 (PDT)
X-Received: by 10.157.6.193 with SMTP id 59mr15410627otx.156.1491577054335;
        Fri, 07 Apr 2017 07:57:34 -0700 (PDT)
Return-Path: <jody@plot.ly>
Received: from mail-oi0-x235.google.com (mail-oi0-x235.google.com. [2607:f8b0:4003:c06::235])
        by mx.google.com with ESMTPS id s26si2549279ots.48.2017.04.07.07.57.34
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 07:57:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jody@plot.ly designates 2607:f8b0:4003:c06::235 as permitted sender) client-ip=2607:f8b0:4003:c06::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@plot-ly.20150623.gappssmtp.com;
       spf=pass (google.com: domain of jody@plot.ly designates 2607:f8b0:4003:c06::235 as permitted sender) smtp.mailfrom=jody@plot.ly;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=plot.ly
Received: by mail-oi0-x235.google.com with SMTP id b187so88876906oif.0
        for <kurt@seifried.org>; Fri, 07 Apr 2017 07:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=plot-ly.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=yNWGkmOOfLx+3K/Q5zR/IVccceZeJTfHvwRJoe+RaKs=;
        b=tvkYdh3nIxdXiTyM5l76VVjTUUBVV17DSDOyLnzmiuQLCZ7K/yEYxj3jKWPKDQ+S8q
         os6psGwFTSbiBGMa7NyB9GgdlWUrY7tp3crXotL/QodHi0lZgeDtKZ9IYU//DzdMibSe
         WlrhfIBWk56iw9LmTIqg5QVjQhq1JXQHvxzd7WKv9ZjRUZud7lsYQLGJcF7/JBMpl/lF
         l6+f8V6MGnbzQzTMxlow1FFxiMG2njg0QVr2bFlfn7I2xFkVeMZn1o9JgnuqO+XP5tL6
         FEtnAKZ/t8JelqHPsmkFvHcooFsaoMM1r8habiPdiQsb0tJXssjlKoEZx3AhjxQJ3bnD
         xNeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yNWGkmOOfLx+3K/Q5zR/IVccceZeJTfHvwRJoe+RaKs=;
        b=rVFU5eEsdGrY8/OXQ0V07gOGRmS+dNTf5RhscUZCy7vy3nV048CvNsE8KEun/4/5uY
         0f8nYKq32qyKutesjZ2jyZ05HWNksuhH69i0vI54YDp0802M4RqOsr6U3xnoZnoiQuOI
         SQ4oZh5qlpMYUhgB0/5eJ+NrkaypgtYU/jeQdTw2rVL+5C49uk+RB2FuQwqNvn4DOMJZ
         uY5+4YtR6HmdevBHqf0FblYd5/Tgj0dvGyHG3wUrMtbAbrNaP0kyv31vJcYpGj0f+qSL
         YtKNv9Gv9tWQEG0mGHls+ArXrYdLRcJlEk6mxRXew7dJgRlRQDHimPKgx1kj4DwM7s9g
         E2qQ==
X-Gm-Message-State: AFeK/H3i03iv4rsITGWqW0cfP/BXWqruhS7XC9kXUnhjY+HJ2TW1fg6jHjXwK9l6SXwFb3wn6WtMUznQHFhz7Q==
X-Received: by 10.202.108.12 with SMTP id h12mr22129715oic.29.1491577053656;
 Fri, 07 Apr 2017 07:57:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.60.132 with HTTP; Fri, 7 Apr 2017 07:57:33 -0700 (PDT)
In-Reply-To: <20170406201114.4090.32568@shiny-2.local>
References: <20170406201114.4090.32568@shiny-2.local>
From: Jody McIntyre <jody@plot.ly>
Date: Fri, 7 Apr 2017 10:57:33 -0400
Message-ID: <CAED2w7veK67=hCCbSFdknC_CH5as2LzY+C2CKLM4AJn-FWUkEw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jody@plot.ly
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a1142df687061a2054c94d897

--001a1142df687061a2054c94d897
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 6, 2017 at 4:11 PM, <kurt@seifried.org> wrote:

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
Jody McIntyre, Plotly Engineering

--001a1142df687061a2054c94d897
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Thu, Apr 6, 2017 at 4:11 PM,  <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation =
email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use).<br>
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
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div>Jody McIntyre, Plotly Engineering<br></=
div></div></div></div></div></div></div>
</div>

--001a1142df687061a2054c94d897--
