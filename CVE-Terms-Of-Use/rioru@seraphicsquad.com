Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp846416uaa;
        Thu, 6 Apr 2017 13:11:28 -0700 (PDT)
X-Received: by 10.28.111.136 with SMTP id c8mr25826327wmi.128.1491509488811;
        Thu, 06 Apr 2017 13:11:28 -0700 (PDT)
Return-Path: <rioru@seraphicsquad.com>
Received: from mail-wr0-x22f.google.com (mail-wr0-x22f.google.com. [2a00:1450:400c:c0c::22f])
        by mx.google.com with ESMTPS id 43si4015273wru.100.2017.04.06.13.11.28
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:11:28 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c0c::22f is neither permitted nor denied by best guess record for domain of rioru@seraphicsquad.com) client-ip=2a00:1450:400c:c0c::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@seraphicsquad-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2a00:1450:400c:c0c::22f is neither permitted nor denied by best guess record for domain of rioru@seraphicsquad.com) smtp.mailfrom=rioru@seraphicsquad.com
Received: by mail-wr0-x22f.google.com with SMTP id t20so79170081wra.1
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seraphicsquad-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=jR8rEQulSmWR3R9W7Ve/yYYlmkwfw4zsk1iCjKe7ok8=;
        b=yfryywZ2fz69mbwDqRik3M4wCG2hTC9NCV/LPoTpzrHWB3G9uJTvkR9SesuwWCaDug
         eo+lzflt1T6GlL7QpGM4B/4oXcCOW5ArGGE4T4GFpjtUQBbVSw5QCWA/GDSsUyEuJgde
         1R03rpV6c5wiq8W3x4sBdDt6XB4Lv9Q0xEstD8ARAvwdXDvnIsPrGHrysGGwxdYW+nha
         kxMjXtbmnM1IS9h0NOPCi8XJZIy+erNeskNmDxLl5jkWAGbBxcq4/8yNGVkrSXs7YIZ7
         Leeeev7OfWgJABPTY+Yre7dCeBebrtX5Yp5R9/LOrBrmTrYh7pmLgEQL0QEjJkgQj3yA
         cGsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=jR8rEQulSmWR3R9W7Ve/yYYlmkwfw4zsk1iCjKe7ok8=;
        b=prV1DSH5I+kMzObnXZo9CJmSCGyLID+MJn1flmDXCI7xYG2/O7hLHauc4tZOPai7Cp
         lb28xBFegjDguh6xLzUKgIJKz5+6vLfo4fsK2TzjOj4wZJIs5aXVGzTM6l5PYPVcQ80v
         Hf7F8EipUTjq0BRbd4yl2hVVxJRY41zqN8IbFsD2yvTtcByIeTA0pw9/X1yMH2tl6Qye
         Lwf0l6C582rY8zkxhsKZrcazCcNjaAaT7yLryYCJ1e5y3a7fLVTiUrLdiss+fN/GS+3p
         t0oLOBKUpjOi31u5nRwtVHwnS9Id99ECl+mEuw2gSgL90hY6aGHdwM3YigX2N7nBvn53
         mQ8A==
X-Gm-Message-State: AFeK/H3PFBZuWmRQOWe+cbzgDLmhdGmvrWf+3Lskg/eWBMN5XiKDcbEx
	i7/Y3bD/v5ldY7Tm5ZRpcxSo7b6GKw==
X-Received: by 10.28.156.69 with SMTP id f66mr24821181wme.56.1491509487856;
 Thu, 06 Apr 2017 13:11:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.177.227 with HTTP; Thu, 6 Apr 2017 13:11:27 -0700 (PDT)
X-Originating-IP: [83.223.248.243]
Received: by 10.80.177.227 with HTTP; Thu, 6 Apr 2017 13:11:27 -0700 (PDT)
In-Reply-To: <20170406200917.4090.11983@shiny-2.local>
References: <20170406200917.4090.11983@shiny-2.local>
From: Dany Bach <rioru@seraphicsquad.com>
Date: Thu, 6 Apr 2017 22:11:27 +0200
Message-ID: <CAByzB6HJPayDWXbJ4axA1ohxZgg=Dhw5vZnWbtGxkCOTcj+e8Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for rioru@seraphicsquad.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114b7e2a340339054c851da6

--001a114b7e2a340339054c851da6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Le 6 avr. 2017 21:09, <kurt@seifried.org> a =C3=A9crit :

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

--001a114b7e2a340339054c851da6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept=C2=A0<br><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">Le=C2=A06 avr. 2017 21:09,  &lt;<a href=3D"mailto:k=
urt@seifried.org">kurt@seifried.org</a>&gt; a =C3=A9crit=C2=A0:<br type=3D"=
attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent fro=
m CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer"=
 target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITR=
E CVE Terms of Use (assuming you filled out the CVE form and want one, we c=
an&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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

--001a114b7e2a340339054c851da6--
