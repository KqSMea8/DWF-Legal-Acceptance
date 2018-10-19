Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp2991966ocg;
        Sun, 7 Oct 2018 18:50:06 -0700 (PDT)
X-Received: by 2002:a0c:c78c:: with SMTP id k12-v6mr5760279qvj.99.1538963406231;
        Sun, 07 Oct 2018 18:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538963406; cv=none;
        d=google.com; s=arc-20160816;
        b=MQK+1zCmME09oPkqjpevbx6KYgYvWKnN44vXOLh8+oHgda1x007IcYYpvGdADat1Od
         SiWQ3mQU0tlPhENyhab8kGD1pO+wsTPOND15VlhnVDnU6CscXjtd/QTJSA5fVsgf+BrC
         DcjCwMpJN1CYtytOY3h7vND+coH2qgm+JyJ/BIH2UMTv4bq2JtCRDKKEHVTY1bV57Peg
         Rc6OLViZDsZETggz/edRJAoQZrKTycLhejT6hSRDrouy9TG1HEIedtReGE+vRb9sHltt
         RLRMMq0b+XJiDaWy/I8fwq5YvG2/oOwA89UKiYiyqXnSiCO+7OPt4DP0DK8eT5OFioh0
         TDMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=GtQNUdwebYZusypDODRSs3BaCTQbG33bTL579EnzMzg=;
        b=x5sGXx/AKGvrbe3eNrGkLOfGi0+6JPzBwGbHtvGFxd/wO7jSa2dcNZnBCxhqOwLnhG
         E01Rgd2NF3QhI8CigL8Q5Xib75L26DoeykpZ67I0yBUsQ6e7rKB21KxKYjHABwjE6HS5
         60re8aK2jDe1yjYdFUrAvrysx5vyJheUqrzmCQBPbWlInO6NtNqf0CK87R+QhWN0UjY+
         oAhTHge4cvymxLoGywukpqQVkIDzzRRk/px8MusArs4EwqPFemPOZI5Dn4/g7d8xk6l3
         6qDxybv3Oo4yqjzx1X2FFC9xkjw1348CILspert2NXZV01z7eAH2MYAo/3pFxejQ1tvB
         zW6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6MCm70N;
       spf=pass (google.com: domain of gdhucheat@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gdhucheat@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gdhucheat@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id j50sor3501737qvc.21.2018.10.07.18.50.06
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 07 Oct 2018 18:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gdhucheat@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6MCm70N;
       spf=pass (google.com: domain of gdhucheat@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gdhucheat@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=GtQNUdwebYZusypDODRSs3BaCTQbG33bTL579EnzMzg=;
        b=C6MCm70NAY0tNpQXOOCFJH/ttXke1XB8ELifONwJEeSGXCu2TEV8ovbEhWcCISmjQi
         JkwqPYh7yEGRCqanf7pa1SGbSNe89JsJxS6k3ytCu+kKZ7HzmQboj8AbJIb+npgcAVu/
         XW+YiBfnmFOESgoAZgqDkJVoss9eYJKLXr3goG1Io38wXLPuJWq2C6Ai9zDlg8wdXhq9
         /aIynPPJd5u5Ijauzo9NIOS4kSNFVeTB6PU/Hgj+uBJJIwyNFlXZCSiCRcD5oQhqwiW4
         sz6pokniiGTC1iJeyt2cTIm1VOxn8YscK3wX1ceMWCoTms7LOzi/SUFip7EUxDgeOX5c
         DPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=GtQNUdwebYZusypDODRSs3BaCTQbG33bTL579EnzMzg=;
        b=dvFS/2vtKv6gecOwmru0FXxM7JAVllXY/ZV85ZjU5t7Ju6Lgn3mi1/YbFfklbPe2a3
         N/yylqSuhrNYgBIesJ5x6x4fKi183VpsqCNmyfCv7NO4sS+OeeeDKXdOD/eeVhliPU5I
         VZcYuUtH/PS6OkeU2Dszuy5NnEbj4SXDq3PqeOKm3Fbr+Tmj6CjEyTegV7eTdVoTp5H9
         l74NGZ2+yRiy68GQ2SXAuRiNNeQlSFZrslGtHz3m3xSZSM1JStNcFhwCUoOnkJbVAFvd
         quBund7og8sN+JEavuc4OFEvWe88sD8dg++iUbRX9yLP2Cj4Y7Y3+AYsPnRu9J5udIS4
         jjSA==
X-Gm-Message-State: ABuFfoiP3RRm99oZpil2b2gAhXJoMQ5KL2q/7dMJMOovxILlJkdICQQj
	xM25ecGlSS19QpDQ+/iIk1JJK+GLgGX7ycmEnYJwmg==
X-Google-Smtp-Source: ACcGV61eAi3uMfPKSxXfeGT6s20DQyc4A4noB77fx8y/s88Tzib5a93n0LrNS4VmMb2WhIdqrVHK0Org7bJFGREI4vM=
X-Received: by 2002:a0c:c591:: with SMTP id a17-v6mr17918314qvj.183.1538963405857;
 Sun, 07 Oct 2018 18:50:05 -0700 (PDT)
MIME-Version: 1.0
References: <20180930152944.23613.58718@bigbox.local>
In-Reply-To: <20180930152944.23613.58718@bigbox.local>
From: =?UTF-8?B?5a2Z5YWD6b6Z?= <gdhucheat@gmail.com>
Date: Mon, 8 Oct 2018 09:49:52 +0800
Message-ID: <CALiZSDFU1aHUVr2Ph56XkBYSFxV1tgNN9jMrpo=JNLs1nUQRnQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for gdhucheat@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000020e7890577add793"

--00000000000020e7890577add793
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

<kurt@seifried.org> =E4=BA=8E2018=E5=B9=B49=E6=9C=8830=E6=97=A5=E5=91=A8=E6=
=97=A5 =E4=B8=8B=E5=8D=8811:29=E5=86=99=E9=81=93=EF=BC=9A

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
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--00000000000020e7890577add793
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I accept.=C2=A0<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.=
org</a>&gt; =E4=BA=8E2018=E5=B9=B49=E6=9C=8830=E6=97=A5=E5=91=A8=E6=97=A5 =
=E4=B8=8B=E5=8D=8811:29=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">This is a confirmation email sent from CVE request form at =
<a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (as=
suming you filled out the CVE form and want one, we can&#39;t use the data =
until you accept the MITRE CVE Terms of Use). <br>
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
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div>

--00000000000020e7890577add793--
