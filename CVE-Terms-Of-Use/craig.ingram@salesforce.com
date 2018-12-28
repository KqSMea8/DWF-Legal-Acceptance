Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp930359ivr;
        Tue, 20 Feb 2018 11:55:19 -0800 (PST)
X-Received: by 10.202.56.214 with SMTP id f205mr524227oia.254.1519156518983;
        Tue, 20 Feb 2018 11:55:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519156518; cv=none;
        d=google.com; s=arc-20160816;
        b=iqY89heRpwr0YaBGGYRFscqwLKyYx00qLPscwKQCqPDKjBscfSPAW9hXPvmJCdH8rU
         zRhduQa+VOFHfpZnbTqH3845C4wa/HlkMInvfUueeiE7K1Fs46/vn3bPFofEvRtsd/ua
         qBCh7ypwHP9KCQi4HhHpitHekbtTdhEiFpUqeqX0+Qsndg5/toLPiri6D0ExMQFTQb3a
         OkXJGqsBottXvyuYgYhj4Sap6p2HWcP5uO5jkSPn8+nsgoTPFFRdQc1Ca6w/O6zWADsm
         Ji56BYtM4GETZacFpoPb/ZnPQE8eDVkYQd/JFUeDDJpQfyPtmFh+eTzlLOmWG0qBvuBk
         5Irw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=/f0tElcbJM6RWcsGG87QkgVlx1yQLSnPkOaicqLpxJ8=;
        b=Zay808irENwM1ladldlNRfjnwT2QQn4z1+pgWx+HM0TN2Jfrx5BGlY0n8/K9dVPAom
         kHWyDrg5dV4sDwPXjGa+k4WHAhfn5olagxiLyhTUhhHqNXhxy1ly5KMf7H4jd4GFjyee
         fcovNDc0UFp2+zPR3ko6bktCfJitXEqvzArx7BY9O5eaC2mBqqnQDQpRpHe/WG/WDwIk
         7xY9uwkyY37VET50xCx4Qy202uMC+u0vvH9MaT9e3ySi72fP0iUm9Kfrn+uP3l1ZCsYC
         6pJmiXWkUSidn/N/EliLYIFhYVi+mdZHte1svNDTzaFeR1hmBjgRVjmD7qj4VI48xCv0
         siIw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@salesforce.com header.s=google header.b=gD22IIh6;
       spf=pass (google.com: domain of craig.ingram@salesforce.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=craig.ingram@salesforce.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=salesforce.com
Return-Path: <craig.ingram@salesforce.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id k51sor146765otc.41.2018.02.20.11.55.18
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 20 Feb 2018 11:55:18 -0800 (PST)
Received-SPF: pass (google.com: domain of craig.ingram@salesforce.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@salesforce.com header.s=google header.b=gD22IIh6;
       spf=pass (google.com: domain of craig.ingram@salesforce.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=craig.ingram@salesforce.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=salesforce.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=salesforce.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=/f0tElcbJM6RWcsGG87QkgVlx1yQLSnPkOaicqLpxJ8=;
        b=gD22IIh6K0EU/ebpFptu8UiCdhpGtiWrtgAtHEpOX7WU5Jj8cNNH+CryvsULpyuY3M
         s6ArnEWM5XktZ6NRTQTEgPhKh4SKaSjKl24obcP83UrhgJNTGV9qQ4eaG3XcfA8c0SPA
         /swTi2zrP09H4NFH7JgSCsK71PfQnx3JEUSxs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=/f0tElcbJM6RWcsGG87QkgVlx1yQLSnPkOaicqLpxJ8=;
        b=Jdp3fPJP/LUM724LkQ/brQDyUPgZGDej8ITNcjojYUkt8fN//RfHDcG6MK+hhQC8AQ
         lYKgWaXHPaj/Ft9LFgTw2f9wjE+je/vyqIabyQya0J0HjhmH14HT/OloJffrVQglRlIR
         uXUCL0zdQ1HkTKif3zR2RJsRYv05ws3U7gasNLHsp/4YZt0G6RqEL/QTX58rfVA//gbA
         zwBPfEhWDZu8PJYUa5IC/W8WzdMVC/eMOWiUl4fbgPbpLChvjhkFPBAor5iOpr9sDoSO
         W4qji24YHyUhWRgpv2pzDVJreg7zC+vs6dxM+MprpbcBluabxGi4b3ha1gfirWMRW9Yx
         UT8Q==
X-Gm-Message-State: APf1xPCj7VKyoWeyWppsWL8t5pwzIxEVmLdKqz8i3ph7OCq+YqQP0tET
	MhCWbisy2X5zAobjCI841FGM0booCwX7yFYGNSlRH8mJ
X-Google-Smtp-Source: AG47ELul1lnmjG+P3ukNI07fxX/0lB0A40u/phtEmSCA8OmHYCyRUR/Z+MlXVZ80ukKbmqFog5R6qfJxHVKqH51m5Z0=
X-Received: by 10.157.81.92 with SMTP id u28mr655795oti.152.1519156518366;
 Tue, 20 Feb 2018 11:55:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.97.201 with HTTP; Tue, 20 Feb 2018 11:55:18 -0800 (PST)
In-Reply-To: <20180220195434.1788.81356@slab.local>
References: <20180220195434.1788.81356@slab.local>
From: Craig Ingram <craig.ingram@salesforce.com>
Date: Tue, 20 Feb 2018 14:55:18 -0500
Message-ID: <CAOsb2P_Y7iaDrd7F-1uV2AFRSvOP=M_WS=OFtKzZSXqrT17SeA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for craig.ingram@salesforce.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114f01aaa2e6710565aa301e"

--001a114f01aaa2e6710565aa301e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, Feb 20, 2018 at 2:54 PM, <kurt@seifried.org> wrote:

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
Craig Ingram
Application Security Principal @ Heroku
craig.ingram@salesforce.com

--001a114f01aaa2e6710565aa301e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">I accept</span><br></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Feb 20, 2018 at=
 2:54 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" targe=
t=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">This is a confirmation email sent from CVE request form at <a=
 href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Craig Ingram<div>Application Security Principal @ Herok=
u</div><div><a href=3D"mailto:craig.ingram@salesforce.com" target=3D"_blank=
">craig.ingram@salesforce.com</a></div></div></div></div></div>
</div>

--001a114f01aaa2e6710565aa301e--
