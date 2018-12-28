Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp608491vkh;
        Thu, 29 Sep 2016 17:45:23 -0700 (PDT)
X-Received: by 10.202.51.8 with SMTP id z8mr3868143oiz.76.1475196323145;
        Thu, 29 Sep 2016 17:45:23 -0700 (PDT)
Return-Path: <kseifrie@redhat.com>
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com. [209.85.218.43])
        by mx.google.com with ESMTPS id 7si298345ote.4.2016.09.29.17.45.23
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 17:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of kseifrie@redhat.com designates 209.85.218.43 as permitted sender) client-ip=209.85.218.43;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of kseifrie@redhat.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=kseifrie@redhat.com
Received: by mail-oi0-f43.google.com with SMTP id r126so113151984oib.0
        for <kurt@seifried.org>; Thu, 29 Sep 2016 17:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=+QIpjedv68Z/zGsSkqYBPt/unW/ChHbX9vtUwc3AfcM=;
        b=hCwvN+u4+nvplIsEOZB1VRN5wLS2PPK5V2+GUDG6Tf6FV9nkCKccHf6DEAm0ppZmaK
         fO54FCMwCR/5KRMPlC0AkOdo89tcaoGbDqzvdqGBYaHRRAJ908vd0mMPKEPV/hr8p4Mt
         W/E/PsJfvJvDP1UIbh/qdiG9NmNma+v1xUBTputI4BOnWneRU26V7Co7srxQRhN4wZOf
         SDm1mmh8ISfv4AjJD3ueNYgW4JBhxtU5/LV5vn62UtfvDtljubB95RJz8LeZA7hJ/Jz/
         dyX7R8ECJBUy+Sz1R1c9gFouwB0Er+JxIwqQ+bamMGqzeF2LC7dOBSEwt8SVBmyd/tKe
         f1cA==
X-Gm-Message-State: AA6/9Rls2M2oR5KPLVQ8CKQyE3sOqbGuzNzHDou6xJOpAqugNobvdgYRR1/zSd6X2SG69x7Lz4c/nttrRYWX1Kn+
X-Received: by 10.202.104.224 with SMTP id o93mr4138327oik.82.1475196322760;
 Thu, 29 Sep 2016 17:45:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.48.69 with HTTP; Thu, 29 Sep 2016 17:45:22 -0700 (PDT)
In-Reply-To: <CABqVa38mR=6ojMYijdDCJdZLFW3185KbJycq2D+=i17T1=dExg@mail.gmail.com>
References: <CABqVa38mR=6ojMYijdDCJdZLFW3185KbJycq2D+=i17T1=dExg@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Thu, 29 Sep 2016 18:45:22 -0600
Message-ID: <CANO=Ty0e2jNysnDemb8N-5KjZZTuJHLsQ2t7vwmJB+ZJ1jQo6w@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1140f734caf233053daee87c

--001a1140f734caf233053daee87c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Sep 29, 2016 at 6:34 PM, Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md
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
> --
> Kurt Seifried
> kurt@seifried.org
>



--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1140f734caf233053daee87c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Sep 29, 2016 at 6:34 PM, Kurt Seifried <span dir=3D"l=
tr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifrie=
d.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><span style=3D"font-size:12.8px">Hi, I need to confirm that you have ac=
cepted the MITRE Terms of Use for CVE, available at:</span><div style=3D"fo=
nt-size:12.8px"><br></div><div style=3D"font-size:12.8px"><a href=3D"https:=
//github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.=
md" target=3D"_blank">https://github.com/distributed<wbr>weaknessfiling/DWF=
-Database/<wbr>blob/master/TermsOfUse.md</a></div><div style=3D"font-size:1=
2.8px"><br></div><div style=3D"font-size:12.8px">and quoted below, please r=
eply with &quot;I accept&quot; and I&#39;ll be able to process your CVE req=
uest. Thanks!</div><div style=3D"font-size:12.8px"><br></div><div style=3D"=
font-size:12.8px"><h1 style=3D"margin:0px 0px 16px;line-height:1.25;padding=
-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51,51,51);=
font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,he=
lvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji=
&quot;,&quot;segoe ui symbol&quot;">Terms of Use</h1><h2 style=3D"margin-to=
p:24px;margin-bottom:16px;line-height:1.25;padding-bottom:0.3em;border-bott=
om:1px solid rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system=
,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,=
&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui sym=
bol&quot;"><a href=3D"https://github.com/distributedweaknessfiling/DWF-Data=
base/blob/master/TermsOfUse.md#license" style=3D"color:rgb(64,120,192);back=
ground-color:transparent;text-decoration:none;float:left;padding-right:4px;=
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
tabase/blob/master/TermsOfUse.md#disclaimers" style=3D"color:rgb(64,120,192=
);background-color:transparent;text-decoration:none;float:left;padding-righ=
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
CULAR PURPOSE.</p></div><span class=3D"HOEnZb"><font color=3D"#888888"><div=
><br></div>-- <br><div>Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org=
" target=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><b=
r><div><span style=3D"color:rgb(136,136,136);font-size:12.8000001907349px">=
--</span><br style=3D"color:rgb(136,136,136);font-size:12.8000001907349px">=
<span style=3D"color:rgb(136,136,136);font-size:12.8000001907349px">Kurt Se=
ifried -- Red Hat -- Product Security -- Cloud</span><br style=3D"color:rgb=
(136,136,136);font-size:12.8000001907349px"><span style=3D"color:rgb(136,13=
6,136);font-size:12.8000001907349px">PGP A90B F995 7350 148F 66BF 7554 160D=
 4553 5E26 7993</span><br style=3D"color:rgb(136,136,136);font-size:12.8000=
001907349px"><span style=3D"color:rgb(136,136,136);font-size:12.80000019073=
49px">Red Hat Product Security contact:=C2=A0</span><a href=3D"mailto:secal=
ert@redhat.com" style=3D"color:rgb(17,85,204);font-size:12.8000001907349px"=
 target=3D"_blank">secalert@redhat.com</a><br></div></div></div>
</div>

--001a1140f734caf233053daee87c--
