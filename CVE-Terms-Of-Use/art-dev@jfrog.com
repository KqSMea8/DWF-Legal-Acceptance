Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2265230otd;
        Sun, 8 Jul 2018 23:58:59 -0700 (PDT)
X-Received: by 2002:a81:21c4:: with SMTP id h187-v6mr9359821ywh.415.1531119539174;
        Sun, 08 Jul 2018 23:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531119539; cv=none;
        d=google.com; s=arc-20160816;
        b=oRt0s0589rsKkenMnjx0p41Ns51HmwsqkA3yKvxNVV6KIkEcaRCEHRE1sWyt2KmBDN
         Yi1piS5cD829EuPl8bkk1vVn8H7fj4sK0culuf3Ggp48UItTe953miscJXZOxciVVSLf
         JYDJLBHeF4aBjZzZ98Cwe5pQRMBOALdxQJkz82ez6ydI6FaCin9FFYrnYR1zokaRh27/
         y8dNW7YkaQyNLgqEFjXkvOkRtD0Fbqs4JfZen57ALNQ/rC09iEsqX780RvBIPfBrmJNg
         u7XkmxIqWS5Tsw4TSm97z2hDu7Ub0bAtNB+dDRMVKZ1SJ5pd9w04M+x1m0FRx6EOMmas
         9b6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=2qVpy/UwOmwrJiyxIgbI/dTwMUGM/7Er8nn5QEkThFk=;
        b=kxFtf/lEphf6M54CymFUR5euOcpjtBaDhLkpeQuQWYt8bw4FVRivMtg/MBrWvKa4xc
         Pj8WXJlC+2vvcoi8bxLHnFi2Xls66z8i+e7jrevRY6pWWPEJ7YKxP58WpMhPU2/jCM5Z
         MInUcfVUaC7VDBU/uTqRZkadUAPk7GVuOf0fzhgg3rNau6miJih5mjJLofIcqDrze8wk
         Y3EdgxZ9IOujT3mJWOS8EtZdg72GKIeKGKo9ULX7pWRNyxu+Sfn6ulVrl7gnvzojqeTN
         y+MSt4D8oSBH2uFAteOC6mHEGLJpIKW4LIL20QUgNtQ5M/ffOXMkZVP2qAFFtpcNosbv
         8jJA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@jfrog.com header.s=jfrogcom header.b=pQQTUKTD;
       spf=pass (google.com: domain of salehs@jfrog.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=salehs@jfrog.com
Return-Path: <salehs@jfrog.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a31-v6sor2179824ybi.110.2018.07.08.23.58.59
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 08 Jul 2018 23:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of salehs@jfrog.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@jfrog.com header.s=jfrogcom header.b=pQQTUKTD;
       spf=pass (google.com: domain of salehs@jfrog.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=salehs@jfrog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jfrog.com; s=jfrogcom;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=2qVpy/UwOmwrJiyxIgbI/dTwMUGM/7Er8nn5QEkThFk=;
        b=pQQTUKTDG4HJ1CUhEk4EhZ8gleyWpHFLSW3xvBvN0N88Mf+5Oyu+eoNUl8yKsQqRQD
         a468y+V/p2Zu66Mr2Uv1ljRS5ttXCT0LY35QjgSTUhbEquXobQh6YkPgnI5Q/HXkWXtP
         YTjpLROU11geDm0p38zbfDntAliSlfpr5GSLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=2qVpy/UwOmwrJiyxIgbI/dTwMUGM/7Er8nn5QEkThFk=;
        b=YborKNYmI5PIaPu7xh/HvtgfVj7Uo0avCYiwzayAPEdfYBpkE6vqzBMDJuuyd0KjHG
         t600Ps8PxXCtHmHSSvxP5A6st5sDRTua4IEIImQ9k2FdJQqzG4OyW1eRwxeHZ4gheuF9
         u/FDc2ScUqH+agR1h3CIm29fvj3Rq6B/BlFEp0BzzfWXBbrJced4I0JO40vqZlIrYNUo
         1esgNQTQi+aYO1N+vK/Wcn5fXMUyX1aWmH6iTU8fBcF0qYuhYdpM9R+E+jBDEQHcLWTw
         oYJlme8h6+Zb75p+hJqcVxm7+eIntRF1/WI/FJoh/NNcxTpwhO8Hc02M5nMvGtAUNa5w
         Anjw==
X-Gm-Message-State: APt69E1LOEykcYyE+oklxW0J2yQrt68hZibsIar75fFdZZVomV/XtBd2
	mqbkUwpXRq4C1X1cP6FvrjC+6jRtDv5Rd3Rf403dkJSzcEx4MHYWvHaBQbw8E5WYibRjgDkMQ6m
	5cyaMBVE2exqQySAU47ixK3Xf
X-Google-Smtp-Source: AAOMgpdXNsUHASS/bwpwPBot1iyXKR+CSvfXOC/94VQEBpU9EUwicmMlbdhqpGNg/WiN+lrqQVGecweAIDa9ENKs6bQ=
X-Received: by 2002:a5b:5d1:: with SMTP id w17-v6mr8836710ybp.447.1531119538216;
 Sun, 08 Jul 2018 23:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <20180708194346.15482.78813@shiny-2.local>
In-Reply-To: <20180708194346.15482.78813@shiny-2.local>
From: art-dev <art-dev@jfrog.com>
Date: Mon, 9 Jul 2018 09:58:46 +0300
Message-ID: <CANfBaGWizhAAjSeXo1K5_B0qRD2Ne-0E23s=3mEEOQ3bHcdajw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for art-dev@jfrog.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000002f3b2505708b8ce7"

--0000000000002f3b2505708b8ce7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*I accept.*


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

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md


On Sun, Jul 8, 2018 at 10:43 PM <kurt@seifried.org> wrote:

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

--=20
 <https://support.jfrog.com/>

--=20
=20
<https://leap.jfrog.com/WN2018-07-DevOpsOmnisciencewithJFrogXray_Registrati=
onPage-1speaker.html?utm_source=3Dsignature&utm_medium=3Demail&utm_campaign=
=3Disrael>

--0000000000002f3b2505708b8ce7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><b>I accept.</b><div><br></div><div><br></div><div><span s=
tyle=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">MITRE=
 CVE Terms of Use</span><br style=3D"font-size:small;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial"><b=
r style=3D"font-size:small;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial"><span style=3D"font-size:sma=
ll;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline">LICENSE</span><br style=3D=
"font-size:small;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial"><br style=3D"font-size:small;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial"><span style=3D"font-size:small;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline">Submissions: For all materials you submit to the Common Vulner=
abilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporat=
ion (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide=
, non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly perform,=
 sublicense, and distribute such materials and derivative works. Unless req=
uired by applicable law or agreed to in writing, you provide such materials=
 on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIN=
D, either express or implied, including, without limitation, any warranties=
 or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR =
A PARTICULAR PURPOSE.</span><br style=3D"font-size:small;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
"><br style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"font-size=
:small;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">CVE Usage: MITRE hereb=
y grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free=
, irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute Common Vulne=
rabilities and Exposures (CVE=C2=AE). Any copy you make for such purposes i=
s authorized provided that you reproduce MITRE&#39;s copyright designation =
and this license in any such copy.</span><br style=3D"font-size:small;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial"><br style=3D"font-size:small;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial"><span style=
=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">DISCLAIME=
RS</span><br style=3D"font-size:small;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial"><br style=3D"font=
-size:small;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial"><span style=3D"font-size:small;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline">ALL DOCUMENTS AND THE INFORMATION CONTAIN=
ED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND=
 THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF=
 ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND =
EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT L=
IMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INF=
RINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FO=
R A PARTICULAR PURPOSE.</span><br style=3D"font-size:small;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al"><br style=3D"font-size:small;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial"><span style=3D"font-si=
ze:small;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">A copy is available =
at<span>=C2=A0</span></span><a href=3D"https://github.com/distributedweakne=
ssfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferre=
r" target=3D"_blank" style=3D"color:rgb(17,85,204);font-size:small;backgrou=
nd-color:rgb(255,255,255)">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br></div><div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Jul 8, 2018 at=
 10:43 PM &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation ema=
il sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"=
noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to acce=
pt the MITRE CVE Terms of Use (assuming you filled out the CVE form and wan=
t one, we can&#39;t use the data until you accept the MITRE CVE Terms of Us=
e). <br>
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

<br>
<a href=3D"https://support.jfrog.com/" target=3D"_blank"><img src=3D"https:=
//leap.jfrog.com/rs/256-FNZ-187/images/supportportal-ticket.png"></a>
<br>
<a href=3D"https://leap.jfrog.com/WN2018-07-DevOpsOmnisciencewithJFrogXray_=
RegistrationPage-1speaker.html?utm_source=3Dsignature&amp;utm_medium=3Demai=
l&amp;utm_campaign=3Disrael" target=3D"_blank"><img src=3D"https://leap.jfr=
og.com/rs/256-FNZ-187/images/xray_webinar_devops_omniscience_EMAIL.png"></a=
>
--0000000000002f3b2505708b8ce7--
