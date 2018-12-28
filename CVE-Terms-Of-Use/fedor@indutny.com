Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp348269vkh;
        Fri, 7 Oct 2016 04:34:45 -0700 (PDT)
X-Received: by 10.107.39.66 with SMTP id n63mr5590656ion.180.1475840085830;
        Fri, 07 Oct 2016 04:34:45 -0700 (PDT)
Return-Path: <fedor.indutny@gmail.com>
Received: from mail-io0-x22f.google.com (mail-io0-x22f.google.com. [2607:f8b0:4001:c06::22f])
        by mx.google.com with ESMTPS id z207si23640645iof.92.2016.10.07.04.34.45
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 04:34:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of fedor.indutny@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) client-ip=2607:f8b0:4001:c06::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of fedor.indutny@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) smtp.mailfrom=fedor.indutny@gmail.com
Received: by mail-io0-x22f.google.com with SMTP id i202so43940225ioi.2
        for <kurt@seifried.org>; Fri, 07 Oct 2016 04:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=6w8qhZlsHrWCpwvUo6/ACKQ+rVDTvOMnTsXmSdhoqqw=;
        b=w3XqO1YK4Zag94cq5Zj89DXGjAmCqnWV98H0voAhXGJFXA85QyhJ7Jwf3i3CVSImgD
         JpaHcY5Y/6zgaXPbveK1GpXx3cAKt6VlLbKQgI8l0YzckzTgDnx/T8i36mf4rC/eSjl2
         XGCZZrJQSLtbqSbZxRgvq79DMwGAEj9p8HHRNJ/He775imyqI2LGkoxtiCy1yflIOqIn
         Ky2wCjD0Y+EFPoDJHMLCJoHxxT6ysLvV2lK2HGgE/oMquZ7sboPKdbLD9EW8PBfmYLs/
         Q96hMB/Z0XLCo17knkz/QiJOKZncKdAvx9ggAmazbC/vohBoqS2V+QSIIsm8OoQHupY9
         F+kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=6w8qhZlsHrWCpwvUo6/ACKQ+rVDTvOMnTsXmSdhoqqw=;
        b=M0ZFRkyV4r7O2HTBl6/1rK6tsHgrtNsEB/8JPiZrmw61sH70i7NH45xOuedC2XDB0F
         OrmR8i7tI3+rhDEp+x8UZ+8OyK+ObCuJD3OZkm6LlaD+fKJ4rR+NaANLvDrj/NZyBQ/7
         ot+rKOR4HHxsPZsUkRXR+nHiYOTMiYPcJimFDWh6lz0++nFoJmyX7CD0467//GskJUY0
         8Ob1lK+GOkxdAzcdlKTHGL64ZZoIu+FG4BuBDSMTJ8woHSVcLXNUzgBxznx3gm5vZyBs
         P8QfVgo/sQWrP600+pfJdOpqbOY6xw+HEUS+f++5GJ20mshTZ8e3EnBiKhUmehgQnkPz
         tHlw==
X-Gm-Message-State: AA6/9Rl4e7fMlDpYMmBtLSkbJQreAqKW9bkt0WXQ6xB9vfQYoIbpxbkmk/WJQCp2JXyJiVsP1J3eVaU1EXAK8A==
X-Received: by 10.107.154.134 with SMTP id c128mr22679534ioe.184.1475840085021;
 Fri, 07 Oct 2016 04:34:45 -0700 (PDT)
MIME-Version: 1.0
Sender: fedor.indutny@gmail.com
Received: by 10.107.29.148 with HTTP; Fri, 7 Oct 2016 04:34:24 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Fedor Indutny <fedor@indutny.com>
Date: Fri, 7 Oct 2016 13:34:24 +0200
X-Google-Sender-Auth: _CY1f9uvOHTvApXEKqtixpdzYhw
Message-ID: <CAEv2VfJGxAKuw3Q=Naj7KNOE8-958YmsGszAZwUAgdvn2U_1WQ@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1140b9a403600d053e44cc7d

--001a1140b9a403600d053e44cc7d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

On Wed, Oct 5, 2016 at 6:41 PM, Kurt Seifried <kurt@seifried.org> wrote:

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

--001a1140b9a403600d053e44cc7d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Wed, Oct 5, 2016 at 6:41 PM, Kurt Seifried <span dir=3D=
"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifr=
ied.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><p class=3D"m_-8377775228989857352gmail-m_-323732369566349682gmail-p1=
" style=3D"font-size:12.8px"><span class=3D"m_-8377775228989857352gmail-m_-=
323732369566349682gmail-s1">Hi, I need to confirm that you have accepted th=
e MITRE=C2=A0<span class=3D"m_-8377775228989857352gmail-il">Terms</span>=C2=
=A0of=C2=A0<span class=3D"m_-8377775228989857352gmail-il">Use</span>=C2=A0f=
or=C2=A0<span class=3D"m_-8377775228989857352gmail-il">CVE</span>, availabl=
e at:</span></p><p class=3D"m_-8377775228989857352gmail-m_-3237323695663496=
82gmail-p2" style=3D"font-size:12.8px"><a href=3D"https://github.com/distri=
butedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blan=
k">https://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob=
/master/TermsOfUse.md</a><br><span class=3D"m_-8377775228989857352gmail-m_-=
323732369566349682gmail-s1"></span></p><p class=3D"m_-8377775228989857352gm=
ail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">and quoted be=
low, please reply with &quot;I accept&quot; and I&#39;ll be able to process=
 your=C2=A0<span class=3D"m_-8377775228989857352gmail-il">CVE</span>=C2=A0r=
equest. Thanks!<br><span class=3D"m_-8377775228989857352gmail-m_-3237323695=
66349682gmail-s1"></span></p><p class=3D"m_-8377775228989857352gmail-m_-323=
732369566349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_-83777=
75228989857352gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-8377775=
228989857352gmail-il">Use</span><br><span class=3D"m_-8377775228989857352gm=
ail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-83777752289898=
57352gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LICENS=
E<br><span class=3D"m_-8377775228989857352gmail-m_-323732369566349682gmail-=
s1"></span></p><p class=3D"m_-8377775228989857352gmail-m_-32373236956634968=
2gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-8377775228989857352=
gmail-m_-323732369566349682gmail-s1">Submissions: For all materials you sub=
mit to the Common Vulnerabilities and Exposures (<span class=3D"m_-83777752=
28989857352gmail-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corpo=
ration (MITRE) and all=C2=A0<span class=3D"m_-8377775228989857352gmail-il">=
CVE</span>=C2=A0Numbering Authorities (CNAs) a perpetual, worldwide, non-ex=
clusive, no-charge, royalty-free, irrevocable copyright license to reproduc=
e, prepare derivative works of, publicly display, publicly perform, sublice=
nse, and distribute such materials and derivative works. Unless required by=
 applicable law or agreed to in writing, you provide such materials on an &=
quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, eithe=
r express or implied, including, without limitation, any warranties or cond=
itions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTIC=
ULAR PURPOSE.</span></p><p class=3D"m_-8377775228989857352gmail-m_-32373236=
9566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-8377775228=
989857352gmail-m_-323732369566349682gmail-s1"><span class=3D"m_-83777752289=
89857352gmail-il">CVE</span>=C2=A0Usage: MITRE hereby grants you a perpetua=
l, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright=
 license to reproduce, prepare derivative works of, publicly display, publi=
cly perform, sublicense, and distribute Common Vulnerabilities and Exposure=
s (<span class=3D"m_-8377775228989857352gmail-il">CVE</span>=C2=AE). Any co=
py you make for such purposes is authorized provided that you reproduce MIT=
RE&#39;s copyright designation and this license in any such copy.</span></p=
><p class=3D"m_-8377775228989857352gmail-m_-323732369566349682gmail-p2" sty=
le=3D"font-size:12.8px">DISCLAIMERS<br><span class=3D"m_-837777522898985735=
2gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-83777752289=
89857352gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><sp=
an class=3D"m_-8377775228989857352gmail-m_-323732369566349682gmail-s1">ALL =
DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVI=
DED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/=
SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOAR=
D OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EX=
PRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<=
span class=3D"m_-8377775228989857352gmail-il">USE</span>=C2=A0OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MER=
CHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><span class=3D"=
HOEnZb"><font color=3D"#888888"><div><br></div>-- <br><div class=3D"m_-8377=
775228989857352gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@sei=
fried.org" target=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--001a1140b9a403600d053e44cc7d--
