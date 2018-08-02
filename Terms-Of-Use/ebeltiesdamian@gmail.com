Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3340253otd;
        Sun, 29 Jul 2018 15:38:51 -0700 (PDT)
X-Received: by 2002:a02:9c33:: with SMTP id q48-v6mr13654447jak.103.1532903931802;
        Sun, 29 Jul 2018 15:38:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1532903931; cv=none;
        d=google.com; s=arc-20160816;
        b=HSZJFjvg9w2ak2LR36DlzxiJNRs1Aowbjf7bDsvPW+lyDBY1HkRvGQc6ADCGrTE94i
         v9LI0o7lAZBceSARarDhCcK9KRrzu1kezJFvEsu6m0R2e1HSJNTFW5cMxIeu3o7BWLIp
         xHvQXFAelUk4Uo1sKFkodhgR3B74L+Jhb/tzoTLJYsT2ABXJMx7AHdiAn/+wrn28Fbnf
         p4/gueO8TD9OeKg4X40xvsOpE1RG3IzvHzgnAPHcYx8ZmwcWUWoe4U4sPerC/iiEBHYQ
         w1ElgDWz/4eIBRkzDnQjDuASffFqcOv1TDf0Yd/4BJT2hWAdg19UxPzP2vPm7h6rtozK
         iZUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=OgzXiFzGaZPIKOBCJtSnKHG9CdnGfI6970PY9dPXe/k=;
        b=iLNOtlG3p+jeyrP4CTH8LfWgka+8TRuQrzC5zdHT9SVZ+e422ukuVQSvFceo7gSTbN
         IUwoZUc/4U6dIAQcpbmILTeEDFE7rmF0flEJbiILA8hTN8r9c8Yyt3TVIj27aQsNQ3M/
         nt4Vr8uI7VIUdf1vBn/Ykj33yb2sBocQCgweVUAoOFIvGo6ITbw5TmktVe64v3YDuSsM
         axnpOAluKL6JVtbObKOvDisUMB0wQM8N6MJNWqfaIh1BBj/nypSUjCQQ4LaFKnIiAtUz
         vcoe0f/H3UEtsm5lvw0uMt0QBFFGnEIcYDU0EPIgfTguuFYi73KswLVGA+Td0hmFcd84
         vsuQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf1RXnKy;
       spf=pass (google.com: domain of ebeltiesdamian@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ebeltiesdamian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <ebeltiesdamian@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e130-v6sor4103885jab.148.2018.07.29.15.38.51
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 29 Jul 2018 15:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebeltiesdamian@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf1RXnKy;
       spf=pass (google.com: domain of ebeltiesdamian@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ebeltiesdamian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=OgzXiFzGaZPIKOBCJtSnKHG9CdnGfI6970PY9dPXe/k=;
        b=Uf1RXnKyY06YWDGaHRDKGHJM96RG4TsGnT8TqOO9IexH7wGFRx++9YPeR8/hvTy1e9
         HkMkZgVN7ePk/sffiWenoq3hg8M1ABDbP2rMaDkEXJ8KN9XAL77M3BSC/NxLynDl0HER
         hJszoo4QGBtp3jzi5ZJsVbLQXw0HYtm0tzAeQllDJpQhsq36POGK2Bw+OPtmlnLdOAUd
         4yxV06EXu04Jx1Yk3WE6+cjG6Aj1FG/zumuLZHRIvqT4RG4ZN8Hq3MtXqlFZI0iJxPYN
         4b8b+EdwyUtr7xFMRm57rRbXoGE5I1UMvq0eP4+mlKpUGf/1xjs14tpRHXrIWRyOvTWW
         t6RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=OgzXiFzGaZPIKOBCJtSnKHG9CdnGfI6970PY9dPXe/k=;
        b=A4JnhpNgFrK0wThtLGoLjkefsCA7uQMH7Tq5WpwmP0d8GY4SI9atu9xCOZepvOrFmj
         YGfpj67l1ZbbGZOvFhl/utI7AwR6RSk2nPm6peZUq3VHV4Ok4meJ2XUYHaqhROMM79Oj
         C4jgKzmoTXxfeLP4AFWAr8nIItYBEcM5YvpM1UKS/ojdJO8aenLDBvyFn5ApyRXcabtW
         djxJ6ESsCWT3vKYSWlZBdwl+pAqLnL+HD6icPX6YRADxsnuXJGJSZ4bfSOcI0OiEywIu
         nrB6LOYkN35tTcS8f7O5uxVnktgVqMdvnl2VwpWXBy05hht4MN7kcH7f12SlJP6Vc6rz
         hGwg==
X-Gm-Message-State: AOUpUlGiNUqLMopwuHfoEyHJoQSTEO0GqtLWLmhxIhTL+EyPoLTZimIO
	J0eoT/yIsKAubeVcc7WLL++QvsyD18pfpqe7bwe3DQ==
X-Google-Smtp-Source: AAOMgpd9HL/MGcOTBpga44GbE21mjRw5xvHYmGa8oCuJRA81csS13myu29WFvsqPJNwzthUnUFWQuRIdN8X5GOAAuWc=
X-Received: by 2002:a02:5684:: with SMTP id u4-v6mr14209413jad.36.1532903931417;
 Sun, 29 Jul 2018 15:38:51 -0700 (PDT)
MIME-Version: 1.0
References: <20180729223735.17994.43631@shiny-2.local>
In-Reply-To: <20180729223735.17994.43631@shiny-2.local>
From: Damian <ebeltiesdamian@gmail.com>
Date: Mon, 30 Jul 2018 00:38:40 +0200
Message-ID: <CAOJmewmphca57z9iF9E_j98ajp3vqyVUDpodpLbVgQt17YJcUw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ebeltiesdamian@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000004e975005722b025d"

--0000000000004e975005722b025d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

Op ma 30 jul. 2018 om 00:37 schreef <kurt@seifried.org>

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
> --
Met vriendelijke groet,
Damian Ebelties

=F0=9F=8F=86 https://hackerone.com/ebelties
=F0=9F=90=A3 https://twitter.com/DamianEbelties

--0000000000004e975005722b025d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept</div></div><div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr">Op ma 30 jul. 2018 om 00:37 schreef &lt;<a href=3D"mai=
lto:kurt@seifried.org">kurt@seifried.org</a>&gt;<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">This is a confirmation email sent from CVE request form at <a=
 href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div><font face=3D"verdana, sans-serif" size=3D"2"><span style=
=3D"color:rgb(0,0,0)">Met vriendelijke groet</span><font color=3D"#000000">=
,</font></font></div><div><font color=3D"#000000" face=3D"verdana, sans-ser=
if" size=3D"2">Damian Ebelties</font></div><div><br></div><div></div><div><=
font face=3D"verdana, sans-serif" size=3D"2">=F0=9F=8F=86=C2=A0</font><font=
 face=3D"verdana, sans-serif" size=3D"2"><a href=3D"https://hackerone.com/e=
belties" target=3D"_blank">https://hackerone.com/ebelties</a></font></div><=
div><font face=3D"verdana, sans-serif" size=3D"2"><span style=3D"color:rgb(=
0,0,238)">=F0=9F=90=A3</span>=C2=A0</font><a href=3D"https://twitter.com/Da=
mianEbelties" target=3D"_blank"><font face=3D"verdana, sans-serif" size=3D"=
2">https://twitter.com/DamianEbelties</font><br></a></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div>

--0000000000004e975005722b025d--
