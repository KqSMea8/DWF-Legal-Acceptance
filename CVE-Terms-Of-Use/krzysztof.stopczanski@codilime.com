Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp3629143ivl;
        Mon, 2 Oct 2017 05:47:59 -0700 (PDT)
X-Received: by 10.176.89.40 with SMTP id n37mr9032060uad.10.1506948479917;
        Mon, 02 Oct 2017 05:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506948479; cv=none;
        d=google.com; s=arc-20160816;
        b=IrbC5/kLw6ExHHKs1dFfX1AHXFsgWO7M/QEmTp1ZUO1GUH1D76H01ll7RIAtxCaBSP
         EOdQ5SkbBgrxjy2XseY+1zMKMKaetFVArsVnqcR1tcWIyRPdbgtSsmbaqhoHhT57WYo0
         T6FE+wEFqozsXKbhHZQQ1F/rM9kt79fDdb8drcxml+jFG/6bAUzBduTEByV5OcmeYRdg
         CgRLbwpdDIkFPDsol2G8CNAZbs+IjiwWsKI0FqDCTwpBvrf7k0uTrSzIFbnN6IRtH3S9
         tSeLwJgvHndAZa0HXM++IijUGWLWGvGT0s4U+j0pmgn/6kXU+e3Frlrl+tD5GIpLQA4U
         R/Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=HfDS3PcaH53S1DWTCrHpKOFesPxPP/QLe28TJhhRWZU=;
        b=kxhOicGExfjnfiPEhnPfiDRkKF3TKgeHPlp6FSPm2OZ6V9cN2BJ1uOeWwRe4TsAv5U
         NhwJU0u5L2/sU+q8Z/+jAqEDQhmxCcCKkFJx5XhBX41o5w/qqn4Qi8hQPYVA02KsJq31
         SyTpOGvXGOHtHlJo4/bKYvSvOE0mmU3VNNExMEI3jXF+HRlT4LNA66PjGZRDYK/9STD3
         e4xfc7a4DEv+6XMPuleFyt/7TpIL5XZAfIcgEpuXLYqRp1QEvAhU97rCvDAB3eyUU50E
         yM+DY+IHAcux713B54Ju6xYKkj+dEixHEHtMcqR6NTgGITjN8alLM/WF7WZK4CuMgjmm
         o/IA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@codilime.com header.s=google header.b=hxwmLY8A;
       spf=pass (google.com: domain of krzysztof.stopczanski@codilime.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.stopczanski@codilime.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codilime.com
Return-Path: <krzysztof.stopczanski@codilime.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id v43sor306311uag.22.2017.10.02.05.47.59
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 02 Oct 2017 05:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.stopczanski@codilime.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@codilime.com header.s=google header.b=hxwmLY8A;
       spf=pass (google.com: domain of krzysztof.stopczanski@codilime.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.stopczanski@codilime.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codilime.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codilime.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=HfDS3PcaH53S1DWTCrHpKOFesPxPP/QLe28TJhhRWZU=;
        b=hxwmLY8AADiWFBSqNDepeMkhrqwG1ffmjf/UXl7webWJJQzuoaAg+30yFYKFzJ+aIS
         9GR1ytvzZcrIAS+t2bUJUOMTWKJtr3qfLyN28Ca+G8Ef+/cyDk2JTURXmdnlWC0sqzEd
         cw2TiGxpFBS4QEShI4RCxI5CrfYjhuwha1PcxHE0OdRdhO41qHgWrgaAKI5mtEwoRT/s
         IMZk9c0Mah+uPn0CzuNqM2cyb0u0Yra01FenZrqrVrG6QeNxnNXyEMHYrFME1iZShZ/y
         SvUFId+dNFkAPMamEnLkV6zc5GcM9th/tKUmtn1FTC488mX9+tg+CotAfDI6AHlUmcGo
         P2ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=HfDS3PcaH53S1DWTCrHpKOFesPxPP/QLe28TJhhRWZU=;
        b=j23+2xxV0E2y4Y7W4wCZc9QjbhE8LMinhtiypXpHw7dZTbfmfCs2apRswq/NlUBwRu
         cEVvFFxCtt1n05ySiKYK0SoK6zOyIPfuz3qdffVFpi20OxdBP3bH72u2W7lR26zePDfp
         eW6OVrhZk9tkmq2atezjiU8p8nK7dvBfHuYFj6bSEpE8QxcyrQPX554OM8quEag2seVB
         RUWUNaLw67UbVCzW+oNdM9pD2nju2o+XHNQIotbo8cAsbI94VuMD3H0Fdk69kznvFtz4
         J01rBfw6QqfAHWi7wjJPB/5qtc1VAEJafPr75HLlCZY7lmBB1NU84UJ0p3kMjlFVx0qj
         OicQ==
X-Gm-Message-State: AMCzsaUId+Hvrb4QaPhHVixJ2oX4dIsWxL+iicK7yFeZqE1/If+6NaEW
	mXFhKrH/+RDkvihU3KrZDW/kAFGs3MYIKlco/63zbXuI3yXRqme1efC3rg/bdpJZ2Cz2h3kpdn5
	nR1el4ktTJ31ekLR0TbQ=
X-Google-Smtp-Source: AOwi7QC0zYmuE31vO7/IKXkd3YzblMA27VPZH54KaviXbV179nbAuewVqhlzOd/PKfuB2Ic6OW3LHYte48nU+rawEzU=
X-Received: by 10.176.75.86 with SMTP id i22mr9411087uaf.112.1506948479184;
 Mon, 02 Oct 2017 05:47:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.129.2 with HTTP; Mon, 2 Oct 2017 05:47:58 -0700 (PDT)
In-Reply-To: <20170930013955.3437.44070@222.2.168.192.in-addr.arpa>
References: <20170930013955.3437.44070@222.2.168.192.in-addr.arpa>
From: =?UTF-8?Q?Krzysztof_Stopcza=C5=84ski?= <krzysztof.stopczanski@codilime.com>
Date: Mon, 2 Oct 2017 14:47:58 +0200
Message-ID: <CA+3i=pitusG81dmJmRnCttc5ZLvdTAroGWk+OwWC3bT8hpnnGA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for krzysztof.stopczanski@codilime.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403045f2faecc4f3a055a8fc876"

--f403045f2faecc4f3a055a8fc876
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I ACCEPT

On Sat, Sep 30, 2017 at 3:39 AM, <kurt@seifried.org> wrote:

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

--=20


-------------------------------
The information in this email is confidential and may be legally=20
privileged, it may contain information that is confidential in CodiLime Sp.=
=20
z o. o. It is intended solely for the addressee. Any access to this email=
=20
by third parties is unauthorized. If you are not the intended recipient of=
=20
this message, any disclosure, copying, distribution or any action=20
undertaken or neglected in reliance thereon is prohibited and may result in=
=20
your liability for damages.

--f403045f2faecc4f3a055a8fc876
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I ACCEPT<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Sat, Sep 30, 2017 at 3:39 AM,  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation email=
 sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"no=
referrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept=
 the MITRE CVE Terms of Use (assuming you filled out the CVE form and want =
one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use)=
.<br>
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

<br>
<p style=3D"font-family:Calibri;margin:0cm 0cm 0.0001pt"><img></p><span sty=
le=3D"color:rgb(118,247,3);font-family:Calibri,sans-serif"><font size=3D"1"=
><div><span style=3D"color:rgb(204,204,204);font-size:9px;background-color:=
rgb(255,255,255)">------------------------------<wbr>-</span></div></font><=
/span><div><span style=3D"color:rgb(204,204,204);font-family:Calibri,sans-s=
erif;font-size:9px;background-color:rgb(255,255,255)">The information in th=
is email is confidential and may be legally privileged, it may contain info=
rmation that is confidential in CodiLime Sp. z o. o. It is intended solely =
for the addressee. Any access to this email by third parties is unauthorize=
d. If you are not the intended recipient of this message, any disclosure, c=
opying, distribution or any action undertaken or neglected in reliance ther=
eon is prohibited and may result in your liability for damages.</span></div=
>
--f403045f2faecc4f3a055a8fc876--
