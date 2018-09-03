Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2173834otd;
        Sun, 2 Sep 2018 22:40:36 -0700 (PDT)
X-Received: by 2002:a19:9d94:: with SMTP id g142-v6mr16689373lfe.150.1535953236308;
        Sun, 02 Sep 2018 22:40:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535953236; cv=none;
        d=google.com; s=arc-20160816;
        b=RYRwgRJnghyuESb5TI6aIydbSRJXwQ2aHrO2Emjct/OJB8pq9zuzH+7xb94Vrl9P/j
         OlAsCpEfYe3OaX2iqClAJKMsmResMWQxXXBUo0RfZVNMFsB9eNzXJxmHZXTfpdWIJbrO
         w58m1+D+VTpUv2a1KPJakmDXd1XFoctk7ooih01ihHN13aMigotntREQBuVb0rMXFehr
         sdiWr6M+baT+Zi9xpTj31uLVTRJekTsq7cgD+wEMfg9NGFTe3C+JFXetPxchnX/c5MDR
         vsAWIRUeKCH0VOo7EBwyZgXRRr1mvOzJnmPGieu8NuJpUN1mnBMsqMOucSkeQhbz8px/
         mUfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=3JGsKmsLBYAHN9P17NHaYvGaClXzeiCcxwam/JBpvnQ=;
        b=e/QmthphGx1XL5ULf037mp7jzTX6KFZURb24G/LLpB9XdJZ4ANvUx4tiYMSI5pvwZz
         RpSDnb7lO9tQb6m2LXdAwqK1iVKxQfIv4JX4qzCRHLzjwHSAO+EjVOmVUGJLXIQ+Jgo8
         Sp6ISyA9FiBvulwEyU+rWSs2L5ho/pV2VzYMb1Ko0tZOWhJLk74gfeRoSVWecn0gu64w
         yYb34hoklHZAlXJ63tftvAOUugaHsbS8yKTRELJ5I/gdpUHy5fHHIPaLHWFihpJEvShN
         JHwmTklSqvatjLyraoCC8VOyTaeEKjlpgUEKFrKU6MNFjfw9m2fetyP4CHrdiHH4CptO
         9PCA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZnLtEwxO;
       spf=pass (google.com: domain of frankmorgner@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=frankmorgner@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <frankmorgner@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m23-v6sor7223911ljj.33.2018.09.02.22.40.36
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 02 Sep 2018 22:40:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of frankmorgner@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZnLtEwxO;
       spf=pass (google.com: domain of frankmorgner@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=frankmorgner@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3JGsKmsLBYAHN9P17NHaYvGaClXzeiCcxwam/JBpvnQ=;
        b=ZnLtEwxOz0aBO0S9QfFNtnmEgs6CreDtwtNsydaTf+WA/xggyhPM9mDopzycEgyeej
         38ZTLuQVNQMEtVZnjHvfrjlz4hK6ehGkbMTz+MZN+L8a7cUKXGmVuymwwWMB1XAzgW2P
         AH0NKLPGOZBXqB05IZKbBNUQH1EtgAHIGupHVsVqft30kOV45WsU0Cs+A+UrnulP4YWh
         xtacmyqC9KWsQO0b2ZHWG+S1cCASsHULVjsZUlsUthzIaIfT/8D+bYdT5ViHsn60XDyX
         u62ImnSjNWEB6GjurgBN1jisNX0Wuu+/ARUpmHAMB1WjuPuqG/dLxRq1uY5jMBMM46eZ
         cXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3JGsKmsLBYAHN9P17NHaYvGaClXzeiCcxwam/JBpvnQ=;
        b=IY+X12Uyi+odJ5mnCUEIW4eMikCrktbOjJX+rqblTF0ECUFML27y20zkEv2SfAXEIr
         Cmw2jIiMjk4gfoEC8mJfvaQNF32vUwIzK6uDw12f9Lbr0/iJxtU9rzTssZC+miwZnkAZ
         SBH9X6PK0dHTKyL9Iapw7Ks6AzCyXaF8dDqheq4yaOGKXKqEhJjfEmWCvc1RqkbP84sd
         d79Uwm5Wh+dYgBN3H71H4YSdJKxKVTqPmFuC3vAlgq2rJ5QQbT87XYD3p2Si73qYAyr3
         wc2Eu7FCdG3T4E6RurapwuMF/O33Tma3mAHNhXjvsOSGq7DlckxNrzn6scWV+a5qL4UN
         fo3w==
X-Gm-Message-State: APzg51C5F8vllzJ9SSTNyidCldlT5wwfPBYCl6JCho9bF+VCKQwlrmq8
	Qb/TZLsGLNaqVkcLZZMmpjYvhfOM0BQcdgxp8zH2iQ==
X-Google-Smtp-Source: ANB0VdbY1GVb/WgZOW6w+DPYjHdh/FbLzGWAYoRHVKSuFXtMfz15FM9UUPiMr+1hw/akvQDAfYLalL5/GrV2audKli0=
X-Received: by 2002:a2e:2e02:: with SMTP id u2-v6mr17118339lju.77.1535953235727;
 Sun, 02 Sep 2018 22:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <20180903005843.6662.7790@shiny-2.local>
In-Reply-To: <20180903005843.6662.7790@shiny-2.local>
From: Frank Morgner <frankmorgner@gmail.com>
Date: Mon, 3 Sep 2018 07:40:24 +0200
Message-ID: <CAO8bUynW-YoKMd1QmmmuL9scDB8FO81jbR_qB_iYcwZWD+U7+w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for frankmorgner@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000001dd080574f0fb3e"

--00000000000001dd080574f0fb3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

<kurt@seifried.org> schrieb am Mo., 3. Sep. 2018, 02:58:

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
>

--00000000000001dd080574f0fb3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr"> &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; sc=
hrieb am Mo., 3. Sep. 2018, 02:58:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
This is a confirmation email sent from CVE request form at <a href=3D"https=
://iwantacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assumin=
g you filled out the CVE form and want one, we can&#39;t use the data until=
 you accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br=
>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank" rel=3D"noreferrer">kurt@seifried.org</a> manually=
 with your question/concerns/etc. <br>
<br>
</blockquote></div>

--00000000000001dd080574f0fb3e--
