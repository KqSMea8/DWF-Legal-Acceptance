Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp184710uag;
        Tue, 9 May 2017 23:39:51 -0700 (PDT)
X-Received: by 10.200.52.157 with SMTP id w29mr4376246qtb.161.1494398391787;
        Tue, 09 May 2017 23:39:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1494398391; cv=none;
        d=google.com; s=arc-20160816;
        b=0pbHCx3IgjjOY+K9uHIFuvLGrbQIzN9qmNpEtmTHFACdBUErz1J4JoHhXQ0Vz+A9I2
         Xe9Zg7A1zZWHnPPavqJVjUwFgUTzNn7nO+eOKOdC8i8t3afZrH2xEzSNlNZoR+PSYnlo
         N4R95dmg4ZWxOmk4S/I+eEKaWhwHtSUHbQqSlH0cAtyTKEuYZ56thcEgXR4itLwVwbWy
         tG4irE1Zv+fba6LYiakkgIMVXFiJaT+aJJmix6i66UT26Hf9YamqULXEuCImV0jRBLuC
         WhJVf37F7++RLJBbW4l6xpQomxACC4BfV50Fct3qmlhzoAu+TIzsg86hhjKRSpw2DC7q
         TWtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=YEChHxEj84lDB1dCFjLC8txabxnlluA8yZ5j6a6aLJI=;
        b=YNH5buLV9AQ9Tvyrtyp0BjrU+w+sOftnbpJwBIKQT11FiNrYrevv4rVbNP0jFzRnvC
         PRC7L6eQNqRFsl4+zwDPqbVG2K49YDadVd8u3A+FeYGePKugEZOy0Jn/AkULlvjYfZbY
         6QhTqmrnDxLtlXSa12Y7qCpPMUtzl4ieQJRYyvBv1jPbXYN7UBEs3hn+JCqjt51sPTkP
         ySasKB8ceXkfX5foDLw7xH+e8Y7i6iD2RwI0GBUMjkOQG54sLPp9F7JUD9EHGqojIwDu
         BePv333Qoq8vCPwaZUjyODoVRpsFqYnNUMsKNcyY8YlPCjz9d/ns8HygqwXTRmlJmR6b
         3dsw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jschoi.2022@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=jschoi.2022@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <jschoi.2022@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by mx.google.com with ESMTPS id y78si2354502qka.94.2017.05.09.23.39.51
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 May 2017 23:39:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jschoi.2022@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jschoi.2022@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=jschoi.2022@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id a72so19651098qkj.2
        for <kurt@seifried.org>; Tue, 09 May 2017 23:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=YEChHxEj84lDB1dCFjLC8txabxnlluA8yZ5j6a6aLJI=;
        b=gMXGlv08b2FqDRgSZ4sFGJ121sWylsC3DM41YRkgpPnOVpPmC3K9BKTATd4glHNoyu
         jqdwOMKMeDJf+tRmpkD1O3C/waIVE39lGHCEkXXnOoYP04vSL4+3BbSUMvBrIr/eRVj/
         lsh7K54CO3cKquEfZCilbINkvq9pA52U74RXfQAXktutf004rFO4/YDQr1n6dsFcJk3R
         2tVYcoe7F0dxBKJKda4mnHpVYh1XKErNRuapuPihs+s/9V/VXF6oN3TvAYckOgozYL1r
         odncVT3K/HUVWNMq4/fTZrsHf7n/1cZrye+L15zS3r7EAaH+6bOLJLcJZM1KZBBUsATi
         gV3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=YEChHxEj84lDB1dCFjLC8txabxnlluA8yZ5j6a6aLJI=;
        b=Xe0BwzYmwJBUzXiYSkwZkR1AfkQs/9pJvREAxkE+T+9Q3RvMiXHG5aqFPkUOub2McY
         WMxYE4lqku9nM9AYhzkiOhWk3FvdRiKDMWR6uG3RUHPsBKxiOYrxE1mxtmf8+b6dJEcT
         o1Q47554FDBS90qvbncLUdHHXPI1fw7ItPMqPJpbi4ZhTpQZjtnYiFTpcvWA+TOP3FpF
         dhQ1vfSMzh1+OpsJf2VdW5GlP0okagwNvWjgE8SgnLFnIk9F6Da6Emr7DJFgFwVW9zWM
         EKp6n9BRNZUNK8ZeIYfk8q3UO1yP8Mdt3CeZT57X+1qnsBjWN/z69zSEXfPGoWwN1l34
         6Bmw==
X-Gm-Message-State: AODbwcBhoWnSSMbZbrZw1ZONuqPHwfEMdE6VxP8NugF5qX7ZsaGFBYBx
	h7cpw/UXkmcH9PSN+ayrE0ltjlBV5A==
X-Received: by 10.55.150.71 with SMTP id y68mr3776108qkd.193.1494398391328;
 Tue, 09 May 2017 23:39:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.203 with HTTP; Tue, 9 May 2017 23:39:50 -0700 (PDT)
In-Reply-To: <20170510023108.8102.3761@bigbox.local>
References: <20170510023108.8102.3761@bigbox.local>
From: Jaeseung Choi <jschoi.2022@gmail.com>
Date: Wed, 10 May 2017 15:39:50 +0900
Message-ID: <CAMe=PL7Xf-qtV2sRMySB50P141c_NTj6dJ36r6CeVkeNxt=e8g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jschoi.2022@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=94eb2c08b89c44a355054f25bd4d

--94eb2c08b89c44a355054f25bd4d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Jaeseung Choi

2017-05-10 11:31 GMT+09:00 <kurt@seifried.org>:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c08b89c44a355054f25bd4d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I accept</div><div><br></div><div>Jaeseung Choi</div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-05-10 11:31 =
GMT+09:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" targe=
t=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">This is a confirmation email sent from CVE request form at <a href=3D=
"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwant=
acve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you=
 filled out the CVE form and want one, we can&#39;t use the data until you =
accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--94eb2c08b89c44a355054f25bd4d--
