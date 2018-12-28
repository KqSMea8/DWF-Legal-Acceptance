Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp142182vkh;
        Fri, 7 Oct 2016 19:32:54 -0700 (PDT)
X-Received: by 10.25.212.5 with SMTP id l5mr10464851lfg.73.1475893973955;
        Fri, 07 Oct 2016 19:32:53 -0700 (PDT)
Return-Path: <amies8888test@gmail.com>
Received: from mail-lf0-x22f.google.com (mail-lf0-x22f.google.com. [2a00:1450:4010:c07::22f])
        by mx.google.com with ESMTPS id g74si11488558lfe.83.2016.10.07.19.32.53
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 19:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amies8888test@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) client-ip=2a00:1450:4010:c07::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amies8888test@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) smtp.mailfrom=amies8888test@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22f.google.com with SMTP id b81so53064660lfe.1
        for <kurt@seifried.org>; Fri, 07 Oct 2016 19:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=rEQEsKelR3KWdPgo19GKXbi9oq2qWzwj0IMZPAhoFQY=;
        b=Q+ZnsS82C01hcUjSPQK1GBs38O0UraWrQRWB3rBC9HYJ8UKlP4ZyK7IRKx3q/yb26c
         z03TOZXlPbytiUeP/sI77z/Dxc8lf9waNSJAal3222jpvbWsxzPOL6/QV5/RlNKmOptI
         nDECrwgLTcYcaRDY2vCTnYa3G+KAFujQ28DXticUR6sRACTeaAwFfFyAyOyh2RTqdjkj
         E5Tz2itIZBXvxARasRTaDX2B//h2bVepkQ8jLnNEsvEkwofhFCWdXwZGQNAEx9xY7lDw
         /8vIrOdlrbI8cp6yqreSDGQbwy5JF0chJnEOqBsedq+M+cjyxmEScQxrvWSjz0pwXhwZ
         BjSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=rEQEsKelR3KWdPgo19GKXbi9oq2qWzwj0IMZPAhoFQY=;
        b=JiqQ1XAPuOuPs63NiQFXWJQVoLgeeSWY9LgAGXYgfClvl3s7rvqCdOncpXJRaDQUOQ
         ww7naHeIeGTUVXG2eHLls/oX5isyG4AfSBXGeOMuf3qlTRnrZFEujO/fBofMOLrcbNEs
         Confve1zE879hgfNJoCtppVg1m7NXL0jIxEtZfPACVKmzgmRyiJy4B5aMY9tkWWLHXKT
         jN7FyW0+JJyTb3WtMc/D7CpiRNYvMTrVr1hySar7Q5+8jwfdp5N3XXUhLJ92QJdejSKD
         osbKYWyqGd8HMx87R5N/niuOKTfWZdwrgujdhofxTVoBTg/x1pMsjKgdx/5y03ELFoB9
         R3EQ==
X-Gm-Message-State: AA6/9RnRZ5YFidUSdqK7qvx9prp83loINpNt9mkkx54nALyLa8W8rxwiie31uSDimhSz7qU/q23AcD5GGvS/0A==
X-Received: by 10.25.99.85 with SMTP id x82mr9819214lfb.105.1475893973261;
 Fri, 07 Oct 2016 19:32:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.177.42 with HTTP; Fri, 7 Oct 2016 19:32:52 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: =?UTF-8?B?546L5p2w?= <amies8888test@gmail.com>
Date: Sat, 8 Oct 2016 10:32:52 +0800
Message-ID: <CAP+u1C_dbdvugpnCx9UxETV48sqgQzU8v71UGJpVG+EQ+S7bPQ@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c0e699c00a7bd053e5158f1

--94eb2c0e699c00a7bd053e5158f1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

2016-10-06 0:41 GMT+08:00 Kurt Seifried <kurt@seifried.org>:

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
=AE).
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
> --
> Kurt Seifried
> kurt@seifried.org
>

--94eb2c0e699c00a7bd053e5158f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">2016-10-06 0:41 GMT+08:00 Kurt Seifried <span dir=3D"ltr">&lt=
;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</=
a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><p class=
=3D"m_-1493519809125839814gmail-m_-323732369566349682gmail-p1" style=3D"fon=
t-size:12.8px"><span class=3D"m_-1493519809125839814gmail-m_-32373236956634=
9682gmail-s1">Hi, I need to confirm that you have accepted the MITRE=C2=A0<=
span class=3D"m_-1493519809125839814gmail-il">Terms</span>=C2=A0of=C2=A0<sp=
an class=3D"m_-1493519809125839814gmail-il">Use</span>=C2=A0for=C2=A0<span =
class=3D"m_-1493519809125839814gmail-il">CVE</span>, available at:</span></=
p><p class=3D"m_-1493519809125839814gmail-m_-323732369566349682gmail-p2" st=
yle=3D"font-size:12.8px"><a href=3D"https://github.com/distributedweaknessf=
iling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://git=
hub.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/master/TermsO=
fUse.md</a><br><span class=3D"m_-1493519809125839814gmail-m_-32373236956634=
9682gmail-s1"></span></p><p class=3D"m_-1493519809125839814gmail-m_-3237323=
69566349682gmail-p2" style=3D"font-size:12.8px">and quoted below, please re=
ply with &quot;I accept&quot; and I&#39;ll be able to process your=C2=A0<sp=
an class=3D"m_-1493519809125839814gmail-il">CVE</span>=C2=A0request. Thanks=
!<br><span class=3D"m_-1493519809125839814gmail-m_-323732369566349682gmail-=
s1"></span></p><p class=3D"m_-1493519809125839814gmail-m_-32373236956634968=
2gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_-1493519809125839814=
gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-1493519809125839814gm=
ail-il">Use</span><br><span class=3D"m_-1493519809125839814gmail-m_-3237323=
69566349682gmail-s1"></span></p><p class=3D"m_-1493519809125839814gmail-m_-=
323732369566349682gmail-p2" style=3D"font-size:12.8px">LICENSE<br><span cla=
ss=3D"m_-1493519809125839814gmail-m_-323732369566349682gmail-s1"></span></p=
><p class=3D"m_-1493519809125839814gmail-m_-323732369566349682gmail-p1" sty=
le=3D"font-size:12.8px"><span class=3D"m_-1493519809125839814gmail-m_-32373=
2369566349682gmail-s1">Submissions: For all materials you submit to the Com=
mon Vulnerabilities and Exposures (<span class=3D"m_-1493519809125839814gma=
il-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (MITRE)=
 and all=C2=A0<span class=3D"m_-1493519809125839814gmail-il">CVE</span>=C2=
=A0Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-c=
harge, royalty-free, irrevocable copyright license to reproduce, prepare de=
rivative works of, publicly display, publicly perform, sublicense, and dist=
ribute such materials and derivative works. Unless required by applicable l=
aw or agreed to in writing, you provide such materials on an &quot;AS IS&qu=
ot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or =
implied, including, without limitation, any warranties or conditions of TIT=
LE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.=
</span></p><p class=3D"m_-1493519809125839814gmail-m_-323732369566349682gma=
il-p1" style=3D"font-size:12.8px"><span class=3D"m_-1493519809125839814gmai=
l-m_-323732369566349682gmail-s1"><span class=3D"m_-1493519809125839814gmail=
-il">CVE</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide,=
 non-exclusive, no-charge, royalty-free, irrevocable copyright license to r=
eproduce, prepare derivative works of, publicly display, publicly perform, =
sublicense, and distribute Common Vulnerabilities and Exposures (<span clas=
s=3D"m_-1493519809125839814gmail-il">CVE</span>=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE&#39;s copy=
right designation and this license in any such copy.</span></p><p class=3D"=
m_-1493519809125839814gmail-m_-323732369566349682gmail-p2" style=3D"font-si=
ze:12.8px">DISCLAIMERS<br><span class=3D"m_-1493519809125839814gmail-m_-323=
732369566349682gmail-s1"></span></p><p class=3D"m_-1493519809125839814gmail=
-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m=
_-1493519809125839814gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND=
 THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &qu=
ot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENT=
S OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES=
, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPL=
IED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D=
"m_-1493519809125839814gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN=
 WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY =
OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><font=
 color=3D"#888888"><div><br></div>-- <br><div class=3D"m_-14935198091258398=
14gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" ta=
rget=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--94eb2c0e699c00a7bd053e5158f1--
