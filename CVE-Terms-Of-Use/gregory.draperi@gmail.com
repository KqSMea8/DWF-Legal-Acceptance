Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp1414854ivl;
        Sat, 26 May 2018 22:42:18 -0700 (PDT)
X-Received: by 2002:a65:44c3:: with SMTP id g3-v6mr6783115pgs.428.1527399738216;
        Sat, 26 May 2018 22:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1527399738; cv=none;
        d=google.com; s=arc-20160816;
        b=NCQjwTdyEcLKjoENkVWWU2dVn8W6hY0HdDAiHv57TRwflMjanYH1ygPBW6uwT333UN
         9ac82CwVeWZf0KCTJvVP5cMKON/gl2xHh8ISjlz+caPkii7WkNX/m9E1ZL21rm/x+R3o
         GPLuEBOB3Bql6j9HLxvzzFefRG49pS2Miq1sjrZOECGu85mys7ZrzdJumOX0Wy4lyFEw
         MdmzE7nkian9lG0J7VpoSaQNMXv2ktdkqF+37wsI5tm/WuEo6F0FzSOieIBqttZ9fJnQ
         g+lZ1pbst5OKYou5WikH1o+b+0Um2SB4zSemKsVCEdFP0HHK1TwriNtQJrNPCr7i5+D9
         S1bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=M4jIrFgA01kTbF9K1Wz34Vihi090D4t3fU2ejUno3wc=;
        b=Va99qdCpY9jnDs9vHcHmET5T2n51QKELFH7oDWbgAhV/UCpeXQSwWfxwLZgRDMIy2M
         PZ2a0hoosvXeaSj0EIuWYvg3Cvj2RqKh3VD4lS5JvNIPPNBj+CvgaCrMSpIDg6lDmPVz
         mTB7XEgSxcYuqojebbe8bZsSMmcr076V8gptCbH4BJ2mpyHUOLtz6qAj5ErJSlH42ZTD
         zfWOLnMeFQTUmU07XePVelYyXEMUt6aHF1hV9OLKm+WLs3Xr6+GtVeDmcndytIiL/FwW
         sq1ng/gx+bXXW+3LIg1jBWnnKigDMAqvOECDPyZqQLIkF0o7jhSzWNazFbapgRYbeuNI
         dKqw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEGPNaWo;
       spf=pass (google.com: domain of gregory.draperi@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gregory.draperi@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gregory.draperi@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y1-v6sor6755923pgp.292.2018.05.26.22.42.17
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 26 May 2018 22:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregory.draperi@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEGPNaWo;
       spf=pass (google.com: domain of gregory.draperi@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gregory.draperi@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=M4jIrFgA01kTbF9K1Wz34Vihi090D4t3fU2ejUno3wc=;
        b=gEGPNaWoP7wGBHaJV5+Fl+7CYa4X3wqF3o350w9tnKAfdk92Si8oxJY6lNZJezW1fG
         vVYf5EDhrTqFhZyzA8qIai0+8T3RkiCXqFaR7mE9n84GJG1b2TNWbeV+onyYyTZXekOD
         L8IPLD9E3MGuZgj/+ONKgsZDvQDQS+7MHiuuqat8IpwS3VttpxUYebnghrd+zX0tBeES
         nd3DHk7bBa02MU8Wp4rc0P4NaUhDM/SKx288oITsdSyG9yqoNsUGzEk1XiPVHnYn6JyW
         Fm4NCn0fCUZ51TY09DJULBbyGVyY4wJRr1RwtwOrvb6MM1DncBMp131dOhVWKCYzaMm0
         Px0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=M4jIrFgA01kTbF9K1Wz34Vihi090D4t3fU2ejUno3wc=;
        b=Z8sLPbugMyDWRMrofo/V9r1KsoaBi5lrbU63BP+O85ViiJpO+RylDheM7mZ2KB+QX0
         qbpndfpcjjcj5PPhbAD4aXfdxiLfvpZM+05/8gayTUXE1deL5W2XaH0SNV7e0UZy0rCG
         /athvDvgut6CyWYQo5aGE7/bfnopQ63jNda6JVwh99LWtaXC7cRy1YWjza5V/lB8tIiR
         i40aEa/+JsJ3I768uIl2tu0erLZEGLPXywxVQplnvXQFrv37ohK9NN/PrGMZENsRBhwN
         eHRmji4G71c33LmBSfdtbsMgMXphyrIuyFyBpavPMw5760TnC0lbBwY7AW/GIcXsYitH
         fTUA==
X-Gm-Message-State: ALKqPwf/wVOZFGYEnP1GJJXgc048rRuW4G28DcIjVJO2bzyz8pUVXrc1
	b64xpULugY5Ht5hMlsHuCpNuInLeYgrYUmm02W2RcQ==
X-Google-Smtp-Source: AB8JxZoP3ygdnqJ8MIrLbZW1jeAVmIccYdI9EwxEAzP3gDnY8WYtPt2CH2NdF8iWxI3gjj4v6BLW/0vNVTsp0KCGQqo=
X-Received: by 2002:a63:3f42:: with SMTP id m63-v6mr6887060pga.340.1527399737456;
 Sat, 26 May 2018 22:42:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:8c8e:0:0:0:0 with HTTP; Sat, 26 May 2018 22:42:16
 -0700 (PDT)
In-Reply-To: <20180527030821.8054.15555@shiny-2.local>
References: <20180527030821.8054.15555@shiny-2.local>
From: gregory draperi <gregory.draperi@gmail.com>
Date: Sun, 27 May 2018 07:42:16 +0200
Message-ID: <CAB6CmmWWx=NphO2=t5oBmWfojZtJVLkTeZ5npR-24QZVoX=OCg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for gregory.draperi@gmail.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="000000000000c7fe35056d297649"

--000000000000c7fe35056d297649
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kurt,

I agree with the terms but I wonder why the list of emails is publicly
available meaning one can download a list of valid email?

Isn't it better to keep it private as email is a sensitive piece of
information?

Regards,

Gregory

2018-05-27 5:08 GMT+02:00 <kurt@seifried.org>:

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
Gr=C3=A9gory Draperi

--000000000000c7fe35056d297649
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Kurt,<div><br></div><div>I agree with the terms but =
I wonder why the list of emails is publicly available meaning one can downl=
oad a list of valid email?</div><div><br></div><div>Isn&#39;t it better to =
keep it private as email is a sensitive piece of information?</div><div><br=
></div><div>Regards,</div><div><br></div><div>Gregory</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-05-27 5:08 GMT+02:00  =
<span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This =
is a confirmation email sent from CVE request form at <a href=3D"https://iw=
antacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</=
a> asking you to accept the MITRE CVE Terms of Use (assuming you filled out=
 the CVE form and want one, we can&#39;t use the data until you accept the =
MITRE CVE Terms of Use). <br>
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
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">Gr=C3=A9gory Draper=
i</div>
</div>

--000000000000c7fe35056d297649--
