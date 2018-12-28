Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp108035vkh;
        Wed, 5 Oct 2016 16:38:34 -0700 (PDT)
X-Received: by 10.159.48.27 with SMTP id h27mr9104540uab.11.1475710714102;
        Wed, 05 Oct 2016 16:38:34 -0700 (PDT)
Return-Path: <jared.o.beck@gmail.com>
Received: from mail-ua0-x22f.google.com (mail-ua0-x22f.google.com. [2607:f8b0:400c:c08::22f])
        by mx.google.com with ESMTPS id w188si6586285vkd.183.2016.10.05.16.38.34
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 16:38:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jared.o.beck@gmail.com designates 2607:f8b0:400c:c08::22f as permitted sender) client-ip=2607:f8b0:400c:c08::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jared.o.beck@gmail.com designates 2607:f8b0:400c:c08::22f as permitted sender) smtp.mailfrom=jared.o.beck@gmail.com
Received: by mail-ua0-x22f.google.com with SMTP id r64so2869433uar.3
        for <kurt@seifried.org>; Wed, 05 Oct 2016 16:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=hHo3STObog7QGLWHKHGs0yZ5cF9dcIZjmroNl17e/bg=;
        b=T9QQewi0uxXgtI/6e2fCT4HuHu3+OPWlBx0kNv94XXPauK2mH3POgBqm6PVCmZAeYH
         zOG0NEbkBHV+3aXDwA+1KBlRskp1boj9x6vH9hvF/UsWIsxtXzYUEZ75LvU6vdAuXRel
         DfZwfQl4jZ1qCFcKnx52QAKc/DPIn3c173AAhvhnBwXjOKO/Z5hSvie1TNPzButmD4gs
         Tg9ZuCD2j+/dqVJcmSqxjDKE3Jr4zUIW2Q9EBLuIH7ygdN8XIv3thGXJPmBLizkdVIsZ
         IjCvYB8o5Cm84TtDtGta/Tt6dAMyCqWJcr53OaOtoLaR6ImfPkAsgK7fRDtuD9NSeVFN
         BYAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=hHo3STObog7QGLWHKHGs0yZ5cF9dcIZjmroNl17e/bg=;
        b=ft5BESIPAXNV8qoqZBI2qwhSzScyxULskFtwTMgxJd1SRVpF16hg2+XLfiwq/9/CY7
         AHxH6ovww1698r9AqpwWVMP44tZwA5BHyzhVH+sTCCR9X00OzjvPZiKylFnDG41xTKuF
         lG9djvqm+OySrr+bGbRnfoVcEHUynsCAOG6hF/omiXmtQY9crtYXmyh1bJm4yk+/mKKg
         Wik4G9G0x+bBbuAMJI/W7+lsuv9zQUs+hOuuotJr0lANjqo/zSA9zrhNxfFVN+G/m2bB
         5nGAxS/x4QFdDvnkKabkemnX/uHQmuBKxJ149vpqw+hYDyhxNu8eiJZWu4C+cf3jKczU
         KGzw==
X-Gm-Message-State: AA6/9RmjIJ7ayLH55aPAG1rTw8Z8EG2hqhVkZiJZbxzUYhzUG8q6E+UsKC7EfGqOT+X8DyhYo/nhYKc/d8nNxQ==
X-Received: by 10.176.84.65 with SMTP id o1mr9158620uaa.122.1475710713774;
 Wed, 05 Oct 2016 16:38:33 -0700 (PDT)
MIME-Version: 1.0
Sender: jared.o.beck@gmail.com
Received: by 10.103.42.131 with HTTP; Wed, 5 Oct 2016 16:38:33 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Jared Beck <jared@jaredbeck.com>
Date: Wed, 5 Oct 2016 19:38:33 -0400
X-Google-Sender-Auth: Ci6B2yKiidyBr9N3s98OVPl-mpA
Message-ID: <CA+AUzAO2712-PirnzWzfoC5vt_xLPzWOOLzGhrSOW6rbEWBn4g@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c1b0974e2c70e053e26ac26

--94eb2c1b0974e2c70e053e26ac26
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept. Thanks Kurt

On Wednesday, October 5, 2016, Kurt Seifried <kurt@seifried.org> wrote:

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
> kurt@seifried.org <javascript:_e(%7B%7D,'cvml','kurt@seifried.org');>
>


--=20
Jared Beck =E2=80=A2 (607) 216-5373 =E2=80=A2 jared@jaredbeck.com

--94eb2c1b0974e2c70e053e26ac26
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept. Thanks Kurt=C2=A0<span></span><br><br>On Wednesday, October 5, 20=
16, Kurt Seifried &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.or=
g</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><p styl=
e=3D"font-size:12.8px"><span>Hi, I need to confirm that you have accepted t=
he MITRE=C2=A0<span>Terms</span>=C2=A0of=C2=A0<span>Use</span>=C2=A0for=C2=
=A0<span>CVE</span>, available at:</span></p><p style=3D"font-size:12.8px">=
<a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/m=
aster/TermsOfUse.md" target=3D"_blank">https://github.com/distributed<wbr>w=
eaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span></sp=
an></p><p style=3D"font-size:12.8px">and quoted below, please reply with &q=
uot;I accept&quot; and I&#39;ll be able to process your=C2=A0<span>CVE</spa=
n>=C2=A0request. Thanks!<br><span></span></p><p style=3D"font-size:12.8px">=
<span>Terms</span>=C2=A0of=C2=A0<span>Use</span><br><span></span></p><p sty=
le=3D"font-size:12.8px">LICENSE<br><span></span></p><p style=3D"font-size:1=
2.8px"><span>Submissions: For all materials you submit to the Common Vulner=
abilities and Exposures (<span>CVE</span>=C2=AE), you hereby grant to The M=
ITRE Corporation (MITRE) and all=C2=A0<span>CVE</span>=C2=A0Numbering Autho=
rities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-fre=
e, irrevocable copyright license to reproduce, prepare derivative works of,=
 publicly display, publicly perform, sublicense, and distribute such materi=
als and derivative works. Unless required by applicable law or agreed to in=
 writing, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT=
 WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including=
, without limitation, any warranties or conditions of TITLE, NON-INFRINGEME=
NT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p styl=
e=3D"font-size:12.8px"><span><span>CVE</span>=C2=A0Usage: MITRE hereby gran=
ts you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irre=
vocable copyright license to reproduce, prepare derivative works of, public=
ly display, publicly perform, sublicense, and distribute Common Vulnerabili=
ties and Exposures (<span>CVE</span>=C2=AE). Any copy you make for such pur=
poses is authorized provided that you reproduce MITRE&#39;s copyright desig=
nation and this license in any such copy.</span></p><p style=3D"font-size:1=
2.8px">DISCLAIMERS<br><span></span></p><p style=3D"font-size:12.8px"><span>=
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=
=A0<span>USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY R=
IGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICU=
LAR PURPOSE.</span></p><div><br></div>-- <br><div>Kurt Seifried<br><a href=
=3D"javascript:_e(%7B%7D,&#39;cvml&#39;,&#39;kurt@seifried.org&#39;);" targ=
et=3D"_blank">kurt@seifried.org</a></div>
</div>
</blockquote><br><br>-- <br>Jared Beck =E2=80=A2 (607) 216-5373 =E2=80=A2 <=
a href=3D"mailto:jared@jaredbeck.com" target=3D"_blank">jared@jaredbeck.com=
</a><br>

--94eb2c1b0974e2c70e053e26ac26--
