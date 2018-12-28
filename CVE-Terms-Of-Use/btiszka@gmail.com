Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp1361206ivl;
        Fri, 29 Sep 2017 18:58:17 -0700 (PDT)
X-Received: by 10.107.17.39 with SMTP id z39mr15089186ioi.170.1506736697473;
        Fri, 29 Sep 2017 18:58:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506736697; cv=none;
        d=google.com; s=arc-20160816;
        b=QfS4b7QS5PSV7V1vuUW/iyZlhabP9838ZitXFhXOvaspZ4F0wZSxVtt4KrvP0+oBj9
         JrSNEVnho5YPp7ujrhBv0sJR9BFxJ/sxAgnR+EnhXMtonCeYqZNGyOQIzkOGsZemfBhG
         tE86HH6/yvOxjH09s8jmxFLLQhM5sCiJQFXJZPOwrc3yDYG5VpDw/oAhDJexyPTMNaJV
         8T6IDR0QUlB2AQTH2Z4c+fJIw3OIFFjvl9BjknHmcHRewWxJ8l0y+iDiioQuwCF2Culu
         iiGshV9uHA6lpPtbd7/dBy454UHqNJZtVh2A0IMd9SoUja7HgwHVUa/aHA9DTmwM2ZUq
         Y9oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=TJcqRLTGkRKz9FHQqf4DePV8DntfaruYgLq5/UwpsS4=;
        b=iAQthv6GnrHkMjmbrdn5yMaQItEeo8YWA8Otlx+PEU76JVr+9v5zX6GrsFq04QmU5+
         cpgNMS4h+Pbow/mSCvqEcTUQ8eH0TpK7KxA3qx4C2vgC+i4ktbAffhQIra5fuGzMH7P3
         4unm2WYjqe70gpYQ7lX0cOaqlm+D4/WtqiSJCTpjP61ffeLWPLdO5Gn+UcrtMCbRhr/c
         Qu2TN3/wcV/T6lTvh3msRgjBm/ZLKqQmyy0CbTa59dlcjyrssuBVEODmZxB4GU7zqsgW
         QD0S6+4Z6Gj9Xdv6IhMKyOalJiyY0p+gaere8KcgyTGBBeSJWYryJqXvkiMXu3G1KOlJ
         AERw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Da0IH4WY;
       spf=pass (google.com: domain of btiszka@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=btiszka@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <btiszka@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p196sor2402979ioe.272.2017.09.29.18.58.17
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 29 Sep 2017 18:58:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of btiszka@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Da0IH4WY;
       spf=pass (google.com: domain of btiszka@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=btiszka@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=TJcqRLTGkRKz9FHQqf4DePV8DntfaruYgLq5/UwpsS4=;
        b=Da0IH4WYsl220W/xQHxkmlkccdYVkQ7/laSUCmh+KDL6NW/sJILTxwpEKQRLl53vis
         ZziBC4EslAacRTIUnCqwTsb7MGy2S6l1XyrtgGhbDgwJd/3+6S4KABRuRLhpnYMGiqt0
         GLgf2BpqsnW3j13QwUfUSx8DJq+S5tg7vIbnNcCA+a+QSrLfMOQhh0OAnWEJTadGlYs4
         RacwR+XJ8IBREqsvcUXVYa2Uns5J4ruK5X1vBYtQsqj6qU5SAXyawGQQr5w8slI+sUKD
         6wBAYOLPKsXLeiSXGZT5ryH+aHiAVw4gsqVGso+66H5cFflRXkXeEJ7piYr2BYmnBelF
         eCFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=TJcqRLTGkRKz9FHQqf4DePV8DntfaruYgLq5/UwpsS4=;
        b=sD7IpRMzuHJF0qq3d4rHO7i4v1oSHPCyi7BQLFrPLXEsMy40H+3wa9A0UL1Rz1arT/
         RyzXMqYow0Et2zk/8GDFxyJ3GIm1pFeHlnrlJDZPMfB+k9oXrkDueL95c45L4T9ErUSO
         ANJ+XG5ueQtCKR4E0yRP68hvzW5w8KLZvk794T3Cn90mOi6ixBaLLiws5+FGM29/YGE/
         x19QVu2sR5ml8pm9q50eBqsEK5rP1Sy3T1DQjT9BAw904QlYzaLU1OALyPZuYPFdkV08
         AEe+IdaiREOp8tFr3JDMOj3Z16njynIeuC7GrOjV21kksxmS073IJF6i+gdlUgSxez64
         9LyA==
X-Gm-Message-State: AMCzsaWq6S73XXJpMDNjxoa2qOlFz/3NDQ9jaUSn9l4ZEDOlbQsgzMgv
	K9ETpLgAKfaCCl6gZoEwcz4l+O/4/9o1GPvukN3v2TnT
X-Google-Smtp-Source: AOwi7QC+3EM11UASU7uoYq7E3kyXHK5Snduq7LmEWEc1DjVPeXyrz8Xpx+W9f6EDGhpxvtUW+yIu5Qzojx9PsZ1nTvI=
X-Received: by 10.107.222.20 with SMTP id v20mr15020844iog.20.1506736696988;
 Fri, 29 Sep 2017 18:58:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.131.13 with HTTP; Fri, 29 Sep 2017 18:58:16 -0700 (PDT)
In-Reply-To: <20170930014159.3437.34886@222.2.168.192.in-addr.arpa>
References: <20170930014159.3437.34886@222.2.168.192.in-addr.arpa>
From: Brendon Tiszka <btiszka@gmail.com>
Date: Fri, 29 Sep 2017 18:58:16 -0700
Message-ID: <CAGTj=tf5H18CpUYPaF_4JZmeFYi8z_FGjQozvoLb5ZxAe0ci2w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for btiszka@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403043ca86898269b055a5e7913"

--f403043ca86898269b055a5e7913
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

"MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Legal-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc."

On Fri, Sep 29, 2017 at 6:41 PM, <kurt@seifried.org> wrote:

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

--f403043ca86898269b055a5e7913
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:12.8px">I accept.</span></di=
v><div><span style=3D"font-size:12.8px"><br></span></div><span style=3D"fon=
t-size:12.8px">&quot;MITRE CVE Terms of Use</span><br style=3D"font-size:12=
.8px"><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">LICEN=
SE</span><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><spa=
n style=3D"font-size:12.8px">Submissions: For all materials you submit to t=
he Common Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to Th=
e MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perp=
etual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyr=
ight license to reproduce, prepare derivative works of, publicly display, p=
ublicly perform, sublicense, and distribute such materials and derivative w=
orks. Unless required by applicable law or agreed to in writing, you provid=
e such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDI=
TIONS OF ANY KIND, either express or implied, including, without limitation=
, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY,=
 or FITNESS FOR A PARTICULAR PURPOSE.</span><br style=3D"font-size:12.8px">=
<br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">CVE Usage: =
MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, r=
oyalty-free, irrevocable copyright license to reproduce, prepare derivative=
 works of, publicly display, publicly perform, sublicense, and distribute C=
ommon Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make for such=
 purposes is authorized provided that you reproduce MITRE&#39;s copyright d=
esignation and this license in any such copy.</span><br style=3D"font-size:=
12.8px"><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DIS=
CLAIMERS</span><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px=
"><span style=3D"font-size:12.8px">ALL DOCUMENTS AND THE INFORMATION CONTAI=
NED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AN=
D THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (I=
F ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND=
 EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT =
LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT IN=
FRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS F=
OR A PARTICULAR PURPOSE.</span><br style=3D"font-size:12.8px"><br style=3D"=
font-size:12.8px"><span style=3D"font-size:12.8px">A copy is available at=
=C2=A0</span><a href=3D"https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" target=3D"_b=
lank" style=3D"font-size:12.8px">https://github.com/<wbr>distributedweaknes=
sfiling/DWF-<wbr>Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br s=
tyle=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"fon=
t-size:12.8px">To contact the DWF either hit reply, or email=C2=A0</span><a=
 href=3D"mailto:kurt@seifried.org" style=3D"font-size:12.8px">kurt@seifried=
.org</a><span style=3D"font-size:12.8px">=C2=A0manually with your question/=
concerns/etc.&quot;</span></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Sep 29, 2017 at 6:41 PM,  <span dir=3D"ltr">&lt;<a=
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

--f403043ca86898269b055a5e7913--
