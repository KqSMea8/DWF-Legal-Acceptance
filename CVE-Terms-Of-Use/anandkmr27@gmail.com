Delivered-To: kurt@seifried.org
Received: by 10.157.1.148 with SMTP id e20csp226113ote;
        Wed, 13 Sep 2017 20:28:14 -0700 (PDT)
X-Received: by 10.46.22.67 with SMTP id 3mr8453618ljw.126.1505359694481;
        Wed, 13 Sep 2017 20:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505359694; cv=none;
        d=google.com; s=arc-20160816;
        b=l+Y8Tu2dadrkdmpyZ+Qt8cCP541nATs6kJEpF/jn3vJlhqSfLFbDfLPwCuUVvnI2NN
         0XTGve95D6etVpzN8LgjemooIwK/N9k1QfyGrdcPJAeGiN92HAU+N9c8+RLRjoSHJshB
         /QRFXOuPsJjEgz0mXXVHe3EaJyqNCiXnWDRfobIxRKbTsvi7OlS8DbOFqZx6Qdz6rlFt
         Ayh8Nj0YySxqMDo3LBDi74KD5o/w3a+jsSwoZxTMcuXFtSGeyFsPZmBLxcXDqsEtr2eb
         Oaq+MViuBg5h9I7XMSbGAz6HOZZaVmcV0IqYmwZ4Bq8VGOmxwV7v8YuOn3NUYCsauxNb
         Su6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=1hxZLcJYJo7q9ZdK41HmhJfy4mbEN5rFY36oZ+mQKcY=;
        b=r/A6Tnzszt4YQ4BeaiqmvXtQtvWK7685Mh8P7zN4yXKuzrIJAbhmiOlNorRam8luTv
         mMAonSWnAk4cvyRevz0SD9cksXbrDfbmdvcbhhVb1MkFb5JLQDGDlyi3Cu6FDAGolQj5
         fm32Hp75bAnbgSpfO1f9Z1S/t1xshIsf1lgujVt0tR4+8vrGlFNWAcCzljlYIjd6OXOe
         SJlhxnRjq0ewa9mPh6p9g540I7QhuXXgYpDeobuURnHDV/Hp1mJuHIlMb5N3bu9WQe0j
         TwmB17eSii+W1QXU2A3EY/CNoWqryPHnGJb+15Kgglhi2tKs6bOjNN6nuFrCgEgm8Da0
         mpQg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=puaXnrcP;
       spf=pass (google.com: domain of anandkmr27@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=anandkmr27@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <anandkmr27@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id n36sor3440721lfi.100.2017.09.13.20.28.14
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 13 Sep 2017 20:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of anandkmr27@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=puaXnrcP;
       spf=pass (google.com: domain of anandkmr27@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=anandkmr27@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=1hxZLcJYJo7q9ZdK41HmhJfy4mbEN5rFY36oZ+mQKcY=;
        b=puaXnrcPO+ahQj2jx79dqVg7rIosfX4NacOUi2j+teUe3tevTI0kLxRJ+H3311pqf3
         Id3dbczszmf+5tmPGhdXw8xUYdauVhkrVUAL/mbmlLF0cpq/f9+krsVLYyFKTLhgTD5X
         PLR9MlmMbAHuvnDOfwyi2NLDR0yrAWWDhnKJK1dtUppnvcfLCALxF6ktb2bYtPQIOcPi
         EXcf+Y5ubvlOBwiFSABLBAGr/MGxluUr2kO7b4t0djg+W2y9cCTb5WD8MRSvC68/P6K9
         E2C/s0DEYFLY1yMm2cHdU6XgQVVyBDOJ28mBggF3+XtMPiaRb/nsvqX1sNhJQ/Wi4bWF
         gl7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=1hxZLcJYJo7q9ZdK41HmhJfy4mbEN5rFY36oZ+mQKcY=;
        b=DVb0D+4jkpGoI2dA+P8pDVViCnTtPmGe7dmAWbokuk8zLvHyDo2Y+vGDpzNOxKyQZm
         ruUk4Rq1kUiEr+Vv+/AW9u3Ncioe4M3mbq43hcBhLInWNVnSztKK44FY7TsLyAIo5wsK
         60IVeA4nK59Adr0Uvn3U5vMymJ0rAGojyy7e2EPyKVZMuIOuSpFJoFA/iUTp++oS6MeS
         z9kNueTJpc4XzAZ2afbfCqIuMRcuv3SZFnSNNiZtWE/BgYSGf1YBlOS88dAsnh/6msIn
         z82Fm008Q5ZjfHlKKbfn11lE8LCEW/hZnRg589jHhdwaC6vtJSDcPK9gdc7qCflxuL8L
         zn7w==
X-Gm-Message-State: AHPjjUgdladFWBul2n/ql7S9W+IrXepgMn2HZ38Zkx32VqUB+PgxrWMg
	CzyrgkFwKIi3GleRr0Kmxf+h2FyffEXrFEJZDIvo1A==
X-Google-Smtp-Source: AOwi7QDOUJQtEttTYQxWd1GLRVe8NiQHebuIePoqqTUj4xW69E3uxQLx3hwfvWwhj/zNFG7tPaXO33UdlrtkNRF1FYU=
X-Received: by 10.25.233.92 with SMTP id g89mr7634655lfh.116.1505359693631;
 Wed, 13 Sep 2017 20:28:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.179.30.17 with HTTP; Wed, 13 Sep 2017 20:28:13 -0700 (PDT)
In-Reply-To: <20170913203628.2669.50279@222.1.168.192.in-addr.arpa>
References: <20170913203628.2669.50279@222.1.168.192.in-addr.arpa>
From: Anand M <anandkmr27@gmail.com>
Date: Thu, 14 Sep 2017 08:58:13 +0530
Message-ID: <CAD_VfbZk6QWOQdjdB5BaC04X6gVs4pvT0zfBDBiRH=rUXSY13Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for anandkmr27@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1149796ecc569505591ddd79"

--001a1149796ecc569505591ddd79
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Kurt,

I accept.

Thanks
Anand

On Thu, Sep 14, 2017 at 2:06 AM, <kurt@seifried.org> wrote:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a1149796ecc569505591ddd79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI Kurt,<div><br></div><div><span style=3D"font-size:12.8p=
x">I accept.</span></div><div><span style=3D"font-size:12.8px"><br></span><=
/div><div><span style=3D"font-size:12.8px">Thanks</span></div><div><span st=
yle=3D"font-size:12.8px">Anand<br></span><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Thu, Sep 14, 2017 at 2:06 AM,  <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.o=
rg</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">This is a confirmation email sent from CVE request form at <a href=3D"ht=
tps://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacv=
e.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fi=
lled out the CVE form and want one, we can&#39;t use the data until you acc=
ept the MITRE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div></div>

--001a1149796ecc569505591ddd79--
