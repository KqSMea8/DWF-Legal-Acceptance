Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp1335444ivl;
        Sat, 26 May 2018 20:28:01 -0700 (PDT)
X-Received: by 2002:a2e:3c04:: with SMTP id j4-v6mr5266576lja.149.1527391681214;
        Sat, 26 May 2018 20:28:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1527391681; cv=none;
        d=google.com; s=arc-20160816;
        b=CCJOH5UuiHuAD81zejomwjR5gVR0KAFo3HT4bCCeZYDrI+QBwrEbHsCry90n0vygpp
         vgz9FnB8RBS71kKNAwI+ITl8vNXTrE6jGy2vxHJCInjgbLeSSFGvb+gy3paNA2F01Hqq
         ITgQ0COUj82+GshQKMC4bsRo8CI0fepnJFt4gz1Q3mjulwbYFEpoSF5W09ODPuNCV2xT
         TjYz5vHLoyvkR4YtB6TLQso5XdtncCNAGaTuEu28fqtkQmldaxxTN6+ZsMailwZvXX11
         YHBkltE2eReV1YFpmY7y0vTLQEtjW1GqCFRT+aZMD9DRD+PZvIqUxw24MYcLaiUNYCfq
         yV4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=zKLUT7Wlke8CXe0cON0Ei9h8EMh2zxPsX+9QdWLnj9Q=;
        b=Ii73ZGKLtL3IyY6uTAxuXgyeFD39HKwDvTglygvtZaM1v4LAWLPXsx/l53RPPh0z/S
         z6/dHaqMQIpyeB9UzoyBlS8G6sLlRrWNyeECfSOL4LjwYh2ivf8o4OSiNfmJeMuYtHNG
         nAJDMoYu94FR7Y43yE2bdU3Xu55AQCtCBwjga5IE49VkClM4J5qKI493wf0LujfMtyun
         zNTgOhZdoVHJ/WgqPs8MBVrcNAgHUyBrBddkiD+aZnUEZ0Oj36q7fqfP4eUBtWnzJ00m
         0yUsy8hOd7hdxtxdQfONjIVngvMMbB6drf8a+scnpb++93FJRtiPDXH2JSYWVBfkB5DE
         Pm+g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WVMQwflJ;
       spf=pass (google.com: domain of fhalva@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=fhalva@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fhalva@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r15-v6sor5994472ljh.5.2018.05.26.20.28.01
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 26 May 2018 20:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of fhalva@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WVMQwflJ;
       spf=pass (google.com: domain of fhalva@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=fhalva@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=zKLUT7Wlke8CXe0cON0Ei9h8EMh2zxPsX+9QdWLnj9Q=;
        b=WVMQwflJCQMMGKAzEQ8qVp9a0uhrS5fzgwL2TJSunGzTEFwVckJLnnenZQWUcbqbaT
         Op0TDtVR2SWNxGAugT0UKNjpLHr9eTXQ31FXuiL+viCnJcpotynd3rwNSKAFSKemFIpw
         uhquwg5Hso3tKI/I5+zmRA3zELWrZatDD1LaPJElfe/Nx2GtcgiMS4OUeLytCeLo+uAw
         /chcUWggNtEc1r4iLXNpX6HwPqh1cRuOrZ54qbaEN2aQ1eD7WDRWoEtA6335TxOlJeC5
         bjuEK7b2Fo+eJ/jYT9O2OO+j1bvio3J5VPu+uNV6+duRlN+AIOMzUSF5djdd7a74QHek
         lFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=zKLUT7Wlke8CXe0cON0Ei9h8EMh2zxPsX+9QdWLnj9Q=;
        b=ItqiagTXtJDBOgLoY5+NLCIRTXPKjz9P3RwlBe4NS1dmwwwkM4IylALben2l8RR1Z3
         MKbMw0AxJX50k1lRAfNx+RHYXu5/8tHjnv3MUUshzWyZ3GKZ8FwZn0xcE14U7JsQD9CU
         ts9yccgQRvMH7uf5zvIXFPhmGsJOQAYXpISw1aKgyR9Wxg3HCNGL4aqUZM9baEpYligj
         9OpVu1P8MGZhiN8dhD/X/AuQ8vDTrIA/NeSzg+KX5qbJgOpwg+qmzpZJMpup4iE+C5Rf
         tuSENvSK3Gbd48Nhm7pvvwoKzApXh5YP9hJtVJEd1Jc/EoNLxBuX55pyIm09gPpHQ/Zi
         H/xA==
X-Gm-Message-State: ALKqPwfKXe3q+mpp4I5oGlymRYnGn67FfGjub67a/LH3OoUVcB1utS14
	DkXcagCE/SFsOK/W/3TSXq49Uobdr4X+UL86Or7HmA==
X-Google-Smtp-Source: AB8JxZql88iBLSQblBod8HfPVarqObU9tol5Gj8+R3jgyfZtJEaRUQ/x5cfRuZsEJ2RYx0OYGN0kYbGlUqGprGxCFkg=
X-Received: by 2002:a2e:9158:: with SMTP id q24-v6mr5197923ljg.73.1527391680467;
 Sat, 26 May 2018 20:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <20180527031015.8054.42466@shiny-2.local>
In-Reply-To: <20180527031015.8054.42466@shiny-2.local>
From: Faisal AlFaifi <fhalva@gmail.com>
Date: Sun, 27 May 2018 06:27:49 +0300
Message-ID: <CAOZ1vgf7qcT87U2FSDJwysfCLp51tFTG2Qb092oSZ-dhHSgDyg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for fhalva@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000008c164c056d2796bb"

--0000000000008c164c056d2796bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree

"This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when
they were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc."

On Sun, May 27, 2018, 6:10 AM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
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
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--0000000000008c164c056d2796bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree<div><br></div><div>&quot;This is a confirmation email sent from CVE=
 request form at <a href=3D"https://iwantacve.org/">https://iwantacve.org/<=
/a> asking you to accept the MITRE CVE Terms of Use (assuming you filled ou=
t the CVE form and want one, we can&#39;t use the data until you accept the=
 MITRE CVE Terms of Use). <br><br>Simply quote the email and reply with &qu=
ot;I accept&quot; at the top if you agree to the MITRE CVE Terms of Use and=
 we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptan=
ce data at <a href=3D"https://github.com/distributedweaknessfiling/DWF-Lega=
l-Acceptance/tree/master/Terms-Of-Use">https://github.com/distributedweakne=
ssfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br><br>The reaso=
n we use a complete copy of the email is that it provides an artifact showi=
ng that the email address accepted the Terms of Use, when they were accepte=
d and so on. <br><br>If you did not submit a CVE request to the DWF you can=
 safely ignore this message, however we may resend it at some point in the =
future, if you don&#39;t want any future emails simply reply with &quot;uns=
ubscribe&quot; or &quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I=
&#39;ll add your email address to the block list so we don&#39;t spam you w=
ith these, please note that this will prevent you from being able to accept=
 the MITRE CVE Terms of Use via the DWF automatically in future (you&#39;ll=
 have to manually ask). But again, if you have no idea what a CVE is then y=
ou can ignore this/ask to be added to the block list with no problems. <br>=
<br>MITRE CVE Terms of Use<br><br>LICENSE<br><br>Submissions: For all mater=
ials you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), yo=
u hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Autho=
rities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-fre=
e, irrevocable copyright license to reproduce, prepare derivative works of,=
 publicly display, publicly perform, sublicense, and distribute such materi=
als and derivative works. Unless required by applicable law or agreed to in=
 writing, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT=
 WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including=
, without limitation, any warranties or conditions of TITLE, NON-INFRINGEME=
NT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.<br><br>CVE Usage:=
 MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, =
royalty-free, irrevocable copyright license to reproduce, prepare derivativ=
e works of, publicly display, publicly perform, sublicense, and distribute =
Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make for suc=
h purposes is authorized provided that you reproduce MITRE&#39;s copyright =
designation and this license in any such copy.<br><br>DISCLAIMERS<br><br>AL=
L DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PRO=
VIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION H=
E/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BO=
ARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, =
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE =
OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARR=
ANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br><br>A cop=
y is available at <a href=3D"https://github.com/distributedweaknessfiling/D=
WF-Legal-Acceptance/blob/master/Terms-Of-Use.md">https://github.com/distrib=
utedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>=
<br>To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@se=
ifried.org">kurt@seifried.org</a> manually with your question/concerns/etc.=
&quot;<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, May 27, 2=
018, 6:10 AM  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation=
 email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
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
</blockquote></div></div>

--0000000000008c164c056d2796bb--
