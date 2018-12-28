Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp128073ivl;
        Tue, 10 Apr 2018 16:19:04 -0700 (PDT)
X-Received: by 2002:aca:a8cf:: with SMTP id r198-v6mr1643276oie.180.1523402344037;
        Tue, 10 Apr 2018 16:19:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523402343; cv=none;
        d=google.com; s=arc-20160816;
        b=XQJkbFphVWdqAZlpXwWbbL9YOMxd+kE6qARbHd4DVcBk8T3eyBwarSZ8XrMdzUTpch
         CF5pYsqYjpGwB+ij/zOc2lMlK8S3xVJCKy5zWa/1uHvwIWKYpK3cLi1qvn0gftV8dfM8
         /OZemkLuIZwovXV+gDljGkKSZKZ56O7RseoupXeIvn6C0lB36Csb9q44kvQvrZwOfPqS
         Oi0FDCRGwyWpPGysqktbnrnlwkzd4Ztmqtgb8x+SvZ4dIFfZJqEMzN4ik1lGuHTeobeN
         Vlyhgk0ze1s0J95JiyCwtR5A2IKwo0Ju1fnHreY4WuG40pzjhkZw8mdVP4JW5U/A9zJA
         firA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=yt1al3KaoVVAWHZV5ItQbQJHBHM7OAfmGtFIb+OLheg=;
        b=XoumXpb6IOopfT2WLNVPqT5mpHwnLvkCs3/K0B/w2w+IcjvJDeB1badIGVeHmB0NJa
         HY+E7RdtAOBk3muPAvVDXEfvSru6R9m02CMizDibOVH7wh84jxAkTQFKTmd+UVXobfLP
         NuZdxfjFV7GxsX3JgH7uL+wxVoERhh0EY8BeF8zmA6bfF1ILTeN9CSDbmybXtSKE8ouP
         xM8PIQr0J0ilDEQvhSofXRUd/x0jMkNahK9RiRqr7JnK/x1qLn9pMRWO9l4pUMLE4snw
         3+Hs3QmgryN4Z0MG3qNjaZZ1UFv4gQQcsyqiIPUd4eZMJkA4vtESkyX9wJ0/cREMNOE0
         hMkg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MTxmdakY;
       spf=pass (google.com: domain of chybet4@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=chybet4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chybet4@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id b17-v6sor1698758otf.264.2018.04.10.16.19.03
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 10 Apr 2018 16:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of chybet4@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MTxmdakY;
       spf=pass (google.com: domain of chybet4@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=chybet4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=yt1al3KaoVVAWHZV5ItQbQJHBHM7OAfmGtFIb+OLheg=;
        b=MTxmdakYT7kBfKI2khcDg8E2cci6thfN7jCPA0yZrG7y+QKar9bmojy4GUhm+jIUCK
         uj7fgBEtWqHVw9Imb1t+4bpO55D2Yov2u5dGdCz+muu9zXA5KL0LztyFL12XTasJGUNu
         y4DRwZSvPznLcw5O7t+mfNtJ5XAEBzNtjpGboehxE9m1jHypzKHYKeP9lDdvJ+k8dOOE
         ndYXEGrB/NKK7g7Ru0g1vCTcWjDLBHpf3ivaRBI/+qI0Ir7HcxLw1Nep2QuhxxfgJG9j
         awgHVxsdynnYXT/ziabnqY3tR7+gdu6pJp73ebEkBZCx5+LqjyD9fIGxlk1YgFxUCKU2
         bA5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yt1al3KaoVVAWHZV5ItQbQJHBHM7OAfmGtFIb+OLheg=;
        b=DdUTfGM8EqArt+GRh7F6lHDoRAbzo/t9ZPFys0ks42zgJvnDccXmf/JqLDTI5iq+B6
         VC+o1/0GvaHfPX8akxji61gyVbPyXLA30DEAJpWZXNH4AgVe4TiZYbm8V9CMEYXjQGwA
         9ZmJQWOK7zuUZz238+vm7Vmxa+o6bwbBUwUrW+KTa/5RC9sMESjAUjSj7FOUUB5JWs5Y
         6o1Ls71lPckDRmkuu4eGOzJ2/Sm2PQNLqUNPdWRMF41McL8mOZfxpgEKAGmbwDUAAbDj
         MiWuLfi7T5EPsKO1XXnaeErJzXoor8VsW+5tYE01KbyqINqCoy9dm9zwADa5/V2im7MY
         NGTw==
X-Gm-Message-State: ALQs6tCip8Yy4rW+bAvotSERn/ghN18DTdsqjzQRfSH+pAe/lxrFra9s
	hXX90kC3hsMMisS38meeuUc2Z38LmgMPokyDw6rDbA==
X-Google-Smtp-Source: AIpwx4+y6PYNpo7n8SLHCXR1pvrzPOgGTgCpHdYkMFjBZK3XD4QuIbf2i0SfIvEpl/zhD9jNHtXkRVzsscNHlm+TBLw=
X-Received: by 2002:a9d:40d9:: with SMTP id t25-v6mr1729058oti.388.1523402343710;
 Tue, 10 Apr 2018 16:19:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.35.195 with HTTP; Tue, 10 Apr 2018 16:19:03 -0700 (PDT)
In-Reply-To: <20180410182719.97071.5782@slab.local>
References: <20180410182719.97071.5782@slab.local>
From: beta chy <chybet4@gmail.com>
Date: Wed, 11 Apr 2018 07:19:03 +0800
Message-ID: <CAPPoy+H4yzWKpQOCVH9dJjOFLY5kP66y5uChzoAUeQ33Sw=9Xg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for chybet4@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000008c02a4056986bfd9"

--0000000000008c02a4056986bfd9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 I accept

2018-04-11 2:27 GMT+08:00 <kurt@seifried.org>:

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

--0000000000008c02a4056986bfd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
4px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">I accept</span>

<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-04=
-11 2:27 GMT+08:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.o=
rg" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">This is a confirmation email sent from CVE request form at <=
a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">http=
s://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (ass=
uming you filled out the CVE form and want one, we can&#39;t use the data u=
ntil you accept the MITRE CVE Terms of Use).<br>
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

--0000000000008c02a4056986bfd9--
