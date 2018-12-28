Delivered-To: kurt@seifried.org
Received: by 2002:a4f:ca81:0:0:0:0:0 with SMTP id n1-v6csp2243011ivl;
        Thu, 26 Apr 2018 08:16:13 -0700 (PDT)
X-Received: by 10.28.133.12 with SMTP id h12mr18296512wmd.136.1524755773422;
        Thu, 26 Apr 2018 08:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524755773; cv=none;
        d=google.com; s=arc-20160816;
        b=HnBPH3W+NqHHyNfIt3xH0JQ95n8TKujYf6R1gVEhRlXS5+W7XFLmwaEVOlYjBB2sTu
         tLm8HxGAV0QqCtHAZowe3NlAmMxAC492HLT2CtboSffaNLFAN+eiL5I+f6H6wfAOEQWr
         oMQoKBk5Sx4JNUPii+XrFXsHi2RC40SrpqyQkXbuawJzmqOdEC9y49ql9AM1CETOo+at
         YZjOg9V+xO2lrWBARqYpYGOwIGqkeP8J+RZxmpa2cHd3/ysjwj7iwxj8rEuMWNFPBf9b
         QTKSNoJmZQ6jw8eu5Mwnaqd9+SaR3Ai0kyHggwdOzaMySTOvhhdms3wOn/fdllXr4RdN
         mHog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=ZCGqQZADFCakTA3SuGTIG5KORFkXvJrSayt48CPpQVg=;
        b=OahnQSjrL0cqZCdy3rPIyvZyl6N5/m/qXFLg7eqneB2IvYXpdq8Ib4BePOtizZ+reg
         aixQW1AOll3e0VVt/YaKCvXN4hSW0bFZyW6gzV/BGs3eRB9HEoRX4WApZleEnlKIeKA7
         MISjqmNmOHMoA1q6NVwTU77pln4Wk/ScTMXSx4NY5VOwopvNr4Splh7aZbqVIPY6sMjA
         IiW+DoTK+YZCm2jW7ESQn3HSix8q73Qdy2IPThTiw2NSXNKXDZyjheTYN3eXu7Ga3Bhs
         XgYCq6IRs7ZKfhWJCQ6wFxKVegauoGVbG6kZ5Tv5CJdXhjUCJbZ++EuojTxNqCJ3REu/
         0Yew==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ImAP0nwq;
       spf=pass (google.com: domain of zeng.ambulong@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zeng.ambulong@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zeng.ambulong@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q145sor2250563wme.17.2018.04.26.08.16.13
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 26 Apr 2018 08:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of zeng.ambulong@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ImAP0nwq;
       spf=pass (google.com: domain of zeng.ambulong@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zeng.ambulong@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ZCGqQZADFCakTA3SuGTIG5KORFkXvJrSayt48CPpQVg=;
        b=ImAP0nwqKptXfDpSrC/XdTU8iHuxxBxRYVzQKKkK1GzAGoefN0E0Kai/31puLIo3Nt
         b2mpPEOqzgSOUd4rqffj2/EOdldYMlH++RgP06u9PJvYxWtfvJFnFlSAhrbpqJZuhIVQ
         8peNnBJ/z+rnW0EeGmne9cAcR1Eom6ff0DGAd/t5LDp7LllJxu2FO7fd+LbFPJzGNgn8
         f5yekG4q0T0Jn3T7og0jSHexBsYeTxQJmvv2aq5LEXegAL3eBw59Ls5gSeERqwEgqcyF
         6NxwVfMEEbptXz/9uQWVzR3rqWqVdpWMqUnftmbeN+3+D/U08gLvITV1S6n97yVhw7bH
         BtDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ZCGqQZADFCakTA3SuGTIG5KORFkXvJrSayt48CPpQVg=;
        b=M96+olLf/fzqkUH3KILihMfcE0S5vWKMo3cauw0OuaTDpLpbG281pV3A3ivIupciUl
         VesYK/VuPEDaNzBNw4JSEwl9bF/tTxKFSHwI1MC7ima5yeNTjtlqqbqYneJYWpCNht74
         8Vpr4eJ8ts28TJ6lgkCIyRVFha028BIauaBB71M02A/osFPObFqDHxkNXsKAU3T9kj1Z
         BzRY7s0ACoOkbxdxUGfWdzGMPH6VhagaLXkOork5Xd4yn+z18Q/EJsb9gnA6827PFeja
         GZQhj9tZI/AE8TdWl3G0n+C9CaT1YLVHk745GyJHaJc6Rtepbyr+s2lWbFAJJE84uLak
         iQVg==
X-Gm-Message-State: ALQs6tCHvZ9WGe6lsYvQvXFPDlFR9SIbkA3bjKS0mYI5TOTMTierUR5a
	SEIQQd/rZcB2lYUDg6mUwhjRRBHnosglgDbvC73Y+jA9
X-Google-Smtp-Source: AIpwx48ZYPy8U/XUwOsd9qdCzF+cMM6qTnUwJhK3zPXZQJrd2e/GisCMWGBLOfXIfnzV7/Y8c4xnwlrKzcObe3G/kWg=
X-Received: by 10.28.247.9 with SMTP id v9mr19889802wmh.67.1524755772927; Thu,
 26 Apr 2018 08:16:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.175.229 with HTTP; Thu, 26 Apr 2018 08:15:32 -0700 (PDT)
In-Reply-To: <20180426143345.43285.1860@slab.local>
References: <20180426143345.43285.1860@slab.local>
From: Ambulong Zeng <zeng.ambulong@gmail.com>
Date: Thu, 26 Apr 2018 23:15:32 +0800
Message-ID: <CAKaEvoX6tFY6Pwi+5=OXRmV4YXkjmwsq3FYO6_R=mH9_NRzJFA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for zeng.ambulong@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="089e0827d0ec36f610056ac1de13"

--089e0827d0ec36f610056ac1de13
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-04-26 22:33 GMT+08:00 <kurt@seifried.org>:

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

--089e0827d0ec36f610056ac1de13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:14px;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline">I accept</span><br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-04-26 22:33 GMT+08:0=
0  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_bl=
ank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Th=
is is a confirmation email sent from CVE request form at <a href=3D"https:/=
/iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org=
/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled =
out the CVE form and want one, we can&#39;t use the data until you accept t=
he MITRE CVE Terms of Use). <br>
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
</blockquote></div><br></div>

--089e0827d0ec36f610056ac1de13--
