Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp1648120ivl;
        Sat, 30 Sep 2017 03:08:33 -0700 (PDT)
X-Received: by 10.28.154.138 with SMTP id c132mr5605234wme.2.1506766113117;
        Sat, 30 Sep 2017 03:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506766113; cv=none;
        d=google.com; s=arc-20160816;
        b=kR51ia4YlvKmYYAVgASRuiGHsKvMNY4VLeOLPjNJWzPlh1ptOBku3QfwWGn/VjRMw0
         Vh/42oskQ0W6O8T+oZQHl9bn7Zyyovua+W+/cynUgnohu6xADQB2uYS/E+kzNXes5lci
         /BMA9WpmVq7JzYJEyiFRhp89Gy21rd430z6vKs6w6aOmW2BLdyF8Am+fwoAu8DaGXtTZ
         yAdjDO2nX+hsSjPKl9zWecJyjSrFMRsuGTOEbeUXLcquY17xvrEDkrkrdMfO+DdODJnA
         DQQOIUW2ciTpjVB4Ofh2UPhdjSP7hTpV8NjR8sFvY8fgKoWkuvgdVgjfoNHWEFp3Teh6
         2YVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=65F8nahSDyjSuJbJ44AsHs4hWBHI4fgW37L/AyGKS18=;
        b=updikG90t+iIUqYZ+SieBXz9Cbc+bEmYHK66sIAC2DixJanrw+ROaufW3R0vms2xOz
         tadYt2T0nTGs7yUOB7TF4Zz0Xu07HMOIKBvHrQ7cXhNU9PQRoCPolHMgAgBdAvASZhCk
         yGjB4E5faITSzd9ry0HCe1D1pmCJbxBkao+D0TLmi/7+vSCRzw0fs50upgnqlnseIUpK
         spCAq6XcsIUbowAEIhrQ5x0MwEfyIWvewN08M2YLghoy6n0dXs14rEMBJoIOisJNhGwG
         pCTAiYnIvEirOFJugNlWQ0ylK8YuIiW4+APXYaZo3Zb4vRNNUs065eoSExkV3zJLUOS7
         4CnA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@passbolt-com.20150623.gappssmtp.com header.s=20150623 header.b=KKLftyOP;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by domain of remy@passbolt.com) smtp.mailfrom=remy@passbolt.com
Return-Path: <remy@passbolt.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q196sor1479354wmb.83.2017.09.30.03.08.32
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 30 Sep 2017 03:08:33 -0700 (PDT)
Received-SPF: neutral (google.com: 209.85.220.41 is neither permitted nor denied by domain of remy@passbolt.com) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@passbolt-com.20150623.gappssmtp.com header.s=20150623 header.b=KKLftyOP;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by domain of remy@passbolt.com) smtp.mailfrom=remy@passbolt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=passbolt-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=65F8nahSDyjSuJbJ44AsHs4hWBHI4fgW37L/AyGKS18=;
        b=KKLftyOPWKczPx6gwayG/30NB6IsYnlFb4P+4bI/oHVQ0dhLNEJB/Cc9m2aLt1hK6W
         nxij2E2dlNzOBBbDY6uXn4uZNzYCbNbP22p7trPyiZk/kTWUCq1BJO1RqL+VGrqNZKhq
         dHpZqmXk0RjfVuDgRBPq+ScyGND1My2p9H3nNxyQI7rV50hNHa1QKume/KRUWJi9kUVe
         J++P8EcoDrbd7uX0I0kllRH+3317bgQsYexGlJNmsbTVg0R0Zue8txwdu69e0aCFEU3X
         Aav2z83Bapc9ctOFd/Zyz2ySL8n7JOUoeQBcIcKJ2GrZMCqiuVYNX6Li2m8k8cS7yBEz
         gobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=65F8nahSDyjSuJbJ44AsHs4hWBHI4fgW37L/AyGKS18=;
        b=eCvJTmCOkgG61zwR2ZbmrSvpADuW4orUV1jiGuh15eVx45aepKJkSTxFSwJP3Q0lUu
         vFBZAJlqz1LNLI6YKVvkkWXW/jWISQybw+OJd2JsZV/Mcw7H8Kyep9gR55LYwhsLNhpS
         21Hb4Qy7/w5iOFV3yyQcDEjItv1fsvgeyhxIIL8uP2i3jK6aJehnEIyh+7zwuRXvoyo5
         co5Mfo2sq9IGE+n6PF7LCQLPNRRv9RzoNn3rd19TkVdvqfCGbKGvg4S9XZXp02jZXU1L
         c8+Lu14AEIsa17rKykiOVkJ6S1CDIDKdqErWgpOerK8rBXQ5BJUaRQjvF/Q0TQ6n/8iu
         ZzNg==
X-Gm-Message-State: AHPjjUgLyE++D4orHB50b1wN2/Ud9PKFrsO/gU7eFEZ+ihtOpN4LVI3t
	JgTLBYB0g0yxMOziGEdgD8RNRJVdD06RhmoqEXM7dfWFKoM=
X-Google-Smtp-Source: AOwi7QDWCfIzSnDJQuItZFVZVz+lNhIGk3oBSkbwtTgGdh2bBOdvXdQFrsvT+xHRM5P3e/1vYmkV6XTL+UkJt7nkJbk=
X-Received: by 10.28.109.77 with SMTP id i74mr6722154wmc.67.1506766111693;
 Sat, 30 Sep 2017 03:08:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.186.197 with HTTP; Sat, 30 Sep 2017 03:08:30 -0700 (PDT)
X-Originating-IP: [78.214.148.56]
In-Reply-To: <20170930014014.3437.18715@222.2.168.192.in-addr.arpa>
References: <20170930014014.3437.18715@222.2.168.192.in-addr.arpa>
From: Remy B <remy@passbolt.com>
Date: Sat, 30 Sep 2017 12:08:30 +0200
Message-ID: <CADqz4jNvCEhiP56KfGQX53LSDY+XXu4mGXZvngZy9DnBxO_=8w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for security@passbolt.com
To: kurt@seifried.org
Cc: security@passbolt.com
Content-Type: multipart/alternative; boundary="001a11466e72d8f008055a6552df"

--001a11466e72d8f008055a6552df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.


On Sat, Sep 30, 2017 at 3:40 AM, <kurt@seifried.org> wrote:

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

--001a11466e72d8f008055a6552df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.<br><br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Sat, Sep 30, 2017 at 3:40 AM,  <span dir=3D"ltr">=
&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.or=
g</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirm=
ation email sent from CVE request form at <a href=3D"https://iwantacve.org/=
" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking yo=
u to accept the MITRE CVE Terms of Use (assuming you filled out the CVE for=
m and want one, we can&#39;t use the data until you accept the MITRE CVE Te=
rms of Use).<br>
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

--001a11466e72d8f008055a6552df--
