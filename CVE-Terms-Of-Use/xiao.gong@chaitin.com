Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp1581387ivr;
        Fri, 23 Feb 2018 23:27:07 -0800 (PST)
X-Received: by 10.159.35.162 with SMTP id 31mr3031094uao.144.1519457227469;
        Fri, 23 Feb 2018 23:27:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519457227; cv=none;
        d=google.com; s=arc-20160816;
        b=HQFwWyR3gy/9GRC7U3bNgPK2eA7boShOXSuCg0xg5kzzSJm6A4D1KsetdZy4tFzkqk
         sIB0s9OJWPsIcN2xLGISpRHxhRHvZWIvS+PrVmljYlf+3uu7SMTGLjVFPUdU1seduFUX
         i21xSsSYfAoMoC8d4IXGfmUIUL4EUBpEnGcLHlY+P282SMu7/32Tgv+8lBV4hc9S8XUw
         G6BxX0MawaRFh8z0oFJpmy28ZrFzIn9ttbRr34HI40DOZTIFc5t2vvWCjnLBbzuxx37R
         yO5SWMgif0FSet7NCoWuNyUI4lCeGIeBG7PDO83XJGP7Q8irR9s5Hso1rHeILxkUQQwi
         025w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=TIFGZSFW5aFBj5X0omZBromG6jvRhfsg0HgbmKEFwaA=;
        b=X2MUHx6s1BYGjR2VVdGcQtOk83V/mUJh60we0kV2DvGKWRZwD1TeqpDeI4+xM2TOCN
         +E2EnZUbxUJYwQG9hiRw+uhlMsNjvBNKuUa/caMLxur7He1aGrFD17gI27epKuUe/iOn
         zeUnxLVLx8UAyuxNVDgfC63a0ZxxIdtv+wm8zHPFsccIZxUUfxD2Vi8qf17a+fmGZqBv
         GyE8y1RMsh1gTaR3mFJItq0vWiFVqJkehgWb65+aa1B3Jhu6JxpTLvo/Jg1qAlF+eYbB
         0yLUQ1lsa0VxOiMrt26FCWQGx8ND8ssV2Ci3vKenwPRHc4OWFTNhpvz6AEXtUNZt5xzj
         lZ/w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chaitin.com header.s=google header.b=ZQUAa+2W;
       spf=pass (google.com: domain of xiao.gong@chaitin.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=xiao.gong@chaitin.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=chaitin.com
Return-Path: <xiao.gong@chaitin.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 16sor1824000uas.118.2018.02.23.23.27.06
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 23 Feb 2018 23:27:06 -0800 (PST)
Received-SPF: pass (google.com: domain of xiao.gong@chaitin.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@chaitin.com header.s=google header.b=ZQUAa+2W;
       spf=pass (google.com: domain of xiao.gong@chaitin.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=xiao.gong@chaitin.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=chaitin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaitin.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=TIFGZSFW5aFBj5X0omZBromG6jvRhfsg0HgbmKEFwaA=;
        b=ZQUAa+2WclQOj7+Kr8qdEoE5z5C6YMKWi4MeIb89E4MDZOVH++t9dhe0qd6iJEuV/D
         gatDtRzEaNKPm9O5kBnNpgmTKE+6rwjUCs8zYFDm20HWSeAi39A/Y1YC9Q9fqRwEJvTQ
         gV3jBwjWk79WTnOZTOHH2GTFTwFAfEcA54v0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=TIFGZSFW5aFBj5X0omZBromG6jvRhfsg0HgbmKEFwaA=;
        b=gHWto8mzSzdHurbSWNkzgtKS1/scJq9n+Q5VPdW9F7S6sNHXOQBERQhcSKDjD8gOpJ
         Hdy2nSoOq/7jp7hRaYsknl9TiGlV2UFtBG3fabq43D5HF6dtSU2s5A0gSHauvgE/Q1w8
         XJ/Oxe2tJWXhtjupzLHWQ/bLqFSf00ufn2Q5MLpfsJf+USzhVLapsbK+HY8n9f27ZbXR
         Ja2Njv4P1hSdfRJXYhF2CavxHPz+nYkVskidNXV7QP3+gmqDnOVQZzixnMkuhGt5NKzw
         hdYC2TUxfUHutMomsKLAzv2yknwK4S+1hJ5WjIwUt8zfzOPmq98rUnD8B3YOM79wHnvo
         ii8Q==
X-Gm-Message-State: APf1xPCpXAAJMlEoDMyT6jUJpbDvuQb0cgvVhVNuToIr2UxOa4+HxVOE
	kv/4+gKMdhKlJ2weccB5ab09jDXcW9JjJR1N4a8od9shkmY=
X-Google-Smtp-Source: AG47ELtXpL/C3gYUEmuRG5oPrnr63uIDpznQfRYbKWAgZ6a1erSoMcrckQrTNTjeq9ernkh09HY+WZyaZ/p2s7B9qjs=
X-Received: by 10.176.97.142 with SMTP id h14mr3252404uan.136.1519457225763;
 Fri, 23 Feb 2018 23:27:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.170.76 with HTTP; Fri, 23 Feb 2018 23:27:05 -0800 (PST)
In-Reply-To: <20180224041518.2287.35737@slab.local>
References: <20180224041518.2287.35737@slab.local>
From: =?UTF-8?B?6b6a5r2H?= <xiao.gong@chaitin.com>
Date: Sat, 24 Feb 2018 15:27:05 +0800
Message-ID: <CAK69bKv9v0R9ZpwgTgu7aif1t4=m1Pr7nDgk6SLYxLHmRaGeQw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for xiao.gong@chaitin.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c1e9f3431842b0565f03406"

--94eb2c1e9f3431842b0565f03406
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-02-24 12:15 GMT+08:00 <kurt@seifried.org>:

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

--94eb2c1e9f3431842b0565f03406
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:14px;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline">I accept</span><br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-02-24 12:15 GMT+08:0=
0  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_bl=
ank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Th=
is is a confirmation email sent from CVE request form at <a href=3D"https:/=
/iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org=
/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled =
out the CVE form and want one, we can&#39;t use the data until you accept t=
he MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div>

--94eb2c1e9f3431842b0565f03406--
