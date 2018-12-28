Delivered-To: kurt@seifried.org
Received: by 10.79.210.98 with SMTP id r89csp671752ivj;
        Fri, 23 Mar 2018 10:22:26 -0700 (PDT)
X-Received: by 10.80.150.2 with SMTP id y2mr30293682eda.114.1521825746180;
        Fri, 23 Mar 2018 10:22:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521825746; cv=none;
        d=google.com; s=arc-20160816;
        b=ZskSyI/IrEC/V5FEkAQZmYEbOt09ikp9EpUb8Q52Bn0Du5T/GPHzMxSeFwamQGD/y0
         lllvNazsDQGEITMAsewHCVLiZVdF6WHLb/AUoLuid2tm2NV/b7UJFt0Lhor3QYuca8t1
         9S3Z6FEB2OteY7yegldezPKInwFhNA2FpOTG61pIXt5lNlRVXCzkAs+GBN7q5DMQGZQd
         ZHc41QNMi3VFXlld/b4Y9dkBRFqCUfoLujidIWlY9Uf4YIHnKV7zuJ3xbNf4/2MuzPud
         V9KPgKOO3+serKu6reab7tHGvzDGg+12hy7HDWm4X7NulTdJjAJ3N7ui1ra0UwseT9cN
         8Yxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=O/QCcQAHRa6JYMrrdy7l410g82HSF4SUpeZUREZmaNg=;
        b=kPJdlTfqnrwGojJ1mGWCy3EiW05IzpUToOnHuWQphqeqBENxjXrZsEF8bf0KwsdNWU
         sSUoe2enLzgqpuKq/+QKJJwsLd4rO1IxZd0FdjmuOntw1NlOwJtsgsVA/M0cJ5lpECJr
         bRNamfhYF3fF1yWXRlpCaBP3KKNR2EZhHnclzyAeKgNFc+xJKdkn+kT68FvpF/GxUwYe
         iVN4CiWtR9HNMnGTRB3h2i7u4kB65Ut4tK28ochjKw/8HgJ16DgVbTd4Y3935ZF6gk8X
         EgPtTPVTi6ISt16LCKlVJ957NzCs8yehL9YU2Ydi77ozvkCNvR2nXRWKVYHCjl1xPBzA
         LHdg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@semmle.com header.s=google header.b=VKEKfaxQ;
       spf=pass (google.com: domain of kev@semmle.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kev@semmle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=semmle.com
Return-Path: <kev@semmle.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x91sor6556071edc.36.2018.03.23.10.22.25
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 23 Mar 2018 10:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of kev@semmle.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@semmle.com header.s=google header.b=VKEKfaxQ;
       spf=pass (google.com: domain of kev@semmle.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kev@semmle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=semmle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semmle.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=O/QCcQAHRa6JYMrrdy7l410g82HSF4SUpeZUREZmaNg=;
        b=VKEKfaxQ44GDsqWqaj60KFiHq2iPtTYH2eqKhze95emYZds+STt9K0Ni438i/fin4X
         OeHMKBlS81MjqpIOOKvkba3DoYfzLvFZKq3/5DkfE7oHzxBDQw52PTaFU+yhAZGjW5mw
         Cmvyu3CCiunEZt6yDLO4G003CtMwkKd+tZmiE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=O/QCcQAHRa6JYMrrdy7l410g82HSF4SUpeZUREZmaNg=;
        b=l5cmUzo1YVNnrAkefzN06XGyCaCAAvqi+Wg0FdaeFOblqq670BsotslQtl9RCgHAEf
         VPI4FCXSQrOEZS3RwmW4KmnceVjHLFSWZrJ4385Z80CJ8zAROxgcEl4l9WA9ua/KTQlW
         F4UViuheb0sODkTTEo3x+zMT+bPQQl7U9jDmLlgh7+BgLMsfVJV3dZ9KyTIY8lIcUlve
         u3wgo4zxTQpVaVBu8kEcW2H+1qTiF9AD9+ZfYx59Fz+RfCH5ld33ngnHp8QgcPpbwQ/j
         HztzyR6JTKIQfy/JnrgE7Pp+bwDbGqRiB+HTU3/OeDS1g4wpQhWIopsNyNdbtM9xDkuu
         BDSQ==
X-Gm-Message-State: AElRT7HBoEqep5IowOc8es8W6CIfWx6/My6+lZwQEChlZ//dfO52OY9l
	fDXqgRUq2idpD+qJfAcoVCN8MH6jwSdxzEn8QbiT2Ecu
X-Google-Smtp-Source: AG47ELuHsM1nKU4CVlP6wk7Z4Vdk8g3sHD2S0/+pHMoaCBzRMu5bcBcaRbzipQOZObTOSVw0ofEvX94cuh4R4KMO/u8=
X-Received: by 10.80.139.253 with SMTP id n58mr31259819edn.216.1521825745199;
 Fri, 23 Mar 2018 10:22:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.194.65 with HTTP; Fri, 23 Mar 2018 10:22:24 -0700 (PDT)
In-Reply-To: <20180323160707.24748.11293@slab.local>
References: <20180323160707.24748.11293@slab.local>
From: Kevin Backhouse <kev@semmle.com>
Date: Fri, 23 Mar 2018 17:22:24 +0000
Message-ID: <CAHiMk_qb5t4=BvUePFj+kzkN101p3YZkDAAiZnbHa5iwwB-PUg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kev@semmle.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="f403045c2338f3f8a6056817aad7"

--f403045c2338f3f8a6056817aad7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Mar 23, 2018 at 4:07 PM, <kurt@seifried.org> wrote:

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

--f403045c2338f3f8a6056817aad7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Fri, Mar 23, 2018 at 4:07 PM,  <span dir=3D"ltr">&lt;<a href=3D"=
mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sen=
t from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefe=
rrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br=
>
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
</blockquote></div><br></div></div>

--f403045c2338f3f8a6056817aad7--
