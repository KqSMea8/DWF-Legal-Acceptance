Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp2068095uag;
        Tue, 23 May 2017 11:33:47 -0700 (PDT)
X-Received: by 10.157.3.142 with SMTP id f14mr2709368otf.194.1495564427642;
        Tue, 23 May 2017 11:33:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1495564427; cv=none;
        d=google.com; s=arc-20160816;
        b=GS5IAn7Dz/tc34PVUeDH42EfPmGHKsKkwRPqAYz9ho69x670P43Wt2MEPOHXvOipYx
         uLW+M5XbsQSEvV6MMLo8zY8mRB43kQCsOGfUw+tf9Lq8x91OxZAcAIwaGGm2JHmcPhmN
         1Zzapc24PBTmEQFpgIhX7p6JByUNLld2ouu2StZj4NrfLDiK35qAd0vCo3oGqxkOarmo
         cBMMUmRVOu07/acVLSd3Aw6biqoFTELtDdSpLcO0dTmogQUL9rS7MrVqvzLTN2wOc8c+
         BcAX6KEgcvNDxSru0uy6dQTnYeVwjouRTw5saf8mVtXiF43PQEvEck+kxgzy7QasJTQs
         gXyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=MlyBEzjQ/BMp/QeuuJ3FzFUeQTPNXxaXy52pH1LzP18=;
        b=f+n+I9qhgAsjQ37BPOVhF5rQVuOrK3druMtBz1BOiifwncZfauU1d71Dytwde+GZpv
         T2GK/vznYiqWRcpdl3B1GYX1Ln063Mc6uhTShYu5ioOmTC6N2zoMtayRxwwfDKkNjK5E
         RyxeUHNnIF2hlew2O2hgmmT1mnCdI/navrtHCeuwQpRTrUKm1csooZG6ckByf8ioLrrl
         yy67UgQM8OHE3TMbDWqdt/D0b3Ym9ETtjlEqi7ZwK3sDeKvlaEaF6vcVyA5bP2UBs9mD
         ncfSoGGr3bTyj/SIvn9GHqG7WoqpQ9jH91me051j8fEaG8GWAYyvI41c4Dn9GrmxM9xK
         8Lfg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of carljordan90@gmail.com designates 2607:f8b0:4003:c06::22e as permitted sender) smtp.mailfrom=carljordan90@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <carljordan90@gmail.com>
Received: from mail-oi0-x22e.google.com (mail-oi0-x22e.google.com. [2607:f8b0:4003:c06::22e])
        by mx.google.com with ESMTPS id t33si1551291ott.248.2017.05.23.11.33.47
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 May 2017 11:33:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of carljordan90@gmail.com designates 2607:f8b0:4003:c06::22e as permitted sender) client-ip=2607:f8b0:4003:c06::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of carljordan90@gmail.com designates 2607:f8b0:4003:c06::22e as permitted sender) smtp.mailfrom=carljordan90@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22e.google.com with SMTP id b204so213003774oii.1
        for <kurt@seifried.org>; Tue, 23 May 2017 11:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=MlyBEzjQ/BMp/QeuuJ3FzFUeQTPNXxaXy52pH1LzP18=;
        b=l1KVdF8gOgmU9h4nRIQXwxzqCREtDRtQ4cbLmE7DaM8/HpLVYKsVbkRQGvI753s82w
         C6CkBUyBjnJWfdclMn9LlyFkv1QUMttGidEMsvnTQLO3CPhmN+7AMjyVwNkC6niD/QdW
         WECqtgdAJZPLrn6ZQE2SiASbPI1qsZfym5WTLov9vzTQfG9f270vUjQHHYNNXVIaKQCZ
         qeMBXVxrcbSJ/ZqfNswox/N/UUOJQA7AiH7XrBOXM5HxcQL609HvZj4BXTEiapDCZMw0
         Vj6w/BJkUKWJOy7mi/8bMvqMK+SAlGzeb6pyP5eXqRi8XFed6CymSjGy39l7ICVfUlfb
         uUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=MlyBEzjQ/BMp/QeuuJ3FzFUeQTPNXxaXy52pH1LzP18=;
        b=dvPYHrqVP5M7ny6pYaBqTB8OUQCne4pFv+Tp5M/jxXVHyeL/UqQ3aWhE/popze60pg
         eMt4jywMLSEst3ziyyL7ZRmEcLR1Z317uGRSRl3LLz3sQJZbDcyl1FrUbe8wG3Bjv7UI
         4mOWZe7KcO/k46HcBOvjKOa7Na3lX/R0y+flE6tP/cYoUIyIMR6lkJeSvf1sk9x3/G+7
         Njl6Daa5444EjEdIJNrQ7WXjRtuVMlOwz7xpQNMLMIaY1Y5BVTJ9XFH5eY2I5f9L6bLF
         DhrX7OHzA+PWGIIhY5gsLujd6PJbxgVVTNM3DZv1CO61SV/0Y8+itbkabAsJVI1fEKM8
         xyfA==
X-Gm-Message-State: AODbwcD8hge84Yug3CRriR87OIej6+1cyxF2hcK8Wx/caaitWGUFt3M1
	Z9+MrhYbO5u3VrHR6Dz6/GAX4UGKYo1l
X-Received: by 10.157.38.143 with SMTP id l15mr2252166otb.160.1495564427093;
 Tue, 23 May 2017 11:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <20170523182412.18393.78721@bigbox.local>
In-Reply-To: <20170523182412.18393.78721@bigbox.local>
From: Carl Jordan <carljordan90@gmail.com>
Date: Tue, 23 May 2017 18:33:36 +0000
Message-ID: <CAPHqEZ8ZSLaH-1QkzUCcjUfm6b7pUDwzZ+ADvjxeLz9KgCzn_w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for carljordan90@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1145cc0a6a6a3f0550353a91"

--001a1145cc0a6a6a3f0550353a91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, 23 May 2017 at 19:24, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
> --
Carl

--001a1145cc0a6a6a3f0550353a91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>I accept</div><div><br><div class=3D"gmail_quote"><div>On Tue, 23 May =
2017 at 19:24, &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmatio=
n email sent from CVE request form at <a href=3D"https://iwantacve.org/" re=
l=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to=
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form an=
d want one, we can&#39;t use the data until you accept the MITRE CVE Terms =
of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/tree/master/Terms-Of-Use</a><br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature">Carl</div>

--001a1145cc0a6a6a3f0550353a91--
