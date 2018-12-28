Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp227832vkh;
        Wed, 5 Oct 2016 09:44:53 -0700 (PDT)
X-Received: by 10.233.239.214 with SMTP id d205mr9435000qkg.170.1475685893076;
        Wed, 05 Oct 2016 09:44:53 -0700 (PDT)
Return-Path: <emeric.vernat@gmail.com>
Received: from mail-qt0-x231.google.com (mail-qt0-x231.google.com. [2607:f8b0:400d:c0d::231])
        by mx.google.com with ESMTPS id r84si5719988qkr.160.2016.10.05.09.44.53
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:44:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of emeric.vernat@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) client-ip=2607:f8b0:400d:c0d::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of emeric.vernat@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) smtp.mailfrom=emeric.vernat@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x231.google.com with SMTP id m5so53358580qtb.3
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=7SfwT4YowlGyCr1f2Ja93VU1MU368fbieQ4JbRnbaLE=;
        b=EPZdEnDdaceuKpBHRGkX29Yj6OIoWT59VJfYio3D84knoqjrb+Uu8hkvi0a+t819Wk
         Ij+6x5IjSsS8RQOS5m1zXV6PV9whojY9GgJtvbt2WeiBKLuYVACnWgORgaUZjPv2alOW
         ZkR0hpVQiVPH5U++peybb310K0z2levUF4MftjeqSeNejJ1X9EgRknQWF6jE3fsv1em1
         iiCuGmjrj2GWMqUp+sCAOmlBXo3yG0l/BM2V+9TtGrbygMG4Qy2fk6F87GfhRyyJcSPM
         LnurWLOnZNSywfQCaGvzEwoPAp5k7HKnV9PmgKGX4TZn38r9Q3NUfXww0A7+h040Axi1
         IP/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=7SfwT4YowlGyCr1f2Ja93VU1MU368fbieQ4JbRnbaLE=;
        b=DZHu4Bc1BuV7OkMJCazhV+44XYUlt+wY+RPJTbeHdxaooax61WaRkI3tCq8jjG1HYU
         6LW9iKAF+HpJXx5uzlOruBqdJEZgaj2946it2heznpCljBW+E6jOTCWHUidxuP9A/l60
         wPQQZSPteNug0V3v3e0EX33icEcqgOICSfqZ3nIGoVMZQF2xpg8hg4kK9GUSCWLp63/Q
         IGtjJjIrrwT4YAFoHPqAfOiDWE4IAbQ6A5Z9X7qX0r8t4zFyHfgyMTWWTmC3zOadyFuh
         RDu1BFLhfuHZI2Fx8TT5zXx7CsTRqgCkRjZcV02QhzCW0e1BryyG0C7oJBzDNsxYJ7uF
         yGiA==
X-Gm-Message-State: AA6/9RkMZSJ64+/StXvYBU2NoiFsZy/O8EzfKQVdZeP2zJ59BfNsWojd+8berAuRg++DphvkHpd/D+TB104nbw==
X-Received: by 10.200.56.52 with SMTP id q49mr10095924qtb.23.1475685892610;
 Wed, 05 Oct 2016 09:44:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.163.1 with HTTP; Wed, 5 Oct 2016 09:44:52 -0700 (PDT)
Received: by 10.12.163.1 with HTTP; Wed, 5 Oct 2016 09:44:52 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Emeric Vernat <emeric.vernat@gmail.com>
Date: Wed, 5 Oct 2016 18:44:52 +0200
Message-ID: <CAKvzz83PnZG982i3aYFx0mUQSmgoaWh--Qp+DX65fS7x-9Qqzw@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a113e20526de182053e20e591

--001a113e20526de182053e20e591
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

Thanks,
Emeric

Le 5 oct. 2016 18:41, "Kurt Seifried" <kurt@seifried.org> a =C3=A9crit :

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

--001a113e20526de182053e20e591
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept.</p>
<p dir=3D"ltr">Thanks,<br>
Emeric</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">Le=C2=A05 oct. 20=
16 18:41, &quot;Kurt Seifried&quot; &lt;<a href=3D"mailto:kurt@seifried.org=
">kurt@seifried.org</a>&gt; a =C3=A9crit=C2=A0:<br type=3D"attribution"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><p class=3D"m_-614030973450433=
4398gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span c=
lass=3D"m_-6140309734504334398gmail-m_-323732369566349682gmail-s1">Hi, I ne=
ed to confirm that you have accepted the MITRE=C2=A0<span class=3D"m_-61403=
09734504334398gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-6140309=
734504334398gmail-il">Use</span>=C2=A0for=C2=A0<span class=3D"m_-6140309734=
504334398gmail-il">CVE</span>, available at:</span></p><p class=3D"m_-61403=
09734504334398gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8p=
x"><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blo=
b/master/TermsOfUse.md" target=3D"_blank">https://github.com/distributed<wb=
r>weaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span c=
lass=3D"m_-6140309734504334398gmail-m_-323732369566349682gmail-s1"></span><=
/p><p class=3D"m_-6140309734504334398gmail-m_-323732369566349682gmail-p2" s=
tyle=3D"font-size:12.8px">and quoted below, please reply with &quot;I accep=
t&quot; and I&#39;ll be able to process your=C2=A0<span class=3D"m_-6140309=
734504334398gmail-il">CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_=
-6140309734504334398gmail-m_-323732369566349682gmail-s1"></span></p><p clas=
s=3D"m_-6140309734504334398gmail-m_-323732369566349682gmail-p2" style=3D"fo=
nt-size:12.8px"><span class=3D"m_-6140309734504334398gmail-il">Terms</span>=
=C2=A0of=C2=A0<span class=3D"m_-6140309734504334398gmail-il">Use</span><br>=
<span class=3D"m_-6140309734504334398gmail-m_-323732369566349682gmail-s1"><=
/span></p><p class=3D"m_-6140309734504334398gmail-m_-323732369566349682gmai=
l-p2" style=3D"font-size:12.8px">LICENSE<br><span class=3D"m_-6140309734504=
334398gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-614030=
9734504334398gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px=
"><span class=3D"m_-6140309734504334398gmail-m_-323732369566349682gmail-s1"=
>Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (<span class=3D"m_-6140309734504334398gmail-il">CVE</span>=C2=
=AE), you hereby grant to The MITRE Corporation (MITRE) and all=C2=A0<span =
class=3D"m_-6140309734504334398gmail-il">CVE</span>=C2=A0Numbering Authorit=
ies (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, pu=
blicly display, publicly perform, sublicense, and distribute such materials=
 and derivative works. Unless required by applicable law or agreed to in wr=
iting, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WA=
RRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, w=
ithout limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT,=
 MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=
=3D"m_-6140309734504334398gmail-m_-323732369566349682gmail-p1" style=3D"fon=
t-size:12.8px"><span class=3D"m_-6140309734504334398gmail-m_-32373236956634=
9682gmail-s1"><span class=3D"m_-6140309734504334398gmail-il">CVE</span>=C2=
=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no=
-charge, royalty-free, irrevocable copyright license to reproduce, prepare =
derivative works of, publicly display, publicly perform, sublicense, and di=
stribute Common Vulnerabilities and Exposures (<span class=3D"m_-6140309734=
504334398gmail-il">CVE</span>=C2=AE). Any copy you make for such purposes i=
s authorized provided that you reproduce MITRE&#39;s copyright designation =
and this license in any such copy.</span></p><p class=3D"m_-614030973450433=
4398gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">DISCLAI=
MERS<br><span class=3D"m_-6140309734504334398gmail-m_-323732369566349682gma=
il-s1"></span></p><p class=3D"m_-6140309734504334398gmail-m_-32373236956634=
9682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-6140309734504334=
398gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION C=
ONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BAS=
IS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED =
BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS=
, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT=
 NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_-61403097345043=
34398gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE=
 ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A P=
ARTICULAR PURPOSE.</span></p><div><br></div>-- <br><div class=3D"m_-6140309=
734504334398gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a></div>
</div>
</blockquote></div></div>

--001a113e20526de182053e20e591--
