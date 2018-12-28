Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3797039otd;
        Mon, 13 Aug 2018 19:32:16 -0700 (PDT)
X-Received: by 2002:a0c:b91b:: with SMTP id u27-v6mr17938484qvf.169.1534213936773;
        Mon, 13 Aug 2018 19:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1534213936; cv=none;
        d=google.com; s=arc-20160816;
        b=dcgfXG/+mm2kE+A7hh0bBnWVuaDzk8VjnE9xNAFIz8eAdSnRCo7XCbsonz8WXc37Ws
         CMZn6VrpmxnXc5DyX9c1smmsil1e+q0Z1ZbuRaXaTy5G5x9fxYLgIDUGtW8D6vjyBr/f
         fVdi4gyB1RXHz1D+E7v5fgYMQfd6HPM7SVQfxtVksi5dkwa/aL9ISGR8w+B5G0YW/zxp
         Qx98/B/4+V99vgw3+I3gj7dfjbm7Trit+WYFDYpj+GK41qNTaBMx2rkB0ZbrQpzRWi7K
         H+BCpopMQvk9bHVZX8NZs5JdpiJryJo+74cf8YWcfkJxPG5JlpG3Ds+9lUxTfzQTcXS4
         A9Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=8t/S3RcTvS/Cw3H4i6z2VLpXO2VCTufTry+lOyvQwC0=;
        b=o58lPLkOm9Ri2Z3LPEWVJojWWhk4LEjIE+Ak7PHsNA7Hu5tX/njc2++HtfUICQ5u8D
         JJnKhj5UJC/XEwk7EqybkiGwNm/9wDK5+zlZZ5nD56c6vHKVuyhyT3yNQJ+QfZyno4it
         5cTVVmSFY8dVFX6eH4C4JfM13dnwnpOAwlGOJ68Vs57xMlLFun6CWKH/5NVKi0aA8CZZ
         6IQPI8dM7NspgQSbwifW8ZsR3Ch2OFcoOgezw5fADGzpPJb1BDrbe7bDAHIZ60ydIk2T
         baW3Q8ySfL2gIwUuv4LHtdy9Vua3DALM9I9ntmxB2+wIJes2CdDyWy9uUTBxCT2tJmOh
         Fu5A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jqF2T2yV;
       spf=pass (google.com: domain of lee1843@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lee1843@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <lee1843@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o41-v6sor9953220qta.28.2018.08.13.19.32.16
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 13 Aug 2018 19:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee1843@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jqF2T2yV;
       spf=pass (google.com: domain of lee1843@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lee1843@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=8t/S3RcTvS/Cw3H4i6z2VLpXO2VCTufTry+lOyvQwC0=;
        b=jqF2T2yV021skW+an/RYe2ziMcW+JEL1PBD+k8XY0nycj+b+Mj+nbZTRkjgkZOv8K8
         KwBAf8uwnxASi1umJHLJ1ngTxbmvG7cYfIZYBrVc0K6qtquGnG8lHIrRV7aYDOdxOJ/T
         NXzl5NJx2GZil5j6nD5ywtH9GSiHssqwbrW+JiiS3D1NHNRV7hSfFIVUHh0574a5VRob
         Ox1H8aQCpP1+hxhhMHxe16q8zzltAn8S+lUmxttTdG2gC7RaZt3W23vJp/JTdDs2OhtL
         kYJMrOUfOaYs3A3cf5b7ku1d2RsO7bTKN51x43yv2Sy3nLP8Oen9V2YDS9NiXRAv6v/S
         5BxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=8t/S3RcTvS/Cw3H4i6z2VLpXO2VCTufTry+lOyvQwC0=;
        b=sgjCGFJtVD41M/Oil7fgoZlYKycYNoU5UFA/F03hUxfD4RMWYVhQcmP9KmAK0g1a2F
         mbUgChBkRcylqk7A2ZuZ6aZc7bUV7ZDZgvKyjTDP1NsJexpcG9UTBboV5m7aWcmywATn
         4q8XTeOgDMiX1v2se3RkNd1qvSzz9FV5YUsRZigiXoyMGXUgknx4ND0MHsplZnkEMCap
         om6ACQ+Z+2bva/nmsK3XtP8IPSrtTN1VykjQcLEruIKVLPbOmNftDZtnFTHeB/7ybJGu
         Kw7plwkVQ64evho/sKykrWJmPRR07fcdSb39E0sOBaKYT9uCUHtpom6zy7y3c735rsd9
         sbJQ==
X-Gm-Message-State: AOUpUlG/uW7Je8w1B6znuOqa1qWY1k8tBqdwBeZkzJAr/HXWYqCDkcjz
	luKsMDl4K0dQP6Di6SopjqiF0l91/Z7RRa/RjuItbQ==
X-Google-Smtp-Source: AA+uWPzpHrcYa9ZFiyhATwzXYObL0TY1lLPlLYxtEPpgZyG7hx7L36bPwN0nHxgwl+JqpCwe+Y/N8FDJhLh2HjgYLE0=
X-Received: by 2002:ac8:16d7:: with SMTP id y23-v6mr19308177qtk.164.1534213936281;
 Mon, 13 Aug 2018 19:32:16 -0700 (PDT)
MIME-Version: 1.0
References: <20180813210049.3797.59890@bigbox.local>
In-Reply-To: <20180813210049.3797.59890@bigbox.local>
From: Xiaoqi Li <csxqli@gmail.com>
Date: Tue, 14 Aug 2018 10:32:04 +0800
Message-ID: <CANiDU_eHfZd4KVMzGo78zJo8uRCi05Lda7AaDO=ZVibT5k0sdw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for csxqli@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000ae7eaa05735c0470"

--000000000000ae7eaa05735c0470
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

<kurt@seifried.org> =E4=BA=8E 2018=E5=B9=B48=E6=9C=8814=E6=97=A5=E5=91=A8=
=E4=BA=8C 05:00=E5=86=99=E9=81=93=EF=BC=9A

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

--000000000000ae7eaa05735c0470
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes, I accept.=C2=A0</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr"> &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.or=
g</a>&gt; =E4=BA=8E 2018=E5=B9=B48=E6=9C=8814=E6=97=A5=E5=91=A8=E4=BA=8C 05=
:00=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This=
 is a confirmation email sent from CVE request form at <a href=3D"https://i=
wantacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://iwan=
tacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming yo=
u filled out the CVE form and want one, we can&#39;t use the data until you=
 accept the MITRE CVE Terms of Use). <br>
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

--000000000000ae7eaa05735c0470--
