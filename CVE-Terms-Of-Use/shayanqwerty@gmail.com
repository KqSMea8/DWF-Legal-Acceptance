Delivered-To: kurt@seifried.org
Received: by 10.79.138.130 with SMTP id m124csp753563ivd;
        Sat, 13 Jan 2018 07:33:37 -0800 (PST)
X-Received: by 10.55.5.16 with SMTP id 16mr32487847qkf.314.1515857617253;
        Sat, 13 Jan 2018 07:33:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1515857617; cv=none;
        d=google.com; s=arc-20160816;
        b=z4TbcxhDjfAYIueiFebUdIEOqROWt823/vw9TmvNWf6Z+KvjdttjVINW58H++4crpS
         EU6TVTrUkWzRJRa+//tkaowc4qjs+NXh1Y0zWEP4y08aYBHJii2e8vJcuohxXlHCzAXX
         bsuICg581fP5+p/5zUORPxMpzHOf7HJWgIqD5joHBlwvHKi3Sr6R/fPI9UlRF8KaYOQ0
         pLyZTqd4Mc7U/4nmIEGA/yXWZPIz66xWsaKCsUkk7pERB0d0zQcEtUwaztkKSUFsjgHR
         bFcIC+2DMDbjwuAgw2Z0feNx+UpZ3X3LzHpYkUCYec43dNHFtxeW8dZCgwNZ7+/Jybw4
         rZGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=Y89pleqGEAeQVV1E7uFzv6MvvXNEG/nk3b8Xkj7d3dI=;
        b=EYoppeO/JpC2tur7Iwn++B9b3DP7rXTpYzp1QzM5GhHYCuG9FTCzwHXBPQff1EqPxc
         wRQR3wNB0QPE0VnO/7VGiGSJ4EkbreahvH5xI57GKbCFJYXCzUSw237gvvbHrSvYwvDB
         uYZb5uvYvEwx2gqsxb3si0oYXa3uBo6eiEtCVPYHs+9pvQooBiSan6z0Cuslvi697liQ
         z7wXUQDlg3mx/sjo3LzZkm7BJJtJR6yhRZFFuTyrwsMDnRlp5uyzygZhUVsobmTtPyO4
         XGrWBRG1yz57Q3InTKJfojt5+CcXDallH0GZuU2wMvJG1exSVS8vndy5JDledZ9iVgby
         tOtg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gCT6FrFi;
       spf=pass (google.com: domain of shayanbahal@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shayanbahal@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shayanbahal@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a21sor17101975qkb.57.2018.01.13.07.33.37
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 13 Jan 2018 07:33:37 -0800 (PST)
Received-SPF: pass (google.com: domain of shayanbahal@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gCT6FrFi;
       spf=pass (google.com: domain of shayanbahal@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shayanbahal@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Y89pleqGEAeQVV1E7uFzv6MvvXNEG/nk3b8Xkj7d3dI=;
        b=gCT6FrFi6yY00KsmeDWmxlj/zv0oxd9PoEdc8QSuqSWIJP2Q6SRyCf4Mdebjsp++15
         4LgQpc+yxs4W+gNxbgE5SRqmnHNBgrr/aFy75oGlEQEOC1J0Ubk3M3wgYA6PuhvWmnkO
         891as9Y0U1okZ/3axDf2aAJdIIxLhksmsp8PF5jnqiJ0WIVfWP2v5IsoXnofFSRbvjIO
         1XhJ95u+oXV9j3it8NLy4GFBF8vMYqTUIl8NwNQp6Hlj9LBI3g/veTfFn7zxjz/lvYdE
         nyRtzEfBjxDsrG/7/M8BrIF/3eAPmEti3W1qcEy2XKDtYBXqCyCEpLUvGBKWRDgMBpYI
         ZPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Y89pleqGEAeQVV1E7uFzv6MvvXNEG/nk3b8Xkj7d3dI=;
        b=gegGF1CubSgnttos8F4/pAjoqBHD3+EAcwM0HIMXRDozUsU/ZYcCx1fDz3WOwl/QbI
         ZMRTCaTAaU6t4QAbgLLYALiMhIYk89QTFbVU4trvfW3jFH5ykmY9hwFpJhjfvwfTcTk1
         U3gC3cVA17DSeyk2LFpfL0ass5bNzBG6aEU2SfZVa5roCE0HBaCH9t5dLe+HfdRGT9e9
         X4ltilYNGP5F0GqCJl2IMWHLoS8HYePFmxuzuTtNl/WQ0FLoSn07wCYwp60fuKmpPO6P
         aglYnmQ6UcJenBkodr7K7Hj1rvYexo7kbVFY0OntYMcVER/i2MP9wL8D+BlSVPj3+fUF
         3maA==
X-Gm-Message-State: AKwxytfIcfwzw98sReBEXl+KeVitPXvVkvgaSFMWTaPemINYhbfZ+RIj
	SqezQiMGR05j7T5IkbPVeeMk6hPsqDoEPr3Sm4kknA==
X-Google-Smtp-Source: ACJfBotEu1dvkyiSApG0z/+T6ewTVyeuVmPpa1cF5ebLRT8815Qb9wyw/9njiS//8tLhzMOhr5ZhNqOyerDNa+S9yFw=
X-Received: by 10.55.89.67 with SMTP id n64mr27775525qkb.178.1515857616644;
 Sat, 13 Jan 2018 07:33:36 -0800 (PST)
MIME-Version: 1.0
References: <20180113150632.96331.20810@slab.local>
In-Reply-To: <20180113150632.96331.20810@slab.local>
From: Shayan Eskandari <shayanqwerty@gmail.com>
Date: Sat, 13 Jan 2018 15:33:25 +0000
Message-ID: <CABdE8khq+u52D+OGST+1JOkApnS1WJ1SNt4Uxp6L=c1KKWHxyg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for shayanqwerty@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114c9760c531240562aa1a9c"

--001a114c9760c531240562aa1a9c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

This is a confirmation email sent from CVE request form at
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
Sent from Gmail Mobile

--001a114c9760c531240562aa1a9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div class=3D"gmail_quote"><div>I accept.</div><div dir=3D"auto"><br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">This is a confirmation email sent from =
CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" t=
arget=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE =
CVE Terms of Use (assuming you filled out the CVE form and want one, we can=
&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature">Sent from Gmail Mobile</div>

--001a114c9760c531240562aa1a9c--
