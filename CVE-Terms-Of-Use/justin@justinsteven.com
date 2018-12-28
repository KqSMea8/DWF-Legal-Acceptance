Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp869458uaa;
        Thu, 6 Apr 2017 14:30:09 -0700 (PDT)
X-Received: by 10.55.56.134 with SMTP id f128mr31676851qka.296.1491514209290;
        Thu, 06 Apr 2017 14:30:09 -0700 (PDT)
Return-Path: <justin@justinsteven.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by mx.google.com with ESMTPS id a4si2521780qkc.54.2017.04.06.14.30.09
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 14:30:09 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400d:c09::233 is neither permitted nor denied by best guess record for domain of justin@justinsteven.com) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@justinsteven-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400d:c09::233 is neither permitted nor denied by best guess record for domain of justin@justinsteven.com) smtp.mailfrom=justin@justinsteven.com
Received: by mail-qk0-x233.google.com with SMTP id p68so23619065qke.1
        for <kurt@seifried.org>; Thu, 06 Apr 2017 14:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinsteven-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=AsfJYJK8fjQHPr8nX5YukGNI4rsE8dmk07CLa0DMEQs=;
        b=YC9/r+14Ur6b956YUgRiK/0U/y+abpzRw5JmSqCMyN7GRvORfsZU+l4AECjxtlUERr
         tKD1/0k7/hjs8VP3oyEEYxlDfp44r1987ctiryXvz3+2dQSAcvd74QmyXDCD6T9G2K4e
         DNizD7fPuXt7PD5+7PrkjK5bLXOcyxN/js18SYjDv8b8phfeQ+p9gNunToqkZz2ryaBt
         RoVDldo3jRnLOCMylDZrZPw0S8VOJW6TnHas1GrhNGVuukPvB4ZrIvS5CMxpGwUuDGGg
         C/tjKEINxh74eztaFfHIU5h5y6W5CzoMTm3XI3XSZIslPOM3BoNP81UGakADfo41hXXV
         Wdrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=AsfJYJK8fjQHPr8nX5YukGNI4rsE8dmk07CLa0DMEQs=;
        b=Mq1bj47HUlCTcZet7KBTd9T26BuVlfaX2Wc5KbZZ+U4G+Uk5ObGsgVFHu4u+Dlby0k
         ForlLpLAuxepkNKuMa2Ei9+G3eQcR3TMeEOagJ+JcNweMe2ODze7YnqAhk1WxrfhH5gB
         PVIInWLrhYj7p0mcKo7V5ozhMYl4M9wM5QQSoHkjEikOvsFqAy1kHkIHwYMXhNDffBMD
         YmacJqXPhcY5m7GZ0J7iGHDpu8F1LRKmI5g0hJE0cKxUP1d+QD9t3A34tYWg2HPlOyCi
         Xdzv7oWfsPPVyW7zCAWP9ZEFpnEDy3pDN0C1fVScesAIXRlBJgiElSwnsqeBnTwz2KiA
         buTg==
X-Gm-Message-State: AFeK/H1EQUVQMewlmmbeKx7mlWv9finXgX1pp+0qQ5k5nHM8oqXCEWnwgbrNWnwQcZmhZNvZOxIp3UBc0nuUCA==
X-Received: by 10.55.195.215 with SMTP id r84mr25328732qkl.223.1491514208732;
 Thu, 06 Apr 2017 14:30:08 -0700 (PDT)
MIME-Version: 1.0
References: <20170406202315.4090.6209@shiny-2.local>
In-Reply-To: <20170406202315.4090.6209@shiny-2.local>
From: Justin Steven <justin@justinsteven.com>
Date: Thu, 06 Apr 2017 21:29:58 +0000
Message-ID: <CAHZU0yS5hcf9Vw0TGfvjXAs-fXYSSHJRh=vMhfWK7qtMLVkFug@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for justin@justinsteven.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a11478ef2971303054c863619

--001a11478ef2971303054c863619
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Thanks Kurt

On Fri, 7 Apr 2017 at 6:23 am, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
> --
--
Justin

--001a11478ef2971303054c863619
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>I accept=C2=A0</div><div><br></div><div>Thanks Kurt</div><div><br><div=
 class=3D"gmail_quote"><div>On Fri, 7 Apr 2017 at 6:23 am, &lt;<a href=3D"m=
ailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">This is a confirmation email sent from CVE request f=
orm at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" class=3D"gmail=
_msg" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br=
 class=3D"gmail_msg">
<br class=3D"gmail_msg">
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" class=3D"gmail_msg" target=3D"_blank">https://github.com/distributed=
weaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
MITRE CVE Terms of Use<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
LICENSE<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
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
PURPOSE.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br class=3D"gmail_=
msg">
<br class=3D"gmail_msg">
DISCLAIMERS<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" class=3D"gma=
il_msg" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-=
Database/blob/master/TermsOfUse.md</a><br class=3D"gmail_msg">
<br class=3D"gmail_msg">
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" class=3D"gmail_msg" target=3D"_blank">kurt@seifried.org</a> manuall=
y with your question/concerns/etc.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>--<br>Justin</div></div></div>

--001a11478ef2971303054c863619--
