Delivered-To: kurt@seifried.org
Received: by 10.176.0.43 with SMTP id 40csp84742uai;
        Wed, 3 May 2017 08:09:17 -0700 (PDT)
X-Received: by 10.98.206.205 with SMTP id y196mr5626021pfg.108.1493824157747;
        Wed, 03 May 2017 08:09:17 -0700 (PDT)
Return-Path: <don.gilbert@mautic.com>
Received: from mail-pg0-x233.google.com (mail-pg0-x233.google.com. [2607:f8b0:400e:c05::233])
        by mx.google.com with ESMTPS id e9si21054737pgf.99.2017.05.03.08.09.17
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 May 2017 08:09:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of don.gilbert@mautic.com designates 2607:f8b0:400e:c05::233 as permitted sender) client-ip=2607:f8b0:400e:c05::233;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@mautic.com;
       spf=pass (google.com: domain of don.gilbert@mautic.com designates 2607:f8b0:400e:c05::233 as permitted sender) smtp.mailfrom=don.gilbert@mautic.com
Received: by mail-pg0-x233.google.com with SMTP id v1so79812438pgv.1
        for <kurt@seifried.org>; Wed, 03 May 2017 08:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mautic.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=P8vQWojEBYAaJuUnES3+v6cKbeZAH9AQulnuE7H4Uak=;
        b=LwVDSIj7Qt9nd6AGVPugSFR0PAk60Kr9WD28KD9rVuRBhgAljRMuY36h+cDpa+Xmz0
         l1s0tLn5/wJQwkSxM+UL8eSjSYPXE4TTMWhB3p7eOM0gxrJEyVTxDSi2c7kP/9D8KexR
         /tmK8rLLnZgEMW4BotizySJwuahaYCa5+v+x8BLNx5SCkY9afHdMQfyRl44+zfXWpN+F
         jU9dFnbK7KvoHITA/504ttLhftZjec4I84UiLuPwJrRTC4BKSfAMl5QfMEzL5KU1TSPz
         KI+onCNEqE736ne7w0fdjmEKnY4KocgOt7eD+MtrCUmg9/zKl9sCQVlRbFZr7+U4vQBD
         ijBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=P8vQWojEBYAaJuUnES3+v6cKbeZAH9AQulnuE7H4Uak=;
        b=PkWwtK0hb6ca74qITCO47MSzcrFKchUDySbr9t6KGNckcE7BdhRFIntcom94PUjaKr
         FeestrRsKIHUT9zeWAjfV9BxyUeOvwb//zvf8CqFGF6SNAaHl0b9cZGYu/mQvgMpv3yd
         nO+awbMRtlSdOH5pRkDnXL9UZXO+4DbAqXJKPSs1EnBQJPWUcJ3draMQk3Cd4LlGRtae
         dK8IZzN2s94A8o10HCXCNJQBG0k0SQdgS13u4ud6h9j3BBo19qfG9yPqQlUcfL2mIn3K
         Op5BPakRq4A8tjEeGm5RaJLoq5xfeAQH7YA1b1jaMdKFpAuzTRBpcoq+3F0jfsHvDO5M
         XORg==
X-Gm-Message-State: AN3rC/4JCcuiXfNoWWjKKPdk94j2nYu7h0k8+BLvkECB2FzXHHRMdZqV
	xjQIigqEc8mdZqh5od2D0PWL/Wg/gVwDy3E=
X-Received: by 10.84.232.205 with SMTP id x13mr19808696plm.7.1493824157083;
 Wed, 03 May 2017 08:09:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.201 with HTTP; Wed, 3 May 2017 08:09:16 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Don Gilbert <don.gilbert@mautic.com>
Date: Wed, 3 May 2017 11:09:16 -0400
Message-ID: <CAER3PvaBh6OajLV2QQ8q8xYkks8hQsL2DOPbKcf5QE0CW1hmBg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=f403043619243d92b0054ea00a2c

--f403043619243d92b0054ea00a2c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Sorry for the delay on this, it was filtered out. Found it while searching
my emails for CVE related emails.

On Wed, Oct 5, 2016 at 12:41 PM, Kurt Seifried <kurt@seifried.org> wrote:

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

--f403043619243d92b0054ea00a2c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div><br></div><div>Sorry for the delay on this, i=
t was filtered out. Found it while searching my emails for CVE related emai=
ls.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Wed, Oct 5, 2016 at 12:41 PM, Kurt Seifried <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><p class=3D=
"m_-6002007830332972151gmail-m_-323732369566349682gmail-p1" style=3D"font-s=
ize:12.8px"><span class=3D"m_-6002007830332972151gmail-m_-32373236956634968=
2gmail-s1">Hi, I need to confirm that you have accepted the MITRE=C2=A0<spa=
n class=3D"m_-6002007830332972151gmail-il">Terms</span>=C2=A0of=C2=A0<span =
class=3D"m_-6002007830332972151gmail-il">Use</span>=C2=A0for=C2=A0<span cla=
ss=3D"m_-6002007830332972151gmail-il">CVE</span>, available at:</span></p><=
p class=3D"m_-6002007830332972151gmail-m_-323732369566349682gmail-p2" style=
=3D"font-size:12.8px"><a href=3D"https://github.com/distributedweaknessfili=
ng/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://github=
.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUs=
e.md</a><br><span class=3D"m_-6002007830332972151gmail-m_-32373236956634968=
2gmail-s1"></span></p><p class=3D"m_-6002007830332972151gmail-m_-3237323695=
66349682gmail-p2" style=3D"font-size:12.8px">and quoted below, please reply=
 with &quot;I accept&quot; and I&#39;ll be able to process your=C2=A0<span =
class=3D"m_-6002007830332972151gmail-il">CVE</span>=C2=A0request. Thanks!<b=
r><span class=3D"m_-6002007830332972151gmail-m_-323732369566349682gmail-s1"=
></span></p><p class=3D"m_-6002007830332972151gmail-m_-323732369566349682gm=
ail-p2" style=3D"font-size:12.8px"><span class=3D"m_-6002007830332972151gma=
il-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-6002007830332972151gmail=
-il">Use</span><br><span class=3D"m_-6002007830332972151gmail-m_-3237323695=
66349682gmail-s1"></span></p><p class=3D"m_-6002007830332972151gmail-m_-323=
732369566349682gmail-p2" style=3D"font-size:12.8px">LICENSE<br><span class=
=3D"m_-6002007830332972151gmail-m_-323732369566349682gmail-s1"></span></p><=
p class=3D"m_-6002007830332972151gmail-m_-323732369566349682gmail-p1" style=
=3D"font-size:12.8px"><span class=3D"m_-6002007830332972151gmail-m_-3237323=
69566349682gmail-s1">Submissions: For all materials you submit to the Commo=
n Vulnerabilities and Exposures (<span class=3D"m_-6002007830332972151gmail=
-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all=C2=A0<span class=3D"m_-6002007830332972151gmail-il">CVE</span>=C2=A0=
Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-char=
ge, royalty-free, irrevocable copyright license to reproduce, prepare deriv=
ative works of, publicly display, publicly perform, sublicense, and distrib=
ute such materials and derivative works. Unless required by applicable law =
or agreed to in writing, you provide such materials on an &quot;AS IS&quot;=
 BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or imp=
lied, including, without limitation, any warranties or conditions of TITLE,=
 NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</s=
pan></p><p class=3D"m_-6002007830332972151gmail-m_-323732369566349682gmail-=
p1" style=3D"font-size:12.8px"><span class=3D"m_-6002007830332972151gmail-m=
_-323732369566349682gmail-s1"><span class=3D"m_-6002007830332972151gmail-il=
">CVE</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide, no=
n-exclusive, no-charge, royalty-free, irrevocable copyright license to repr=
oduce, prepare derivative works of, publicly display, publicly perform, sub=
license, and distribute Common Vulnerabilities and Exposures (<span class=
=3D"m_-6002007830332972151gmail-il">CVE</span>=C2=AE). Any copy you make fo=
r such purposes is authorized provided that you reproduce MITRE&#39;s copyr=
ight designation and this license in any such copy.</span></p><p class=3D"m=
_-6002007830332972151gmail-m_-323732369566349682gmail-p2" style=3D"font-siz=
e:12.8px">DISCLAIMERS<br><span class=3D"m_-6002007830332972151gmail-m_-3237=
32369566349682gmail-s1"></span></p><p class=3D"m_-6002007830332972151gmail-=
m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_=
-6002007830332972151gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND =
THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quo=
t;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS=
 OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES,=
 OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLI=
ED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"=
m_-6002007830332972151gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN =
WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY O=
R FITNESS FOR A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><font =
color=3D"#888888"><div><br></div>-- <br><div class=3D"m_-600200783033297215=
1gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" tar=
get=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--f403043619243d92b0054ea00a2c--
