Delivered-To: kurt@seifried.org
Received: by 10.176.3.232 with SMTP id 95csp1958424uau;
        Sat, 8 Jul 2017 20:26:43 -0700 (PDT)
X-Received: by 10.84.195.3 with SMTP id i3mr11011634pld.65.1499570803339;
        Sat, 08 Jul 2017 20:26:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499570803; cv=none;
        d=google.com; s=arc-20160816;
        b=axLs40S6i5+8xd5H6q9XtRw9DMCx/BJEITfiWfP2oTQNap2+nLXVtK8T8//VzV9Ccq
         6CVFVxAFr1HQEbRJyixTaGgxeXI+2Y5oVvGsbEnCG6ZXAlI8n4i7RjT6Pl8L2J5wqQj8
         tOB/81nvtgRU+HsNh+tezv7OlXYmd+QjHEFOFfSpQDXnQCKIPkcjT1tHwzlvMS7re2Z/
         OSiESMkCwNVo0AnEixW3aJhn2uWVJ4JjYet6+KEezEO+6Z0cRJ5q3CLmgCODAUJtw90S
         QB24Rdf+/WV8ozj+frRcuVrSyXJc6Nalmc9qEr3wAajsd/BE90dhNIyQS2kEDdGQzgwH
         TaFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=WCFZmyk+8Uxtxudv/5Y41OMtg+BRrSN86dqi0ERsuIg=;
        b=TY4L5csKoB4kN/9TA+vfS+O65HvFI2n+DlzZnQlGPh7kfxZbCvlfcAtOQcitVCbj/G
         DewwTgPgNuyxNjFKzxomsiJB7Cm38z4useZzKIlD7t+YPahdaNBtSYZ1ukCnT2NyaaOx
         U+vCokzoKo+7o/XGSbCj3v5QkvWZdVbrKDQ0rkXuWxnLai2MpUplD9/0xwuqr3fdYGtF
         rxN5F5ZD7+5fvzgiVxQ+GNP9loTCNC5HP3tZ0OLsd7dWGQgepBhd26HhwqRtsJzBsleX
         6SHTEx/zVKEhhEa5UXP8lkN+TGaSwD2qvoGJIsiM3zobDspcsWMt2UDh8FW+r+f23NvQ
         0WxA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=ENfCMmXs;
       spf=pass (google.com: domain of cgincdev@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=cgincdev@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <cgincdev@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by mx.google.com with ESMTPS id m27si5826717pli.80.2017.07.08.20.26.43
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jul 2017 20:26:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cgincdev@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=ENfCMmXs;
       spf=pass (google.com: domain of cgincdev@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=cgincdev@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id c73so34129034pfk.2
        for <kurt@seifried.org>; Sat, 08 Jul 2017 20:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=WCFZmyk+8Uxtxudv/5Y41OMtg+BRrSN86dqi0ERsuIg=;
        b=ENfCMmXszksxpoUSewRAI7X4b3ztap1g68HFkpwFAZrEQx4WOkApbG3UOuBiqzJ/eE
         B8SQo7kejRx0IZXO6mi5z++tsWRXsgTAph3lPM6bQyrYxGC/I2Wuy647jilSoa0smvOr
         iLmu33kAsP3qhQ17q69lFU0lotwn9UBjV4NChkBKkwsl48zwhjZtUxi3Sh+ZUwduKCcn
         ad+zLGVgRwELr4RS7zT+OAyXmEhiNNIhuVTCVFds1rAw1xgqJzPWZBDyv2wnNqORz9WQ
         9yTlFgMuqdx11d+WpqCPOmLF5QZfhVhSYsKleNbrjp4tA2sTgxourL5gLlj0l1Fm/Maz
         +VAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=WCFZmyk+8Uxtxudv/5Y41OMtg+BRrSN86dqi0ERsuIg=;
        b=Xd9CJZmVf8bVOWmHyyr7SXBjM232nK4Cef2EGst6CaLfRQMKVAYMqDACN+TNkgl1BQ
         L5wYPtvMpCqGKBlZA8cPzngoR8+D55iK1YO+gGEaWi7o/7Wcl4mQZ1p7/ZhsnaLul1cw
         MVzzuZfv6FSZlgELDndB853VQwWEVvPPo+ypVdfF5AnNG6UOJlWGcewcbEqH2rtgQ6zK
         QS04RDN94nxN39wo+kifg3c7J6VmgS6XiMkcYRI+0qrYvoZJnAmW/eYsi60YQCssoXYI
         aidbNdJwC0jlDRTk2yffmk+JkrGDgDaUhg2xitdTQc7usaXtQ9aEUDXkl1LwG5wNyDnw
         LrQA==
X-Gm-Message-State: AIVw110nTHwa/yB9iyG7LSfrswOUZbPEMrUEmprFiItKKy+HgxU9T9YL
	qZDvB1bVX7jDVEuTnktpy8SF4drr6w==
X-Received: by 10.98.204.194 with SMTP id j63mr38600137pfk.137.1499570801644;
 Sat, 08 Jul 2017 20:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <20170709032459.2470.11285@shiny-2.local>
In-Reply-To: <20170709032459.2470.11285@shiny-2.local>
From: Curtis G <cgincdev@gmail.com>
Date: Sun, 09 Jul 2017 03:26:31 +0000
Message-ID: <CAMpCRL4AJYZ=jJ1tQS-8Mzmx7pTUq-qg3KUxeyj_twS_=GL81A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for cgincdev@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c1428c2f29a6d0553da08cb"

--94eb2c1428c2f29a6d0553da08cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Sat, Jul 8, 2017 at 11:25 PM <kurt@seifried.org> wrote:

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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
> --


Curtis Gervais
[image: https://]about.me/curtisgervais
<https://about.me/curtisgervais?promo=3Demail_sig&utm_source=3Dproduct&utm_=
medium=3Demail_sig&utm_campaign=3Dgmail_api>

--94eb2c1428c2f29a6d0553da08cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept=C2=A0</div><br><div class=3D"gmail_quote"><=
div>On Sat, Jul 8, 2017 at 11:25 PM &lt;<a href=3D"mailto:kurt@seifried.org=
">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
This is a confirmation email sent from CVE request form at <a href=3D"https=
://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.o=
rg/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fille=
d out the CVE form and want one, we can&#39;t use the data until you accept=
 the MITRE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature"><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
">
    <tbody>
        <tr><td style=3D"width:auto;height:20px;font-size:0px">=C2=A0</td><=
/tr>
        <tr><td style=3D"width:auto"><div style=3D"line-height:0">
            <table border=3D"0" cellpadding=3D"0" cellspacing=3D"0">
                <tbody><tr>
                    <td align=3D"left" valign=3D"top" style=3D"width:auto;l=
ine-height:1;padding:0px;vertical-align:top">
                        <div style=3D"margin:0;font-size:18px;line-height:1=
;font-weight:bold;color:#333333;font-family:&#39;Proxima Nova&#39;,Helvetic=
a,Arial,Sans-Serif">Curtis Gervais</div>
                    </td>
                </tr>
                <tr>
                    <td align=3D"left" valign=3D"top" style=3D"width:auto;l=
ine-height:1;vertical-align:top;padding-top:0px">
                        <div style=3D"margin:0;margin-top:3px;font-size:12p=
x;color:#2b82ad;font-family:&#39;Proxima Nova&#39;,Helvetica,Arial,Sans-Ser=
if"><img alt=3D"https://" width=3D"0" height=3D"0" style=3D"display:block;w=
idth:0;height:0;overflow:hidden"><a href=3D"https://about.me/curtisgervais?=
promo=3Demail_sig&amp;utm_source=3Dproduct&amp;utm_medium=3Demail_sig&amp;u=
tm_campaign=3Dgmail_api" style=3D"text-decoration:none" target=3D"_blank">a=
bout.me/curtisgervais</a></div>
                    </td>
                </tr>
            </tbody></table>
            </div></td></tr>
        <tr><td style=3D"width:auto;height:20px;font-size:0px"><img src=3D"=
https://about.me/t/sig?u=3Dcurtisgervais" width=3D"1" height=3D"1" style=3D=
"border:0;margin:0;padding:0;width:1;height:1;overflow:hidden"></td></tr>
    </tbody>
</table>
</div>

--94eb2c1428c2f29a6d0553da08cb--
