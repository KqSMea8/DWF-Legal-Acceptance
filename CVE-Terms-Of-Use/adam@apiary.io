Delivered-To: kurt@seifried.org
Received: by 10.31.48.20 with SMTP id w20csp536058vkw;
        Thu, 17 Nov 2016 08:36:32 -0800 (PST)
X-Received: by 10.31.210.130 with SMTP id j124mr2281521vkg.111.1479400592088;
        Thu, 17 Nov 2016 08:36:32 -0800 (PST)
Return-Path: <adam@apiary.io>
Received: from mail-vk0-x22b.google.com (mail-vk0-x22b.google.com. [2607:f8b0:400c:c05::22b])
        by mx.google.com with ESMTPS id c14si913848vka.39.2016.11.17.08.36.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Nov 2016 08:36:31 -0800 (PST)
Received-SPF: pass (google.com: domain of adam@apiary.io designates 2607:f8b0:400c:c05::22b as permitted sender) client-ip=2607:f8b0:400c:c05::22b;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@apiary.io;
       spf=pass (google.com: domain of adam@apiary.io designates 2607:f8b0:400c:c05::22b as permitted sender) smtp.mailfrom=adam@apiary.io;
       dmarc=pass (p=QUARANTINE dis=NONE) header.from=apiary.io
Received: by mail-vk0-x22b.google.com with SMTP id 137so146607527vkl.0
        for <kurt@seifried.org>; Thu, 17 Nov 2016 08:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apiary.io; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=A41ReQO5xJjqbPByXvfSFtaaH3boIYpqQBBqBQJGP+s=;
        b=K5mCJ+X9LmJcLpjbNodmH6c0abCufMyKUOIKWlF5iqtiea+52ZouFLvNPki6stz6rn
         oJn0b2hJojUFO0uLlARX22HDXKpksv3Hhv4B2x4ULFsB0LfVy+gVsk2p/h02d7cLiWWt
         sJgaAzmnguM6djBXQJXSJfn7bfFGf1++WvQwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=A41ReQO5xJjqbPByXvfSFtaaH3boIYpqQBBqBQJGP+s=;
        b=JnJroRLNl4IpXDnivQebBIpJOczkQOl7BjCdWszhbEm+CPdDDuOcRouBTzpAwnG5rz
         x1Y3Ulk/4Enpzh374zfMmlZ8SbwWYF+A4aSym+h/HZcZ6vrudaXDCKMMcsXNRZtD0pdo
         VbjQAZtVhKLBGZHGoDbWxOmjrdy0KlRtXas9ytc4uCHkdEDFct7+q8AhyCtr+2gY3pT8
         Uj9rMXNkn5qutKjQ/J2tzxUDZIhBrfPs4dv2e+wjo4X9KJObcNOcO5gcnle/RCf0LGF4
         Ac62jBknV3BJXzi/DFZM7yBGFPgvzkYTjLVtr/bKQz3hXADGpksZOJ6zEQGAFqFYyy5+
         dwbQ==
X-Gm-Message-State: AKaTC02RGJxKwJiIOiVQ1kmydaCMPwdyUEWGZsrPqbuSSIrqxiNGQKpjYCK0626MfL7PNvPrEUzSeTT/drmDHg==
X-Received: by 10.31.151.13 with SMTP id z13mr2366232vkd.41.1479400591065;
 Thu, 17 Nov 2016 08:36:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.81.137 with HTTP; Thu, 17 Nov 2016 08:36:30 -0800 (PST)
In-Reply-To: <CABqVa3_3FCgMRaoNS1vbJQc2QWrToEj_NGaqkhkXnJh3tOd4hQ@mail.gmail.com>
References: <CABqVa3_3FCgMRaoNS1vbJQc2QWrToEj_NGaqkhkXnJh3tOd4hQ@mail.gmail.com>
From: Adam Kliment <adam@apiary.io>
Date: Thu, 17 Nov 2016 17:36:30 +0100
Message-ID: <CALvZM3gyf3aA6X+fO3Ma2Mm=+jqLXqmPkZWJA05AyF76qKWM1g@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE for adam@apiary.io
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1140fd58b61658054181ca0f

--001a1140fd58b61658054181ca0f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Wednesday, 16 November 2016, Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/bl
> ob/master/TermsOfUse.md
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
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD
> OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES,
> EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF
> THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED
> WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> --
> Kurt Seifried
> kurt@seifried.org <javascript:_e(%7B%7D,'cvml','kurt@seifried.org');>
>

--001a1140fd58b61658054181ca0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept<br><br>On Wednesday, 16 November 2016, Kurt Seifried &lt;<a href=
=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr"><p style=3D"font-size:12.8px"><span>=
Hi, I need to confirm that you have accepted the=C2=A0<span>MITRE</span>=C2=
=A0<span><span>Terms</span></span>=C2=A0of=C2=A0<span><span>Use</span></spa=
n>=C2=A0for=C2=A0<span>CVE</span><wbr>, available at:</span></p><p style=3D=
"font-size:12.8px"><a href=3D"https://github.com/distributedweaknessfiling/=
DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://github.co=
m/distributed<wbr>weaknessfiling/DWF-Database/bl<wbr>ob/master/TermsOfUse.m=
d</a><br><span></span></p><p style=3D"font-size:12.8px">and quoted below, p=
lease reply with &quot;I accept&quot; and I&#39;ll be able to process your=
=C2=A0<span>CVE</span>=C2=A0request. Thanks!<br><span></span></p><p style=
=3D"font-size:12.8px"><span>Terms</span>=C2=A0of=C2=A0<span>Use</span><br><=
span></span></p><p style=3D"font-size:12.8px">LICENSE<br><span></span></p><=
p style=3D"font-size:12.8px"><span>Submissions: For all materials you submi=
t to the Common Vulnerabilities and Exposures (<span>CVE</span>=C2=AE), you=
 hereby grant to The=C2=A0<span>MITRE</span>=C2=A0Corporation (<span>MITRE<=
/span>) and all=C2=A0<span>CVE</span>=C2=A0Numbering Authorities (CNAs) a p=
erpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable co=
pyright license to reproduce, prepare derivative works of, publicly display=
, publicly perform, sublicense, and distribute such materials and derivativ=
e works. Unless required by applicable law or agreed to in writing, you pro=
vide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CO=
NDITIONS OF ANY KIND, either express or implied, including, without limitat=
ion, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILI=
TY, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p style=3D"font-size:12=
.8px"><span><span>CVE</span>=C2=A0Usage:=C2=A0<span>MITRE</span>=C2=A0hereb=
y grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free=
, irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute Common Vulne=
rabilities and Exposures (<span>CVE</span>=C2=AE). Any copy you make for su=
ch purposes is authorized provided that you reproduce=C2=A0<span>MITRE</spa=
n>&#39;s copyright designation and this license in any such copy.</span></p=
><p style=3D"font-size:12.8px">DISCLAIMERS<br><span></span></p><p style=3D"=
font-size:12.8px"><span>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN=
 PROVIDED BY=C2=A0<span>MITRE</span>=C2=A0ARE PROVIDED ON AN &quot;AS IS&qu=
ot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPO=
NSORED BY (IF ANY), THE=C2=A0<span>MITRE</span>=C2=A0CORPORATION, ITS BOARD=
 OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXP=
RESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<s=
pan><span>USE</span></span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRIN=
GE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A=
 PARTICULAR PURPOSE.</span></p><div><br></div>-- <br><div>Kurt Seifried<br>=
<a href=3D"javascript:_e(%7B%7D,&#39;cvml&#39;,&#39;kurt@seifried.org&#39;)=
;" target=3D"_blank">kurt@seifried.org</a></div>
</div>
</blockquote>

--001a1140fd58b61658054181ca0f--
