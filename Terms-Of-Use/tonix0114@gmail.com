Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c8c:0:0:0:0:0 with SMTP id l12-v6csp3484435ocg;
        Sun, 30 Sep 2018 23:33:51 -0700 (PDT)
X-Received: by 2002:a1c:df54:: with SMTP id w81-v6mr7528939wmg.6.1538375631064;
        Sun, 30 Sep 2018 23:33:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538375631; cv=none;
        d=google.com; s=arc-20160816;
        b=bcae/wy9wXhYdx97hp3AQOURZv4Eabbl4Ajmcdq3AO0gdpgdRDl/9D3uNCz3MMHGo5
         gFSOpqp0vFj2l6DYKPmH4al9wvli0hFsYBhkModPeBLOQ0/Fw2MJVv6792xr/vgwv+u8
         KBy+gcfDNvu95UU0+OSKe33XPzTvnzBsB7cbizIwBJmeZD7J0onMY0QTj+ulIX1aCfsG
         m6suLaP9vHAEGaD2xK1V+uQb12ocrPDficeQMMGvcXrOWlIyBvpG3gkR9Hbs1zK6kf8M
         NxWOdMSKieMb2gavro/XaNekiog/98uMigXy8xsgViLbZCc9HZ8olv0HhZl1zktC/JWJ
         O9ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=I2sPpNmHQDMVxiNmOytxkKH/ebAaVsT7U12itpw8UgI=;
        b=Itl4Y7EivlHwidIYlV4kL3GR8qFqeBcAQ4lw43s0PZKH5n330GWbKdPS/iWeCP9fCZ
         20BMWjNa/RSJitwjgN5YpbpUp7YfhWtRflLvjR9NcfH7kxfQlexAo5FzFxBQEsypmRtE
         vQmpdO2mzcas0z+7yWsyy9zNYRGqEpY2GuukiGmElhP6NDqA6j1+mbN3Adjq2nN0+vnY
         irC+YifnarZ5/AGLWVq/N4ifX7qRS4UFr8vszLVTChfgyo34foFxuccEtnb5PGZA2FgZ
         x/NDyHVzTHSGtwaBtvO5cueS12/1O/3jwV6dDVQAg5aiQv61HJ0lYrRG8bCwaGvDZRGN
         QJIw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Br4IvWOu;
       spf=pass (google.com: domain of tonix0114@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tonix0114@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tonix0114@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p8-v6sor5532679wmh.23.2018.09.30.23.33.50
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 30 Sep 2018 23:33:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of tonix0114@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Br4IvWOu;
       spf=pass (google.com: domain of tonix0114@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tonix0114@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=I2sPpNmHQDMVxiNmOytxkKH/ebAaVsT7U12itpw8UgI=;
        b=Br4IvWOubRAQUBLiYZ+A9wrJ440Ao+w0VG7rwihLWnbe5jXKvnXceZBPt16uItGW/p
         c5+rDbDbKVylo6k2YuJb0uQrGpqYy9S/rRn3lh+I7NsDQxMt+t1p0fjlD+WArZ1HD78K
         P6+jgXEycYkw85vRJq8ZvsxYjWmFZ0OXz/rLbVWSPoKlcQ3paSySkmdiNvR1ys1dmUhN
         xTsVDgtR6EsxnkKYP3g/ngCbeJQB6UqyR7hRGPOfjyp5FmA5jqfqp/UB99iUCQnWhE7k
         aGHtH2LCbvwewjlVfG5m7593l9shuuIsidXoYkyRyrV1EyCUVGJAXkfnKFaOmqGoIwfM
         h4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=I2sPpNmHQDMVxiNmOytxkKH/ebAaVsT7U12itpw8UgI=;
        b=l4Sdcf4FYAPapXmPIVnnDr5C5Ohjii04xr6wyCKsnd8U1cE0P+xTMyHkbrKoaaMrZC
         btUFnpyENKCx9wo6mO0YyXzqoSYIwEOJIb9aqTDongnapJQkQZZHYE4CZp7N0mep7sD6
         2G14ltaRmksZXDjCdjEe/rLdZ/v86gTDX3dDVCm35kyPXTAfJeESCVNCJGwRMt+nwCeL
         28qRBsraB4ZT2XIMExOIA7s6YUDU6SPeBFQ75n1ggEKLXmLYc1j+KsrQ09rc88cNXxxU
         umXRxoMHVKoctF0u8dnXvwMuDTfDskUj2BFS7w+8sckaWy3d0+RVSTvVb4bwKoE6Rdtd
         gcPA==
X-Gm-Message-State: ABuFfoioLhXfpsZMFR2Z54WvwRf7AYCn0hwqTI2Woad98h6I249+ztNB
	LuE0nbnhJNFLaDSWcl+IoNX6tyXtBkPmOu3FMTM48Q==
X-Google-Smtp-Source: ACcGV606XR+r9E+/2hfKMjMFRE6mxYmAd2V0QR3KlPnf+PpUEEMThHE9894fLcb9XWUfSpWkirYSpHEhKkYVcJJrGbM=
X-Received: by 2002:a1c:540d:: with SMTP id i13-v6mr701913wmb.149.1538375630165;
 Sun, 30 Sep 2018 23:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <20180928153024.22875.16639@shiny-2.local> <CAHnFUyjzxiurGa_p-RHpvHpAkK_tSQf6zDeAtcngAu7DYKDdmQ@mail.gmail.com>
In-Reply-To: <CAHnFUyjzxiurGa_p-RHpvHpAkK_tSQf6zDeAtcngAu7DYKDdmQ@mail.gmail.com>
From: =?UTF-8?B?7Ius6riw7Jqp?= <tonix0114@gmail.com>
Date: Mon, 1 Oct 2018 15:33:41 +0900
Message-ID: <CAHnFUyiO5CJrZMm1Shh+tmZMOPCQj9uKThQpid5iHY0mMbVsxQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for tonix0114@gmail.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="000000000000f79c3a057724fc96"

--000000000000f79c3a057724fc96
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i accept

2018=EB=85=84 9=EC=9B=94 29=EC=9D=BC (=ED=86=A0) =EC=98=A4=ED=9B=84 11:36, =
=EC=8B=AC=EA=B8=B0=EC=9A=A9 <tonix0114@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=
=91=EC=84=B1:

> =EC=98=88, =EB=8F=99=EC=9D=98=ED=95=A9=EB=8B=88=EB=8B=A4.
>
> 2018=EB=85=84 9=EC=9B=94 29=EC=9D=BC (=ED=86=A0) =EC=98=A4=EC=A0=84 12:30=
, <kurt@seifried.org>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
>> This is a confirmation email sent from CVE request form at
>> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
>> (assuming you filled out the CVE form and want one, we can't use the dat=
a
>> until you accept the MITRE CVE Terms of Use).
>>
>> Simply quote the email and reply with "I accept" at the top if you agree
>> to the MITRE CVE Terms of Use and we will add a copy of the email to the
>> DWF MITRE CVE Terms of Use acceptance data at
>> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/m=
aster/Terms-Of-Use
>>
>> The reason we use a complete copy of the email is that it provides an
>> artifact showing that the email address accepted the Terms of Use, when
>> they were accepted and so on.
>>
>> If you did not submit a CVE request to the DWF you can safely ignore thi=
s
>> message, however we may resend it at some point in the future, if you do=
n't
>> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
>> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list=
 so
>> we don't spam you with these, please note that this will prevent you fro=
m
>> being able to accept the MITRE CVE Terms of Use via the DWF automaticall=
y
>> in future (you'll have to manually ask). But again, if you have no idea
>> what a CVE is then you can ignore this/ask to be added to the block list
>> with no problems.
>>
>> MITRE CVE Terms of Use
>>
>> LICENSE
>>
>> Submissions: For all materials you submit to the Common Vulnerabilities
>> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and
>> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve,
>> no-charge, royalty-free, irrevocable copyright license to reproduce,
>> prepare derivative works of, publicly display, publicly perform,
>> sublicense, and distribute such materials and derivative works. Unless
>> required by applicable law or agreed to in writing, you provide such
>> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
>> KIND, either express or implied, including, without limitation, any
>> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
>> FITNESS FOR A PARTICULAR PURPOSE.
>>
>> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive=
,
>> no-charge, royalty-free, irrevocable copyright license to reproduce,
>> prepare derivative works of, publicly display, publicly perform,
>> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
>> copy you make for such purposes is authorized provided that you reproduc=
e
>> MITRE's copyright designation and this license in any such copy.
>>
>> DISCLAIMERS
>>
>> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE AR=
E
>> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SH=
E
>> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD=
 OF
>> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPR=
ESS
>> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF TH=
E
>> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTI=
ES
>> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>>
>> A copy is available at
>> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/m=
aster/Terms-Of-Use.md
>>
>> To contact the DWF either hit reply, or email kurt@seifried.org manually
>> with your question/concerns/etc.
>>
>>

--000000000000f79c3a057724fc96
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i accept</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">2018=EB=85=84 9=EC=9B=94 29=EC=9D=BC (=ED=86=A0) =EC=98=A4=ED=9B=84 11:=
36, =EC=8B=AC=EA=B8=B0=EC=9A=A9 &lt;<a href=3D"mailto:tonix0114@gmail.com">=
tonix0114@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><font style=3D"vertical-ali=
gn:inherit"><font style=3D"vertical-align:inherit">=EC=98=88, =EB=8F=99=EC=
=9D=98=ED=95=A9=EB=8B=88=EB=8B=A4.=C2=A0</font></font><br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr">2018=EB=85=84 9=EC=9B=94 29=EC=9D=BC (=
=ED=86=A0) =EC=98=A4=EC=A0=84 12:30, &lt;<a href=3D"mailto:kurt@seifried.or=
g" target=3D"_blank">kurt@seifried.org</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=
=EC=84=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation e=
mail sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div>
</blockquote></div>

--000000000000f79c3a057724fc96--
