Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp238637vkh;
        Wed, 5 Oct 2016 10:07:45 -0700 (PDT)
X-Received: by 10.159.39.227 with SMTP id b90mr7674561uab.60.1475687265036;
        Wed, 05 Oct 2016 10:07:45 -0700 (PDT)
Return-Path: <ahmadsherif24@gmail.com>
Received: from mail-vk0-x22a.google.com (mail-vk0-x22a.google.com. [2607:f8b0:400c:c05::22a])
        by mx.google.com with ESMTPS id 68si17577871uam.104.2016.10.05.10.07.44
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 10:07:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ahmadsherif24@gmail.com designates 2607:f8b0:400c:c05::22a as permitted sender) client-ip=2607:f8b0:400c:c05::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ahmadsherif24@gmail.com designates 2607:f8b0:400c:c05::22a as permitted sender) smtp.mailfrom=ahmadsherif24@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x22a.google.com with SMTP id 192so227517759vkl.2
        for <kurt@seifried.org>; Wed, 05 Oct 2016 10:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=RraIzwEh3Qi38JpccMQUbkMm2mlMIMVMpKTbDYbcwzQ=;
        b=04vvoCHYsWg3EsOVdsWe5NcAkuy+gDmZgDzmEtZ6EcslVwYsrc+9Lmkv0G+E9QcQjI
         wZ0o47loSwr+cXFeeCRck56HIaQ1fIRPdvVU7wq/BCK5e8GyRqjpZ1CzmxG2qZ38ZfnL
         XLOsGATMP2cx/sRbIAd1zH4t6B51quDJKeCjVFqW2rJmbMs97Evk6hYIjsOVRDiW6Eya
         M1YuQ2HHgH7NiV0DD13y5ZuweQDBPH4VNSM7WrZaFxkLsHQjp2ymg1+cJFpXBWcradiT
         yc3waHxQFRfUxGTGuhymYqE8Tk/5klG2nwcXzyp7ArunGZGNmL9JqayBoyOE19lM20cX
         UjrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=RraIzwEh3Qi38JpccMQUbkMm2mlMIMVMpKTbDYbcwzQ=;
        b=C6co0PER/SaMUwVYBHKuTI1yL+uZ7qZIY71LyI5sRSlXp/Kf8tFDKxp1oKqKIjN8gm
         wT21dLJOI9igtFHh6Ca/Yse6orFrJQB+EBtw3m3SFkmY9oOkTk5oYDalzyy3v5triBpt
         3GBw4Omj+ADp8AZ6T7RrTWSv95P0d7Ej1Phr/LZm/Fo8c/z2o+jRY31zC0Ct6iYyxoBG
         AAm+J3OgHWoMwlsjcO/lUiqdd6y78NHxAFD+EID5J8qRXNqCySqu1MDbAM1T490Uum9x
         XWhL9/ywXjHlXgzZWHEzVDS4WW/5KPl25AAZIdgzJYqPft0dJCG6XtBW9AXWu1cRdwx0
         C8Xg==
X-Gm-Message-State: AA6/9Rl0hTx+JfLlFfth2eaKqGAaSv2ec9zZKr6AlBkdxuRCfcFJdW+g3nz0uan3pmYdfwk/lsaxGiLympRL6g==
X-Received: by 10.31.238.11 with SMTP id m11mr7669306vkh.27.1475687264167;
 Wed, 05 Oct 2016 10:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.27.149 with HTTP; Wed, 5 Oct 2016 10:07:43 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: ahmed sherif <ahmadsherif24@gmail.com>
Date: Wed, 5 Oct 2016 19:07:43 +0200
Message-ID: <CAAcuXE2v9DtubOrmFPb4Yd-dcmUk7mLZo+EuQw+7aAWxzq71EA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c14c5722e2cc4053e213749

--94eb2c14c5722e2cc4053e213749
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Kurt,

Thanks for your email . Yes I accept .

Looking forward to hearing from you,

Best Regards,


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



--=20

*Ahmed Sherif ,*
*Information Security Engineer , EG-CERT*
* National Telecom. Regulatory Authority  (NTRA)*
Phone :(+202) 3534 4086
Mobile :(+2) 012289 189 46

--94eb2c14c5722e2cc4053e213749
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Kurt, <br><br></div>Thanks for your emai=
l . Yes I accept .<br><br></div>Looking forward to hearing from you,<br><br=
></div>Best Regards,<br><br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Wed, Oct 5, 2016 at 6:41 PM, Kurt Seifried <span dir=3D=
"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifr=
ied.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><p class=3D"m_3711283659884036002gmail-m_-323732369566349682gmail-p1"=
 style=3D"font-size:12.8px"><span class=3D"m_3711283659884036002gmail-m_-32=
3732369566349682gmail-s1">Hi, I need to confirm that you have accepted the =
MITRE=C2=A0<span class=3D"m_3711283659884036002gmail-il">Terms</span>=C2=A0=
of=C2=A0<span class=3D"m_3711283659884036002gmail-il">Use</span>=C2=A0for=
=C2=A0<span class=3D"m_3711283659884036002gmail-il">CVE</span>, available a=
t:</span></p><p class=3D"m_3711283659884036002gmail-m_-323732369566349682gm=
ail-p2" style=3D"font-size:12.8px"><a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">h=
ttps://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/mas=
ter/TermsOfUse.md</a><br><span class=3D"m_3711283659884036002gmail-m_-32373=
2369566349682gmail-s1"></span></p><p class=3D"m_3711283659884036002gmail-m_=
-323732369566349682gmail-p2" style=3D"font-size:12.8px">and quoted below, p=
lease reply with &quot;I accept&quot; and I&#39;ll be able to process your=
=C2=A0<span class=3D"m_3711283659884036002gmail-il">CVE</span>=C2=A0request=
. Thanks!<br><span class=3D"m_3711283659884036002gmail-m_-32373236956634968=
2gmail-s1"></span></p><p class=3D"m_3711283659884036002gmail-m_-32373236956=
6349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_37112836598840=
36002gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_37112836598840360=
02gmail-il">Use</span><br><span class=3D"m_3711283659884036002gmail-m_-3237=
32369566349682gmail-s1"></span></p><p class=3D"m_3711283659884036002gmail-m=
_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LICENSE<br><span c=
lass=3D"m_3711283659884036002gmail-m_-323732369566349682gmail-s1"></span></=
p><p class=3D"m_3711283659884036002gmail-m_-323732369566349682gmail-p1" sty=
le=3D"font-size:12.8px"><span class=3D"m_3711283659884036002gmail-m_-323732=
369566349682gmail-s1">Submissions: For all materials you submit to the Comm=
on Vulnerabilities and Exposures (<span class=3D"m_3711283659884036002gmail=
-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all=C2=A0<span class=3D"m_3711283659884036002gmail-il">CVE</span>=C2=A0N=
umbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charg=
e, royalty-free, irrevocable copyright license to reproduce, prepare deriva=
tive works of, publicly display, publicly perform, sublicense, and distribu=
te such materials and derivative works. Unless required by applicable law o=
r agreed to in writing, you provide such materials on an &quot;AS IS&quot; =
BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impl=
ied, including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</sp=
an></p><p class=3D"m_3711283659884036002gmail-m_-323732369566349682gmail-p1=
" style=3D"font-size:12.8px"><span class=3D"m_3711283659884036002gmail-m_-3=
23732369566349682gmail-s1"><span class=3D"m_3711283659884036002gmail-il">CV=
E</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-ex=
clusive, no-charge, royalty-free, irrevocable copyright license to reproduc=
e, prepare derivative works of, publicly display, publicly perform, sublice=
nse, and distribute Common Vulnerabilities and Exposures (<span class=3D"m_=
3711283659884036002gmail-il">CVE</span>=C2=AE). Any copy you make for such =
purposes is authorized provided that you reproduce MITRE&#39;s copyright de=
signation and this license in any such copy.</span></p><p class=3D"m_371128=
3659884036002gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px=
">DISCLAIMERS<br><span class=3D"m_3711283659884036002gmail-m_-3237323695663=
49682gmail-s1"></span></p><p class=3D"m_3711283659884036002gmail-m_-3237323=
69566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_3711283659=
884036002gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMA=
TION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quo=
t; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPON=
SORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, =
AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDI=
NG BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_371128365=
9884036002gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INF=
RINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FO=
R A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><font color=3D"#88=
8888"><div><br></div>-- <br><div class=3D"m_3711283659884036002gmail_signat=
ure">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"t=
ext-align:left"><div dir=3D"ltr"><p dir=3D"RTL" style=3D"direction:rtl">
<b><span dir=3D"LTR" style=3D"font-size:18.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:black;background:white" lang=3D"EN-US">Ahmed Sherif ,<=
/span></b><span dir=3D"LTR" style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:black;background:white" lang=3D"EN-US"><br>
</span><b><span dir=3D"LTR" style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:#999999;background:white" lang=3D"EN-US">Information Security En=
gineer , EG-CERT</span></b><b><span dir=3D"LTR" style=3D"font-size:8.0pt;fo=
nt-family:&quot;Tahoma&quot;,sans-serif;color:gray;background:white" lang=
=3D"EN-US"><br>
National Telecom. Regulatory Authority=C2=A0 (NTRA)</span></b><span dir=3D"=
LTR" style=3D"font-size:7.5pt;font-family:&quot;Tahoma&quot;,sans-serif;col=
or:navy;background:white" lang=3D"EN-US"><br>
Phone :(+202) 3534 4086<br>
Mobile :(+2) 012289 189 46</span><span dir=3D"LTR" lang=3D"EN-US"></span></=
p>

<span dir=3D"RTL"></span><span dir=3D"RTL" style=3D"color:#888888" lang=3D"=
AR-SA"><span dir=3D"RTL"></span></span></div></div></div></div>
</div>

--94eb2c14c5722e2cc4053e213749--
