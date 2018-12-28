Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp1379325uaa;
        Mon, 10 Apr 2017 11:26:34 -0700 (PDT)
X-Received: by 10.223.151.141 with SMTP id s13mr8340066wrb.39.1491848794602;
        Mon, 10 Apr 2017 11:26:34 -0700 (PDT)
Return-Path: <ydahhrk@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by mx.google.com with ESMTPS id g16si13009081wmi.100.2017.04.10.11.26.34
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Apr 2017 11:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ydahhrk@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ydahhrk@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=ydahhrk@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id u2so44129464wmu.0
        for <kurt@seifried.org>; Mon, 10 Apr 2017 11:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=QQ9Vrb8H0Tutp8YhDFNMDkPvNjBhVASh0c1sK54o5hg=;
        b=QhrvFjTn9/s0cFKIxWmXfbLtA7/a3baBqZZogfA8wpH/WeiwCd5PSw6Vz9uNAIDFQR
         j7x65G1JmiS9eMPb/I92zgRKABbrjaDZqxgUkMxP7h5AfD/JO2CZcSfS6R4Bg2VlcUKq
         nEwzzrL7zuPtTH4pt+NOZjXubCxFEZZzNqfh2aPOSld+fj6dTc8Yzla5FSyzQl2GdtJp
         tNjUfO2akT60VRGAioYkbMKl1EkvE7sAVNNboSSZ685ziDMbeES/1ueIQGwoWyEVHPdI
         Ve59MuhQREhndHaPC7thdfFf7OD1fnbwt/03upeDjZ+WjrRhvwGvUo4W5GwPviNTSiT7
         75ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=QQ9Vrb8H0Tutp8YhDFNMDkPvNjBhVASh0c1sK54o5hg=;
        b=tcJR5gByuhxJRSlrcf3eWA5BSTTgwNb+qKopSNqI81/AiKHxRtcAhgBLHsujMcQgFD
         yCPjq6papz9WJugeGylHOAlGZ6q0NYpP7C+L0qL61aQK9StXy44QtGCF3iTs7LDh69oH
         SwCkcbI5yCVZFbQPicmhB5yITHPBUoAExk3Md6pF73lGXkQ5dT2o2Q8bGu4CzA1pIeLw
         Yin/aN0fENABZpAWkeACAf7+bv678k3HISdYG3biN80YqrywsjTIWNOjsd+GlV7lyBI6
         c9sJP55+Cah/6V7pAQPsi6dWaZBNqz8IZsn7vq4KnmjYxWfS/+qCAP71tw+yJs3N/l41
         eOQg==
X-Gm-Message-State: AN3rC/5k3zRaAT8OqJwjQ4olm+oH5VetQDg1wmufdGVj2iUkv5zjgxvA
	45DE6E0LRn6jx/8g4BOWjHkQd2Je8mr5
X-Received: by 10.28.158.87 with SMTP id h84mr11419583wme.4.1491848794139;
 Mon, 10 Apr 2017 11:26:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.173.108 with HTTP; Mon, 10 Apr 2017 11:26:33 -0700 (PDT)
In-Reply-To: <20170406200857.4090.34372@shiny-2.local>
References: <20170406200857.4090.34372@shiny-2.local>
From: Alberto Leiva <ydahhrk@gmail.com>
Date: Mon, 10 Apr 2017 13:26:33 -0500
Message-ID: <CAA0dE=WMcXqZzV4TcCF-YyhDMkT-O+K1VkoFezptEjJYDMdp4Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ydahhrk@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114b323c6ef4f8054cd41d7a

--001a114b323c6ef4f8054cd41d7a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 6, 2017 at 3:08 PM, <kurt@seifried.org> wrote:

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

--001a114b323c6ef4f8054cd41d7a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Apr 6, 2017 at 3:08 PM,  <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation emai=
l sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"n=
oreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accep=
t the MITRE CVE Terms of Use (assuming you filled out the CVE form and want=
 one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use=
).<br>
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
</blockquote></div><br></div>

--001a114b323c6ef4f8054cd41d7a--
