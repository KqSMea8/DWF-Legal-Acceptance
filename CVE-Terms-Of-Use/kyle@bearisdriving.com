Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp601546uaa;
        Sat, 8 Apr 2017 04:17:02 -0700 (PDT)
X-Received: by 10.28.92.65 with SMTP id q62mr3235331wmb.139.1491650222636;
        Sat, 08 Apr 2017 04:17:02 -0700 (PDT)
Return-Path: <kyle@bearisdriving.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by mx.google.com with ESMTPS id l45si12425459wrc.236.2017.04.08.04.17.02
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Apr 2017 04:17:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@bearisdriving.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@bearisdriving-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of kyle@bearisdriving.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=kyle@bearisdriving.com
Received: by mail-wm0-x22c.google.com with SMTP id u2so8069024wmu.0
        for <kurt@seifried.org>; Sat, 08 Apr 2017 04:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bearisdriving-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=kfaY7hJl+O0lByBjmCLlPK3rIj5B8/oQQGfY0jQGZLk=;
        b=16yU5FwPjuAfUytjKNffcfDqO9duoS8FzKcqUSfjv1HdJs0KU8fiqnm41HrxRiyxMm
         yGHNqAel1QjdLal+OJxxLR/fCjsQ0GuBm7C95tkRRUg/auuCqaSj0+fkMbSThNNpN6bS
         rrsbnelb8t4KrCoQLjX7BmBI2TqXfwAQ0DeeozSCUj/jzQSZjxgVuWOn9lmTqIK5Yb9U
         XmaztWLRZvVd/hcAAuc8vPFcDY7BzBe7+u+QdAZx3C4okxpeoM76yvagbNoXsZ2Bbrem
         A+SGvghEByrPiXDSNmc74AwTj4YJiqMaBvQiZBgc3Cbjxf6qcCyopraMuJOVhLDQCoUs
         D2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=kfaY7hJl+O0lByBjmCLlPK3rIj5B8/oQQGfY0jQGZLk=;
        b=ThprkoX28IFTAsJAHJC6Yom1z0+VaGvd9dlnqK1IYKa9FbzNG/sgsN+3CVKrRnn33m
         uLBnSgtWq0VnZGEvwSqmLB64WpI8czKbYW1pzmkT/A2Hmc3i9f46Gr5lCZ82hR+yK+kt
         hd0gQruqLWXkBjkl8qrRkdL2VMopj0ck51tEKSTDODfb0VCu0/iyvrrvZ2hIotdwQU1Q
         Zj0ngxR5Msr0p3qrO0sPb9c61Q5LXYj7hx2YxvTvJSRXMulDvOVBMSjZLP0D/EsMouP8
         i2hmbf4ayv6kgrNEm157029r35BBtDwZwTpmT1c/H4RTh+YhwPYd9LpgVSHz+SFCVEp2
         FH6w==
X-Gm-Message-State: AN3rC/4Uzy2juBtujpDsGywuB9d6Q4zXn5dG2EKTJBvN3lvZAdXLtNO5VjtUNyJvXtdl2Js5HUyi3Secuq3x/g==
X-Received: by 10.28.138.134 with SMTP id m128mr2965327wmd.121.1491650221632;
 Sat, 08 Apr 2017 04:17:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.165.10 with HTTP; Sat, 8 Apr 2017 04:17:00 -0700 (PDT)
Received: by 10.223.165.10 with HTTP; Sat, 8 Apr 2017 04:17:00 -0700 (PDT)
In-Reply-To: <20170406200541.4090.90116@shiny-2.local>
References: <20170406200541.4090.90116@shiny-2.local>
From: Kyle Neideck <kyle@bearisdriving.com>
Date: Sat, 8 Apr 2017 21:17:00 +1000
Message-ID: <CAJdefh_HVpDOav5EdjHj65TwYW3eDrUJPdBkE-J2wacd5gy0uA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kyle@bearisdriving.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114420be971f1f054ca5e1ed

--001a114420be971f1f054ca5e1ed
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

But the vulnerability I submitted has already been assigned CVE-2017-7178.
(Someone from Gentoo Security submitted it through the MITRE web form.)

Thanks,
Kyle Neideck


On 7 Apr 2017 6:05 AM, <kurt@seifried.org> wrote:

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms of
Use acceptance data at https://github.com/distributedweaknessfiling/DWF-
Legal-Acceptance/tree/master/Terms-Of-Use

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

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

--001a114420be971f1f054ca5e1ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept.<div dir=3D"auto"><br></div><div dir=3D"aut=
o">But the vulnerability I submitted has already been assigned CVE-2017-717=
8. (Someone from Gentoo Security submitted it through the MITRE web form.)<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D=
"auto">Kyle Neideck</div><br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On 7 Apr 2017 6:05 AM,  &lt;<a href=3D"mailto:kurt@seifried.org=
">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquote clas=
s=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">This is a confirmation email sent from CVE request form at <a href=
=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iw=
antacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming =
you filled out the CVE form and want one, we can&#39;t use the data until y=
ou accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div></div></div>

--001a114420be971f1f054ca5e1ed--
