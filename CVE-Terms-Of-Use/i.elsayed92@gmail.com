Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp18360vkh;
        Wed, 5 Oct 2016 12:29:00 -0700 (PDT)
X-Received: by 10.28.113.80 with SMTP id m77mr10650497wmc.18.1475695740462;
        Wed, 05 Oct 2016 12:29:00 -0700 (PDT)
Return-Path: <i.elsayed92@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by mx.google.com with ESMTPS id x64si24236235wmf.32.2016.10.05.12.29.00
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 12:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of i.elsayed92@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of i.elsayed92@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=i.elsayed92@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id b201so2297924wmb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 12:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=9w/lHEuG7GYIvbf1iaz5tsZT2jjbiL/qYDAcfcsknLA=;
        b=GFRNS3r9+hZC5qogb1NWfGOPLbcGVuzmSjBhGm/JC8Is+ZUVjWLc9Vi5zoacks/J3N
         3upqkwt42ICTSo5YYktm5sS7lhJEDDi6KBka4n+EcT9bqxhUeFpoTfC44G3Gk2g9cyyH
         b0dYBVCZmKjBoaRrvLdonURw8ppJDatYwXsChkrCWaoiv0yiZHIccI5fGb+KJyd6IPW7
         Ylw0CnfTpHUUOfg6zWRBQ8uY8BO6mxy5Uz0jVscpeSUPrP59nTEfs09xkD8h9UA5zTGJ
         8Bgi1QCmZTS75mE6e/T+tRxHGpr/penbIqP6re9IZvI9QRzpbrIO97dg4+zOrMGA5OD5
         hPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=9w/lHEuG7GYIvbf1iaz5tsZT2jjbiL/qYDAcfcsknLA=;
        b=Wi50c9zuEgyqM7mw4Vn9eiCAm66Zg7cDUIBzQe0uua1AmA+Ey/14dQsp3p2tF8BWsw
         5LXlH70FQKmiUx0WiyUHuTNWZHiWhTpE7X8nN1psbOTQhOd4nBysvxlA7JQWAHM6gyUz
         rk7SPvmGG/34/GAyOrq6ZfwbdnkIxarOjDjtLj3ONuUGjEu7gxMt0GeUoFAK73fwgFEy
         ndcU0KV5nUVXXehLK7flLuSQXTcqOrvxIMwm5ATOPOKZGRwBUuAMAFEO0Q7mh8WgNjBt
         73pekkiZAJVXepbnopSW8rMtrCPLB7lqKK6rfQFRALXIzAaSMPEv8tgCYlhfcRx6ywh2
         apVQ==
X-Gm-Message-State: AA6/9RkfHS5J9NOGKR6SMsGQyRPDZcG7FSVJFd12Xemsuaf/0a2fb6OJPonuFa8bOn2QrOF0SxHAkzfxbzCCpw==
X-Received: by 10.28.150.211 with SMTP id y202mr23606981wmd.6.1475695739918;
 Wed, 05 Oct 2016 12:28:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.57.202 with HTTP; Wed, 5 Oct 2016 12:28:58 -0700 (PDT)
Received: by 10.194.57.202 with HTTP; Wed, 5 Oct 2016 12:28:58 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Ibrahim el-sayed <i.elsayed92@gmail.com>
Date: Wed, 5 Oct 2016 20:28:58 +0100
Message-ID: <CAJvHH_SMdBFMrQTZG2pkfEGwFAzDFsF34SjLzAGe+yF8W7E8xg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a114b2d185fe2a7053e233048

--001a114b2d185fe2a7053e233048
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Oct 5, 2016 6:41 PM, "Kurt Seifried" <kurt@seifried.org> wrote:

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

--001a114b2d185fe2a7053e233048
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Oct 5, 2016 6:=
41 PM, &quot;Kurt Seifried&quot; &lt;<a href=3D"mailto:kurt@seifried.org">k=
urt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><p class=3D"m_-2609683491498550079gmail-m_-3=
23732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-260=
9683491498550079gmail-m_-323732369566349682gmail-s1">Hi, I need to confirm =
that you have accepted the MITRE=C2=A0<span class=3D"m_-2609683491498550079=
gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-2609683491498550079gm=
ail-il">Use</span>=C2=A0for=C2=A0<span class=3D"m_-2609683491498550079gmail=
-il">CVE</span>, available at:</span></p><p class=3D"m_-2609683491498550079=
gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><a href=3D"=
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md" target=3D"_blank">https://github.com/distributed<wbr>weaknessfili=
ng/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span class=3D"m_-260=
9683491498550079gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D=
"m_-2609683491498550079gmail-m_-323732369566349682gmail-p2" style=3D"font-s=
ize:12.8px">and quoted below, please reply with &quot;I accept&quot; and I&=
#39;ll be able to process your=C2=A0<span class=3D"m_-2609683491498550079gm=
ail-il">CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_-2609683491498=
550079gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-260968=
3491498550079gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px=
"><span class=3D"m_-2609683491498550079gmail-il">Terms</span>=C2=A0of=C2=A0=
<span class=3D"m_-2609683491498550079gmail-il">Use</span><br><span class=3D=
"m_-2609683491498550079gmail-m_-323732369566349682gmail-s1"></span></p><p c=
lass=3D"m_-2609683491498550079gmail-m_-323732369566349682gmail-p2" style=3D=
"font-size:12.8px">LICENSE<br><span class=3D"m_-2609683491498550079gmail-m_=
-323732369566349682gmail-s1"></span></p><p class=3D"m_-2609683491498550079g=
mail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=
=3D"m_-2609683491498550079gmail-m_-323732369566349682gmail-s1">Submissions:=
 For all materials you submit to the Common Vulnerabilities and Exposures (=
<span class=3D"m_-2609683491498550079gmail-il">CVE</span>=C2=AE), you hereb=
y grant to The MITRE Corporation (MITRE) and all=C2=A0<span class=3D"m_-260=
9683491498550079gmail-il">CVE</span>=C2=A0Numbering Authorities (CNAs) a pe=
rpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable cop=
yright license to reproduce, prepare derivative works of, publicly display,=
 publicly perform, sublicense, and distribute such materials and derivative=
 works. Unless required by applicable law or agreed to in writing, you prov=
ide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CON=
DITIONS OF ANY KIND, either express or implied, including, without limitati=
on, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILIT=
Y, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=3D"m_-2609683491=
498550079gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><s=
pan class=3D"m_-2609683491498550079gmail-m_-323732369566349682gmail-s1"><sp=
an class=3D"m_-2609683491498550079gmail-il">CVE</span>=C2=A0Usage: MITRE he=
reby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-f=
ree, irrevocable copyright license to reproduce, prepare derivative works o=
f, publicly display, publicly perform, sublicense, and distribute Common Vu=
lnerabilities and Exposures (<span class=3D"m_-2609683491498550079gmail-il"=
>CVE</span>=C2=AE). Any copy you make for such purposes is authorized provi=
ded that you reproduce MITRE&#39;s copyright designation and this license i=
n any such copy.</span></p><p class=3D"m_-2609683491498550079gmail-m_-32373=
2369566349682gmail-p2" style=3D"font-size:12.8px">DISCLAIMERS<br><span clas=
s=3D"m_-2609683491498550079gmail-m_-323732369566349682gmail-s1"></span></p>=
<p class=3D"m_-2609683491498550079gmail-m_-323732369566349682gmail-p1" styl=
e=3D"font-size:12.8px"><span class=3D"m_-2609683491498550079gmail-m_-323732=
369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN P=
ROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIB=
UTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE M=
ITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, D=
ISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO AN=
Y WARRANTY THAT THE=C2=A0<span class=3D"m_-2609683491498550079gmail-il">USE=
</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY=
 IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.=
</span></p><div><br></div>-- <br><div class=3D"m_-2609683491498550079gmail_=
signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"=
_blank">kurt@seifried.org</a></div>
</div>
</blockquote></div></div>

--001a114b2d185fe2a7053e233048--
