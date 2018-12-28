Delivered-To: kurt@seifried.org
Received: by 10.31.3.33 with SMTP id 33csp231529vkd;
        Mon, 31 Oct 2016 12:01:52 -0700 (PDT)
X-Received: by 10.28.74.15 with SMTP id x15mr11355886wma.31.1477940512777;
        Mon, 31 Oct 2016 12:01:52 -0700 (PDT)
Return-Path: <keith.lee2012@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by mx.google.com with ESMTPS id 135si26032582wmx.57.2016.10.31.12.01.52
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Oct 2016 12:01:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keith.lee2012@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of keith.lee2012@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=keith.lee2012@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id t79so68146893wmt.0
        for <kurt@seifried.org>; Mon, 31 Oct 2016 12:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Cl+nKcp5tpb9d9L12l+pcYKWgHwDgBWDG1HfRaCEEcI=;
        b=kldWjoaPjFFf8b1zQpfY5UX0T2Attfsyb5yA/KDAS91DpyLFGqDjRQEbLfUDkp5mnv
         9wQ4G1rvHQwVFTHwUn/j7z6StBKmJwWdCbYkv26zg03VldjFTBb5sH8B+Dptso+lKhgS
         DxeeSMDU4lg7G+Xrlq0vQdwON5ZSFLGzHGy5e06GAoDUg5TxLI/PLdnZuVs7Q39fRr32
         lGYmumIFC/bG45JE5x+NVt3GSDnruOtQovdVJsvHolId8l7Ho/vHcq+yVNCMWlp/d7bv
         hKc1r4MVGi8Oz4pT2Km6SsxX4Goerzm6pnPvM3e2sTwZTxuAnCAE3dJegdpoOLNnTWLx
         H4qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Cl+nKcp5tpb9d9L12l+pcYKWgHwDgBWDG1HfRaCEEcI=;
        b=OFPK29rGBKNeVcFSc1bfYBkj063fvRoNXi3sEEUqljk1p2j3GCv5q186O64LQiONfA
         LgQK7IaOfLmdUlcD8UN7jPIuRF/YyRi8OhLTAEROKdZxzUer1k7QYcht5ULje9y5+KCl
         3d8G5mtMDRzR3jEQBegx0EwBDqqiXcwJ+v7Ysirr9KgtDlpMXQj8bGYPFB6Ui2t6KZ0o
         y48QfQazrOF02U9xukwmDITNLUaALCokZGY2ruEys8xFy+1F9wBAFoUKVpN3UrHHs+mT
         rOqoCJ4iP3pLlSQzWGeRRmNgEvCjbkQeFt73K4bZ1i+kETtE/Mqok0wEZjQpXGGy2C26
         DeOg==
X-Gm-Message-State: ABUngvdSpYnXC6Eas1HsmBQo+RaMA6QuuFgD29f2tJQsOMYZifcTPOCCZBEovT47kHWsgh4BOiQOIEzl9l71EA==
X-Received: by 10.28.111.13 with SMTP id k13mr12575489wmc.132.1477940512331;
 Mon, 31 Oct 2016 12:01:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.32.229 with HTTP; Mon, 31 Oct 2016 12:01:51 -0700 (PDT)
In-Reply-To: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
References: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
From: Keith Lee <keith.lee2012@gmail.com>
Date: Tue, 1 Nov 2016 03:01:51 +0800
Message-ID: <CAOysPvVPQ7CDOUsZcAe=C_3n=1buw45ZxEn65rjMpiHJoPcB4g@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE Assignment
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1147c1f03ca48105402dd70d

--001a1147c1f03ca48105402dd70d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.  Thank you

On Tuesday, 1 November 2016, Kurt Seifried <kurt@seifried.org> wrote:

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
> Terms of Use:
>
> https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md#license
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE)
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
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
> <https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md#disclaimers>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD
> OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES,
> EXPRESS
>
> --
> Kurt Seifried
> kurt@seifried.org <javascript:_e(%7B%7D,'cvml','kurt@seifried.org');>
>

--001a1147c1f03ca48105402dd70d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.=C2=A0 Thank you=C2=A0<span></span><br><br>On Tuesday, 1 November =
2016, Kurt Seifried &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.=
org</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span=
 style=3D"font-size:12.8px">Hi, I need to confirm that you have accepted th=
e=C2=A0<span>MITRE</span>=C2=A0<span>Terms</span>=C2=A0of=C2=A0<span>Use</s=
pan>=C2=A0for<br>CVE, available at:<br><br><a href=3D"https://github.com/di=
stributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" rel=3D"nore=
ferrer" target=3D"_blank">https://github.com/distributed<wbr>weaknessfiling=
/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><br>and quoted below, p=
lease reply with &quot;I accept&quot; and I&#39;ll be able to process your =
CVE request. Thanks!<br><br><span>Terms</span>=C2=A0of=C2=A0<span>Use:</spa=
n></span><div><span style=3D"font-size:12.8px"><br></span><a href=3D"https:=
//github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.=
md#license" rel=3D"noreferrer" style=3D"font-size:12.8px" target=3D"_blank"=
>https://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/m=
aster/TermsOfUse.md#<wbr>license</a><div><br style=3D"font-size:12.8px"><sp=
an style=3D"font-size:12.8px">LICENSE<br><br>Submissions: For all materials=
 you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), you he=
reby grant to The=C2=A0<span>MITRE</span>=C2=A0Corporation (<span>MITRE</sp=
an>) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute such materials and derivative works. Unless required b=
y applicable law or agreed to in writing, you provide such materials on an =
&quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, eith=
er express or implied, including, without limitation, any warranties or con=
ditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTI=
CULAR PURPOSE.<br><br>CVE Usage:=C2=A0<span>MITRE</span>=C2=A0hereby grants=
 you a perpetual, worldwide, non-exclusive,<br>no-charge, royalty-free, irr=
evocable copyright license to reproduce,<br>prepare derivative works of, pu=
blicly display, publicly perform,<br>sublicense, and distribute Common Vuln=
erabilities and Exposures (CVE=C2=AE). Any<br>copy you make for such purpos=
es is authorized provided that you reproduce<br><span>MITRE</span>&#39;s co=
pyright designation and this license in any such copy.<br></span><span styl=
e=3D"font-size:12.8px">&lt;</span><a href=3D"https://github.com/distributed=
weaknessfiling/DWF-Database/blob/master/TermsOfUse.md#disclaimers" rel=3D"n=
oreferrer" style=3D"font-size:12.8px" target=3D"_blank">https://github.com/=
distribute<wbr>dweaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md#=
<wbr>disclaimers</a><span style=3D"font-size:12.8px">&gt;</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISCLAIMERS<br><br>A=
LL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY=C2=A0<span>M=
ITRE</span>=C2=A0ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIB=
UTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE=
=C2=A0<span>MITRE</span>=C2=A0CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS,=
 AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS</span><br clear=3D=
"all"><div><br></div>-- <br><div>Kurt Seifried<br><a href=3D"javascript:_e(=
%7B%7D,&#39;cvml&#39;,&#39;kurt@seifried.org&#39;);" target=3D"_blank">kurt=
@seifried.org</a></div>
</div></div></div>
</blockquote>

--001a1147c1f03ca48105402dd70d--
