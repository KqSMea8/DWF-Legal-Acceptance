Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp5835457ivb;
        Wed, 3 Jan 2018 05:23:15 -0800 (PST)
X-Received: by 10.223.184.183 with SMTP id i52mr1539737wrf.124.1514985795780;
        Wed, 03 Jan 2018 05:23:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1514985795; cv=none;
        d=google.com; s=arc-20160816;
        b=a/TSFfnJc7j/1Tb6aOnqPDTjZUyJ8v5XKQm9ZOUA0t1agAV3kfnQ69KZysqdU0+Ikw
         +GLgcBO2VteaFMSPSh+ULScK5ROks4vrsu4YviEAUVA11DnfVHzvo1HSamWY++Cddt3D
         qQ29KXYzjGTVWD8BeXtDAO84pADfLDZKns82RZ/rSGFf5x1vz/qLFyd+yaJOVknYdDMb
         SD3MfXUEhKLIRJkWz0q7VNt6JiftDzy4oLC/zDZ72t3BeuyQyKHN+hnRzN7FTALUaLu0
         s8HEmhkOOKVaVu9WO/ckdF9kSpdnjfXehUU8W6fa8TySFwbAYIvChazP2vraWGvquMCI
         7L7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=HgVxHsQ3u7Qe6xnfSrVlthfyfWYy65hfKPqzuDoqXgc=;
        b=Y/9cAJ8Ry6O6WxOnL8/72Y38IauE/l3MZM6oPrty314w7NjmgZyGIazCSUoZC55FiP
         1gLW9NBvR1lCEOrn67AQNjqkTUYKel4cnrWEdiRBf3EgeyNBUdDG+ctXiGaPtl1CB7Fu
         6wffpemQ6C1Lw+UdxMWW4lFxt1OwZMb7aEscP0xEH1Th0qqUNATc4/Slq+GZMRKZn453
         4QTCoEsd87TAqZP/tGno/zQY4IO0haOd04QIpMlf/209dHkYR4UPWknjvMMR2fJMd8Az
         dy35e5M9FbqIjsq98g4MkOW/gHvPu4OCQVu8t+7rFlRfHp8cuVM/Z1R9M2wwXxzW6QT+
         T+aA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ripstech-com.20150623.gappssmtp.com header.s=20150623 header.b=H9isWwg7;
       spf=pass (google.com: domain of rperaglie@ripstech.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rperaglie@ripstech.com
Return-Path: <rperaglie@ripstech.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x75sor317609wme.78.2018.01.03.05.23.15
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 03 Jan 2018 05:23:15 -0800 (PST)
Received-SPF: pass (google.com: domain of rperaglie@ripstech.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@ripstech-com.20150623.gappssmtp.com header.s=20150623 header.b=H9isWwg7;
       spf=pass (google.com: domain of rperaglie@ripstech.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rperaglie@ripstech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ripstech-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=HgVxHsQ3u7Qe6xnfSrVlthfyfWYy65hfKPqzuDoqXgc=;
        b=H9isWwg7U1VZEsfJSsM0d6zDXPjlT2aRACjMMaSMK1pqL4nFDjeLHl6bOvtgtdhTgC
         iQi8cXFuiUJADviurqMwNB+vZQ6D4RCkzOEKNNlab8yLhIAP43kQGJuKJVUCrQlX2MjU
         j/KsBtclmhoDxAlPzEPIdSEwpCVSfgXiO3Gr256Dywo3ewdyPFz7z/+QpSwIIHSNzWPR
         0Sa14qMDDkSUCPoItQsnML3Sa1oxfcNTEYen9m0stl8yCg5dtLIs+xBNvaLpsmasKD6d
         P7EgZzqDP0ZeOWA3GdIOzV4VF/CqhX5KIdNvukPYwCccyvCPqGnmZlsDZReuG0460H5f
         x7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=HgVxHsQ3u7Qe6xnfSrVlthfyfWYy65hfKPqzuDoqXgc=;
        b=stb+s09a6liij427kr45H0COJlbIER7riCOVpJUeohtzRd3I+F3ilM/ldgPblRo9km
         /2rTas860EacWaM5UA/YWieFE70Jv3geie1VJEXSg18wf2V4xy2KxhPFsQ7fH4gRnm0S
         mFQe54MVmUelN/AEJZfz5SMpx+NonBEMquyljZhuPhqRbgTq5wQtpbtxlxSbYzpMJ1VV
         g6a7aIdRQsr6mzIDiPPk5nquPYWVLZsMH4B5/wKH9AS2nEjnzMNAQd0jpHMQUPCxh6OM
         8ZWlSMr53TYKtMU79zpm+EUzbxp1GL0RaQb+MogwWat6GfemL4eDUV4jnX1KoOuloVPR
         j8HQ==
X-Gm-Message-State: AKGB3mI/u8eDYynnDlQvmuN0kLcSjT4p7iHr9UAn3j1ocV1o4cYQT+Es
	NHNyon4PSUg7IKz90wpunvAprHeTNcKn1asaJ6ADN3JF
X-Google-Smtp-Source: ACJfBot5mATepkedIKubP8yPRqnloNE2SL35OaK/zcpE/xMXo89+B6q+XreMSwaQIks39bzetfBw7t4u9ALFjYU5m/0=
X-Received: by 10.28.232.208 with SMTP id f77mr1313100wmi.155.1514985794970;
 Wed, 03 Jan 2018 05:23:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.232.201 with HTTP; Wed, 3 Jan 2018 05:23:14 -0800 (PST)
In-Reply-To: <20171227193518.3645.76964@slab.local>
References: <20171227193518.3645.76964@slab.local>
From: Robin Peraglie <rperaglie@ripstech.com>
Date: Wed, 3 Jan 2018 14:23:14 +0100
Message-ID: <CANzmrJM6DmqHfHRVeUAPQF6qb6o8YacCZry3hFoej74FhPQYTw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for rperaglie@ripstech.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1147c1382640b60561df1e11"

--001a1147c1382640b60561df1e11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2017-12-27 20:35 GMT+01:00 <kurt@seifried.org>:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a1147c1382640b60561df1e11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">2017-12-27 20:35 GMT+01:00  <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">This is a confirmation email sent from C=
VE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" ta=
rget=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE C=
VE Terms of Use (assuming you filled out the CVE form and want one, we can&=
#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
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
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--001a1147c1382640b60561df1e11--
