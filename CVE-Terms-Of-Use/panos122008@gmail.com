Delivered-To: kurt@seifried.org
Received: by 2002:a4f:64c4:0:0:0:0:0 with SMTP id y187-v6csp1292798ivb;
        Mon, 30 Apr 2018 23:26:15 -0700 (PDT)
X-Received: by 2002:a24:694b:: with SMTP id e72-v6mr15501633itc.38.1525155975300;
        Mon, 30 Apr 2018 23:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1525155975; cv=none;
        d=google.com; s=arc-20160816;
        b=o6lyOhHpkTemkJz7Uw3L0U0ygB1FLjW7JmXgwgRlWNrSLM+PcEZnPqDnr58tFigOV8
         aKnbwu33mCd6YQYVZTkW0VZTfufNA0Z7ZxdZI7gwORWrRp0/4iRTdIpxgo/LAizjuNCE
         OAoDrChxaeIJDVSoK6RdZehi5Rd6LxGF0CH9yE47eybZkp3TkloXZ0TBeV00YviKXNcu
         jt+oIcSpQL4gJwA0DMZLGzbZivz4Enmf5wOhGxi2AYFMsobX7NGhxBoiCju9H+KXd4D5
         lULM3Cs2mrLtUne/e7Q6xRExW+6yKtY9z//voruaQ5Ea79KXx3MV5et6V0dQsSCPSZVK
         moPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=h+LMtszFpYtwJE5casAb5uDYYRotxXv59turhaPmHZ8=;
        b=kCY4NCCshunoRcRbGUJJLUVrcN+h5n1t0NlxDHRCWzAAp7Kk2zDs1NIO5AHj4or8Md
         Pb8mm5eJldFLCVUW8+ji0wNujsdlIZ+0oSfruiZwLsfV/Y4oYw98kbVTNCxWSD8BPzzA
         w8I4cQFAmFRTCt1G1BDUXHUkIfVKF5F+aMN0juxQArOow4OJox+KSYlyaivCaMFQkiT4
         3Lz31sBySGUl1qYmBTVYxg5/tW5nlSyhxj4NYBqE0AZFShUImjAHAFBzeOIIQTtyruVc
         ChwMOSYQwIId1BA7DJuI7BJcpKdovqiQDlNLt4ij03NoFN4kRqUnoMZwWhh1yh8Mn54/
         jw+Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DEldcpas;
       spf=pass (google.com: domain of panos122008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=panos122008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <panos122008@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id v11-v6sor4463385itf.107.2018.04.30.23.26.14
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 30 Apr 2018 23:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of panos122008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DEldcpas;
       spf=pass (google.com: domain of panos122008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=panos122008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=h+LMtszFpYtwJE5casAb5uDYYRotxXv59turhaPmHZ8=;
        b=DEldcpasGLhqY7ZDm00ytKtpQcUz22yfjxSrMydcwCTM08QSBhRkgBzhxZbUFx1D04
         sLeuSKn3/NQAtAKYXS9tSk1IUcoWAkY/hTJTY0cl3To+FxTpM8dsKTBTMClt+g5MEqYd
         +EXb14SqW4ThnKZfi0h++fzXrSusKPyUCW74ExhJDF+xFDbI0lzD1Ubb6NhGV67OQqEW
         INiI/Way4nf/Ga3S4neJ0WVKokkoTJeyfAkgh6nNICQoXWgDqaLlh9+FlazoJHw/m7KO
         ZUNWxh1ZlXQBMlR9VcDBIQaI8s7I8ua3fExTs4zagXkq5julWnkLZUVtSKDD6oT7v3/8
         xIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=h+LMtszFpYtwJE5casAb5uDYYRotxXv59turhaPmHZ8=;
        b=dHdVGpg9zcz1i0yF76Dgr0+rRfdq8NS59YuqtLyZ+FW2st1IQ5oB4lwCveISs0KFpu
         /JqgHyM8IjcA4xUk+LsFnWoTLg3Uq/nigweBqdbUkaYDqeSoKh/DQODk3/e9pjneMN3D
         XBx7YmgzwSJqGjTWvkOnUorCtBqeQTJ1Ca1kXgFIOnyOJvptBnDCFx/Oe3yHVfUEYCSJ
         pNs2d0RYcpVN35o538KmY4oWey2ZMyUrFTBdpmRq4PfQnt4JG+FjTYBnkDlgqwmP+ZWC
         0HXxAPpIdINuUIJhdVbdVY5CDj1CCI68PU0kSrQceK7PcU7IjSswLWApQOI5RdpPr8lv
         3XYA==
X-Gm-Message-State: ALQs6tAlzhnAs86nASkPQaUVoAgAZhR3Kiz4AToz6KzoZWvbcYOjmbuA
	W+wEuVXNKGFb5dKdUiHbIXx7zh8o6/qe84tNuYRoBeBM
X-Google-Smtp-Source: AB8JxZryiYnS4Fy1nP0K8jOVSvye5fNFQz3Hf3AWwW5mjs1Vf3Nh25ilNVgphkX4uy7xnYaD6SqOqkp/rNTOTCxcEWw=
X-Received: by 2002:a24:e3cf:: with SMTP id d198-v6mr15237838ith.27.1525155974563;
 Mon, 30 Apr 2018 23:26:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4386:0:0:0:0:0 with HTTP; Mon, 30 Apr 2018 23:26:13
 -0700 (PDT)
In-Reply-To: <20180430201258.1276.62358@slab.local>
References: <20180430201258.1276.62358@slab.local>
From: Panagiotis Kolokotronis <panos122008@gmail.com>
Date: Tue, 1 May 2018 09:26:13 +0300
Message-ID: <CAL_a3=7dgy55ZEv5xPYPkJoVZfaU7OU50eP2W5Zd3FGj-1uk+Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for panos122008@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000001750c2056b1f0c5c"

--0000000000001750c2056b1f0c5c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-04-30 23:12 GMT+03:00 <kurt@seifried.org>:

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
> This data cannot be removed from the Internet, or from our git repo. If
> you are concerned about your personal information (in the form of your
> email address and any attached information you include like your name)
> please do not submit it, setup an email address and use that. I cannot
> comply with GDPR requests to remove your information due to the nature of
> git, and my inability to confirm if you are a european or not, so if you
> don't want it in there, don't reply with "I accept".
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

--0000000000001750c2056b1f0c5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">2018-04-30 23:12 GMT+03:00  <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">This is a confirmation email sent from C=
VE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" ta=
rget=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE C=
VE Terms of Use (assuming you filled out the CVE form and want one, we can&=
#39;t use the data until you accept the MITRE CVE Terms of Use). <br>
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
e accepted and so on. <br>
<br>
This data cannot be removed from the Internet, or from our git repo. If you=
 are concerned about your personal information (in the form of your email a=
ddress and any attached information you include like your name) please do n=
ot submit it, setup an email address and use that. I cannot comply with GDP=
R requests to remove your information due to the nature of git, and my inab=
ility to confirm if you are a european or not, so if you don&#39;t want it =
in there, don&#39;t reply with &quot;I accept&quot;. <br>
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
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc. <br=
>
<br>
</blockquote></div><br></div></div>

--0000000000001750c2056b1f0c5c--
