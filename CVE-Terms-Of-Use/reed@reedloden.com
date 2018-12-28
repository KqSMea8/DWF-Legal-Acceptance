Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp615169vkh;
        Thu, 29 Sep 2016 18:07:27 -0700 (PDT)
X-Received: by 10.107.32.85 with SMTP id g82mr5492093iog.233.1475197647413;
        Thu, 29 Sep 2016 18:07:27 -0700 (PDT)
Return-Path: <reed@reedloden.com>
Received: from mail-it0-x22a.google.com (mail-it0-x22a.google.com. [2607:f8b0:4001:c0b::22a])
        by mx.google.com with ESMTPS id 130si1382041its.84.2016.09.29.18.07.27
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 18:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of reed@reedloden.com designates 2607:f8b0:4001:c0b::22a as permitted sender) client-ip=2607:f8b0:4001:c0b::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@reedloden.com;
       spf=pass (google.com: domain of reed@reedloden.com designates 2607:f8b0:4001:c0b::22a as permitted sender) smtp.mailfrom=reed@reedloden.com;
       dmarc=pass (p=NONE dis=NONE) header.from=reedloden.com
Received: by mail-it0-x22a.google.com with SMTP id r192so17983671ita.0
        for <kurt@seifried.org>; Thu, 29 Sep 2016 18:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=WXV2kRZiJLIXsrszgq1D/zn7PoFzCNSuNAwaLhPVDag=;
        b=STPFhGR1H0skH/MJdK8BG7i3EM/4iksDIlvJK2dqCYThULTNUwxIm8le6igRwbTWt5
         s9wzHNjZOcztWGVgNaQ82HOzFcFzUj3+0TpTSY1bDUfUaOUqdQaUGl3oAtLaTTY3nC2S
         R3dvTxEN22YTrIfOmFN91qWKHPxlw9KSOE6vc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=WXV2kRZiJLIXsrszgq1D/zn7PoFzCNSuNAwaLhPVDag=;
        b=JlRIWzgj8jaej4pj90to8Mq6ZOOjnjY3uK/Q9iAZrEz+OSgnI4OzLcnhSKP0ekq6ea
         6JSjkT3F48VRWxRZ6hq94zLlhkpXpGGThMOUF31ejfAJ2hZWWanbxPKlB+j9OjFMIRiV
         Zz7GcSziGFsY3DJ2VtEp6W3OQmPaWQDMC3JACGy43qyaL+n2W14XDNg7Wk+1QFR+YdNs
         71z7SA5ILZogx961ZQaWmM3so5usR65pGrJRTBwzhVgDEmCaNS7nC9m/8cnwLjQXQIQS
         43qcTVBZ3ibD5uMD5FYdr7TT2IjJdt+9lkFeeOLz0lmTfQjek4JYFDwA30Va3NNzrYDu
         Xn5g==
X-Gm-Message-State: AA6/9Rnk3E5GCEliKECSp0uho5tl2OdTsuMJ8yB0r+VQdBA+ADP3J+MbNLTwBY6zRFlKncU9V6UnxGp0u3Ku98fE
X-Received: by 10.36.89.206 with SMTP id p197mr1617312itb.103.1475197646722;
 Thu, 29 Sep 2016 18:07:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.57.5 with HTTP; Thu, 29 Sep 2016 18:07:26 -0700 (PDT)
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: Reed Loden <reed@reedloden.com>
Date: Thu, 29 Sep 2016 18:07:26 -0700
Message-ID: <CALPTtNWzn-eJmSL8LEf8z49JZwPZJEvyFc1R7OHSfYYar_NGxw@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1144060ab4f0fe053daf370a

--001a1144060ab4f0fe053daf370a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

~reed

On Thursday, September 29, 2016, Kurt Seifried <kurt@seifried.org> wrote:

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
> kurt@seifried.org <javascript:_e(%7B%7D,'cvml','kurt@seifried.org');>
>

--001a1144060ab4f0fe053daf370a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.=C2=A0<div><br></div><div>~reed<span></span><br><br>On Thursday, S=
eptember 29, 2016, Kurt Seifried &lt;<a href=3D"mailto:kurt@seifried.org">k=
urt@seifried.org</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">Hi, I need to confirm that you have accepted the MITRE Terms of Us=
e for CVE, available at:<div><br></div><div><a href=3D"https://github.com/d=
istributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"=
_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database=
/blob/master/<wbr>TermsOfUse.md</a></div><div><br></div><div>and quoted bel=
ow, please reply with &quot;I accept&quot; and I&#39;ll be able to process =
your CVE request. Thanks!</div><div><br></div><div><h1 style=3D"margin:0px =
0px 16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid rgb(=
238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfo=
nt,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color=
 emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;">Terms =
of Use</h1><h2 style=3D"margin-top:24px;margin-bottom:16px;line-height:1.25=
;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51=
,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,r=
oboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe =
ui emoji&quot;,&quot;segoe ui symbol&quot;"><a href=3D"https://github.com/d=
istributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#license" st=
yle=3D"background-color:transparent;color:rgb(64,120,192);text-decoration:n=
one;float:left;padding-right:4px;line-height:1" target=3D"_blank"></a>LICEN=
SE</h2><p style=3D"margin-top:0px;margin-bottom:16px;color:rgb(51,51,51);fo=
nt-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helv=
etica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&q=
uot;,&quot;segoe ui symbol&quot;;font-size:16px">Submissions: For all mater=
ials you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), yo=
u hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Autho=
rities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-fre=
e, irrevocable copyright license to reproduce, prepare derivative works of,=
 publicly display, publicly perform, sublicense, and distribute such materi=
als and derivative works. Unless required by applicable law or agreed to in=
 writing, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT=
 WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including=
, without limitation, any warranties or conditions of TITLE, NON-INFRINGEME=
NT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</p><p style=3D"ma=
rgin-top:0px;margin-bottom:16px;color:rgb(51,51,51);font-family:-apple-syst=
em,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-seri=
f,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui s=
ymbol&quot;;font-size:16px">CVE Usage: MITRE hereby grants you a perpetual,=
 worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright l=
icense to reproduce, prepare derivative works of, publicly display, publicl=
y perform, sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided tha=
t you reproduce MITRE&#39;s copyright designation and this license in any s=
uch copy.</p><h2 style=3D"margin-top:24px;margin-bottom:16px;line-height:1.=
25;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(=
51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;=
,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;sego=
e ui emoji&quot;,&quot;segoe ui symbol&quot;"><a href=3D"https://github.com=
/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#disclaime=
rs" style=3D"background-color:transparent;color:rgb(64,120,192);text-decora=
tion:none;float:left;padding-right:4px;line-height:1" target=3D"_blank"></a=
>DISCLAIMERS</h2><p style=3D"margin-top:0px;color:rgb(51,51,51);font-family=
:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,ari=
al,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quo=
t;segoe ui symbol&quot;;font-size:16px;margin-bottom:0px">ALL DOCUMENTS AND=
 THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &qu=
ot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENT=
S OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES=
, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPL=
IED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMAT=
ION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCH=
ANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</p><div><br></div><div><br =
clear=3D"all"><div><br></div>-- <br><div>Kurt Seifried<br><a href=3D"javasc=
ript:_e(%7B%7D,&#39;cvml&#39;,&#39;kurt@seifried.org&#39;);" target=3D"_bla=
nk">kurt@seifried.org</a></div>
</div></div></div>
</blockquote></div>

--001a1144060ab4f0fe053daf370a--
