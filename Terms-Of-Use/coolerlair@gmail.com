Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1117383ivl;
        Thu, 5 Apr 2018 04:56:25 -0700 (PDT)
X-Received: by 10.107.144.11 with SMTP id s11mr20345835iod.37.1522929385060;
        Thu, 05 Apr 2018 04:56:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522929385; cv=none;
        d=google.com; s=arc-20160816;
        b=Cvc5uK2VtZTY1cffnk5yxncrDPZeqQRwP8upsh/1cXcQkEYGleZXGwxz3+t+VBpXDL
         AX+vo74QaA+AQNir9jDWXaQXhpmDbbtRk6pG9Pu2vF9o4uTI465QjQgZ/tdTOzTHQ/tw
         wp8Bf6HoyOOKaT/J7LHKLI7PI67XzuuwfYJqioO0RmAMfD//1Xw//VR5/mTTk0hbjcKT
         h/eUJ9Lno31TI7WLEQQPEgr0yEoB/h3JHdBeULhJPA5Wlw399MiKA4yp6qr4KClAr+EB
         jyIYNOKXVS/8nvYK/3k8I1YgeNvo6doe3VM7Lf12Wz3eUOE58Xjuutp9U2DGZrAHtCCB
         3GBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=Dln8Bd7evYu3S3uQ52EWkr0zv79lIi1vT1Tjc+2d+AE=;
        b=DsWnGn4I3pX5zqVdv4zHbKHlFg0sPOfnnOO4SK8FaqzXPapFPnwii2x6tdiH0579zv
         IXBn65a4MSAJWy5l9kB456y5bxo1w3barSMhCg1aPFI+EQ6/DKYuoYDtgCJ5LxzinnZs
         PlU2XsRG+wuxj3/SIPNlEDBbtz9NU6efDbzznyvsZIFbWH2oxf6M3ZBGfVrfLBox6S+/
         fxe9xYPTLOL7WsdIwkOYPnOy1ZfP2kPnk2iJ5BkHwXNFRGzIsSZWGXj1P8kY2UT6oyyR
         RCa9sjbjEiyoOyLqIlovz2OieP5V8fxgjbQzfXrKG3zsJipicN5pxWtf+Lm0dywCfxmZ
         SxnQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eEvcPQqP;
       spf=pass (google.com: domain of coolerlair@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=coolerlair@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <coolerlair@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p69-v6sor2908846itc.88.2018.04.05.04.56.24
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Apr 2018 04:56:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of coolerlair@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eEvcPQqP;
       spf=pass (google.com: domain of coolerlair@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=coolerlair@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Dln8Bd7evYu3S3uQ52EWkr0zv79lIi1vT1Tjc+2d+AE=;
        b=eEvcPQqPsUbYFV1ZpSkJJ6V2Xy3EN2vaVEASoK6XdKtC+IN3s276lLgXXSDBuQOdMY
         1ElPUC6XAZoI86h8uGNvV8VQ6X1LYTQHmO29M55KmBcsSUHrc9Cp2U/xeXQ3Kv21AyXr
         c8zZY8uXgaVSPvUpAOBb5wCLr6vaKtmoLZpovJEMDteC2jNF7Fx6E69DAoEFHDkrL5gr
         ke/fiJT/9pTXhqbJ6VhWJo+fYp1KUSi8Ho2XgghXCTbYhZ4Aep03aiS0SFoVEOXY8BDX
         QUiXzzYBpmLZjoM7g4dT54Ct17ten+YeLFoEvctLR4TVaPSST+Hr3K3Dt0yf83vMQRk2
         NDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Dln8Bd7evYu3S3uQ52EWkr0zv79lIi1vT1Tjc+2d+AE=;
        b=jcNcC562rXzJthLw0uxDTmt4tbcOa1K5FNIv9i0Dj20XfhZinWTnbBx/a9rHSb+Vmk
         bYmkrNETTSqV3YUZl0jQVOhSRyDKrSFS/9jJ/yhi+UZHYfeDJ4vDtuSts0YzBdT6wQkw
         wcyUCgRcmJsnjptPp8RMyTy4/UJivsz2O4YCQOezuU+J9g0kXUDxuqG3/fpS1yJrpXMY
         dNRKJfKw7ox7hJJ+ADC6P75MCgqWB1rHCKA6lj9sQBBBsgIJonRcYFV5DjP0pmI4DG0G
         87qjgum3nIPoNOecpq0yJ7QPEcsRDQgqGfalRNnVEpV+T7+TuMelS1cqYtdqFBiM23yw
         jmYg==
X-Gm-Message-State: ALQs6tCTPVbHIfkNhhEC73PEhF64kUC8PlFINQxciUP6HtoXfElofR+D
	WESack+jOyz5dvo1OuEWGArKke2FD2blh6mqPORRQr8H
X-Google-Smtp-Source: AIpwx48b+bdzkSiQDR//pRv4ts2/rPNOxtq/PS+IJaMU91iprcAt1enVU8uj/zDzpJQmmCnAINEK59rkkLcb/t3xy0c=
X-Received: by 2002:a24:420a:: with SMTP id i10-v6mr1058136itb.19.1522929384487;
 Thu, 05 Apr 2018 04:56:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.3 with HTTP; Thu, 5 Apr 2018 04:56:23 -0700 (PDT)
In-Reply-To: <20180405090710.26722.95046@slab.local>
References: <20180405090710.26722.95046@slab.local>
From: Raiden lol <coolerlair@gmail.com>
Date: Thu, 5 Apr 2018 08:56:23 -0300
Message-ID: <CAJ8usC4B8VDGiYvZrRu4_KUMv3QYtNpygM7P39vQ3FW0W=MGsA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for coolerlair@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000fb0142056918a003"

--000000000000fb0142056918a003
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 5, 2018 at 6:07 AM, <kurt@seifried.org> wrote:

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

---------------

http://funguscodes.blogspot.com.br/

My pub key
https://raw.githubusercontent.com/CoolerVoid/C/master/CoolerVoid_pub.asc

--000000000000fb0142056918a003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Thu, Apr 5, 2018 at 6:07 AM,  <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation =
email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use).<br>
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
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><pre>----------=
-----<br><br><a href=3D"http://funguscodes.blogspot.com.br/" target=3D"_bla=
nk">http://funguscodes.blogspot.com.br/</a><br><br>My pub key<br><a href=3D=
"https://raw.githubusercontent.com/CoolerVoid/C/master/CoolerVoid_pub.asc" =
target=3D"_blank">https://raw.githubusercontent.com/CoolerVoid/C/master/Coo=
lerVoid_pub.asc</a></pre></div></div>
</div>

--000000000000fb0142056918a003--