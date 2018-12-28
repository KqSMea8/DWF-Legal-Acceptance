Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp716853vkh;
        Fri, 30 Sep 2016 00:12:11 -0700 (PDT)
X-Received: by 10.36.111.209 with SMTP id x200mr2788330itb.59.1475219531256;
        Fri, 30 Sep 2016 00:12:11 -0700 (PDT)
Return-Path: <lhinds@redhat.com>
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com. [209.85.214.51])
        by mx.google.com with ESMTPS id v64si9275745ioi.144.2016.09.30.00.12.11
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 00:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lhinds@redhat.com designates 209.85.214.51 as permitted sender) client-ip=209.85.214.51;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of lhinds@redhat.com designates 209.85.214.51 as permitted sender) smtp.mailfrom=lhinds@redhat.com
Received: by mail-it0-f51.google.com with SMTP id r192so29166384ita.0
        for <kurt@seifried.org>; Fri, 30 Sep 2016 00:12:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=0tGhYnLSECni1X4ZlZ+Fl21z5K85m7yJuUfd5GUMBL4=;
        b=T1pMwZfYCoO+z9ufB0r3wh6t0WKrblT3HcOfoL64kn8MQotoyC+0dXJhhVFw5OR+3C
         mU4YGNfqTsR8E0GsWTCU4D4SgZQ21+DC/fEDSr5Frg52BTsKYPqctf10dVCWVVpkrXcO
         csPrxbMy3llbg3WOIxoZ/84ZfIZv+SzSQ0H+WHI6WLzCZcsEQQdUUor3cd7RrZF6WuUH
         ezhqT/O8ew1bQBJo7ItTUsZvszyUhI0O5U0ZCDsuoMV+Vub8fP7yrXdSdtwUqHzLCTF+
         6bgw3Qtfx3UTr28JpJGr1/fyADwItAZeEzduDs9+tZr20RAZSVdfbMXdihzK/aSh4FPl
         Euew==
X-Gm-Message-State: AA6/9Rnbg5Eq3FG946FxgBCM+AxEICxy+2HGWVhqx9u93MZWUmXGtJ9W9IRZ0PY79+Ip0gj+1RXDjneBVTP2lrzd
X-Received: by 10.107.30.69 with SMTP id e66mr7139528ioe.107.1475219530307;
 Fri, 30 Sep 2016 00:12:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.46.35 with HTTP; Fri, 30 Sep 2016 00:12:09 -0700 (PDT)
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: Luke Hinds <lhinds@redhat.com>
Date: Fri, 30 Sep 2016 08:12:09 +0100
Message-ID: <CAKrSGQT5P0S3BAk3Ej0WWC=asXRnpSEDcM4NSGT9iPKhLkY_4Q@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1140f33a11f297053db4508b

--001a1140f33a11f297053db4508b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

(thanks Kurt!).

On Fri, Sep 30, 2016 at 1:31 AM, Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/
> TermsOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Te=
rmsOfUse.md#license>
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
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Te=
rmsOfUse.md#disclaimers>
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
>
>
> --
> Kurt Seifried
> kurt@seifried.org
>



--=20
Luke Hinds | NFV Partner Engineering | Office of Technology | Red Hat
e: lhinds@redhat.com | irc: lhinds @freenode | m: +44 77 45 63 98 84 | t: +=
44
12 52 36 2483

--001a1140f33a11f297053db4508b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div><br></div><div>(thanks Kurt!).=C2=A0</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Sep 30=
, 2016 at 1:31 AM, Kurt Seifried <span dir=3D"ltr">&lt;<a href=3D"mailto:ku=
rt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi, I need to confirm th=
at you have accepted the MITRE Terms of Use for CVE, available at:<div><br>=
</div><div><a href=3D"https://github.com/distributedweaknessfiling/DWF-Data=
base/blob/master/TermsOfUse.md" target=3D"_blank">https://github.com/<wbr>d=
istributedweaknessfiling/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</=
a></div><div><br></div><div>and quoted below, please reply with &quot;I acc=
ept&quot; and I&#39;ll be able to process your CVE request. Thanks!</div><d=
iv><br></div><div><h1 style=3D"margin:0px 0px 16px;line-height:1.25;padding=
-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51,51,51);=
font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,he=
lvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji=
&quot;,&quot;segoe ui symbol&quot;">Terms of Use</h1><h2 style=3D"margin-to=
p:24px;margin-bottom:16px;line-height:1.25;padding-bottom:0.3em;border-bott=
om:1px solid rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system=
,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,=
&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui sym=
bol&quot;"><a href=3D"https://github.com/distributedweaknessfiling/DWF-Data=
base/blob/master/TermsOfUse.md#license" style=3D"background-color:transpare=
nt;color:rgb(64,120,192);text-decoration:none;float:left;padding-right:4px;=
line-height:1" target=3D"_blank"></a>LICENSE</h2><p style=3D"margin-top:0px=
;margin-bottom:16px;color:rgb(51,51,51);font-family:-apple-system,blinkmacs=
ystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;appl=
e color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;=
font-size:16px">Submissions: For all materials you submit to the Common Vul=
nerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corpo=
ration (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldw=
ide, non-exclusive, no-charge, royalty-free, irrevocable copyright license =
to reproduce, prepare derivative works of, publicly display, publicly perfo=
rm, sublicense, and distribute such materials and derivative works. Unless =
required by applicable law or agreed to in writing, you provide such materi=
als on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY =
KIND, either express or implied, including, without limitation, any warrant=
ies or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS F=
OR A PARTICULAR PURPOSE.</p><p style=3D"margin-top:0px;margin-bottom:16px;c=
olor:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe=
 ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&=
quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px">CVE U=
sage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-cha=
rge, royalty-free, irrevocable copyright license to reproduce, prepare deri=
vative works of, publicly display, publicly perform, sublicense, and distri=
bute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make fo=
r such purposes is authorized provided that you reproduce MITRE&#39;s copyr=
ight designation and this license in any such copy.</p><h2 style=3D"margin-=
top:24px;margin-bottom:16px;line-height:1.25;padding-bottom:0.3em;border-bo=
ttom:1px solid rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-syst=
em,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-seri=
f,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui s=
ymbol&quot;"><a href=3D"https://github.com/distributedweaknessfiling/DWF-Da=
tabase/blob/master/TermsOfUse.md#disclaimers" style=3D"background-color:tra=
nsparent;color:rgb(64,120,192);text-decoration:none;float:left;padding-righ=
t:4px;line-height:1" target=3D"_blank"></a>DISCLAIMERS</h2><p style=3D"marg=
in-top:0px;color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont=
,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color e=
moji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size=
:16px;margin-bottom:0px">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREI=
N PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONT=
RIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), TH=
E MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES=
, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO=
 ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY=
 RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTI=
CULAR PURPOSE.</p><span class=3D"HOEnZb"><font color=3D"#888888"><div><br><=
/div><div><br clear=3D"all"><div><br></div>-- <br><div>Kurt Seifried<br><a =
href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a></=
div>
</div></font></span></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><s=
pan style=3D"font-size:12.8px">Luke Hinds | NFV Partner Engineering | Offic=
e of Technology | Red Hat</span><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">e:=C2=A0</span><a href=3D"mailto:lhinds@redhat.com" s=
tyle=3D"color:rgb(17,85,204);font-size:12.8px" target=3D"_blank">lhinds@red=
hat.com</a><span style=3D"font-size:12.8px">=C2=A0| irc: lhinds @freenode |=
 m:=C2=A0</span>+44 77 45 63 98 84<span style=3D"font-size:12.8px">=C2=A0| =
t:=C2=A0</span>+44 12 52 36 2483<br style=3D"font-size:12.8px"></div></div>
</div>

--001a1140f33a11f297053db4508b--
