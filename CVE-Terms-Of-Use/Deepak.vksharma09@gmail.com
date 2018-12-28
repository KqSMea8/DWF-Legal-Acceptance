Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2179550otd;
        Sun, 2 Sep 2018 22:49:29 -0700 (PDT)
X-Received: by 2002:aca:338a:: with SMTP id z132-v6mr19319168oiz.184.1535953769296;
        Sun, 02 Sep 2018 22:49:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535953769; cv=none;
        d=google.com; s=arc-20160816;
        b=UFPRjc+XOv2TPux1NxZWlBPUm3IEUh9OIknCQRFC+7LkajH+hfsjiMNV5tY6WzGjQQ
         0LunaMdPF+ol94qjmdyJV8mGePOJ7vsGdnnj2E2FoYqLikCLciEVKurTzxWvRnrayhKf
         xJNdVqo2m8Zrk81BfgHSkE/e/cgJPq4j/TGwbLM4TxermOPm9/bTIAsz3IusClls6DBP
         JeSgGsQM82tS6rOSLvHBaZGZG8vX+rsWBzG28JvG6mEF7HlsKPFvaunuSmHlT53W1Uax
         N9L69d/F4U5tR03CrzMfUk7gDxdpffqWuy/lGVQ5ENwmWJpHQb2AuPvOrCYbSZypB7qp
         64Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=GAdSRThuIaPrI9bzWKKT6x/BGqKaU1v5yaYHPnBulwQ=;
        b=aEE5ICc4N7IVpiubAv26BlXIFUV2+NSTtLAs9pPxOOqeYj0QCvZ2NKY9WBSGuQyfNz
         OAtYCSVinctWBTAwqfluFk6x0kMg/xuLl8j3YKQdPvNcpLzkVfO53nUpupces/T4B4Hd
         Dv/HTNmLRMzumpBvvYuOocF22yqYUUcbi8rbgD5yqpEutDPD9wT4X7eN0gsejxQb0m78
         T6qpAwRgL70juQhJbqRtjJq3eCt8EKC9AmTdyRQuOy4B5/zucex9puxoeCf+8e2ngsx5
         ArHkxtkHIc13vq33R8Wj3rIwGh2GgjkSpRtbhPzgljEohHE389t4Xn8tzh9M1R1tvp74
         EKgg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QRC5RPwO;
       spf=pass (google.com: domain of deepak.vksharma09@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=deepak.vksharma09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deepak.vksharma09@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e3-v6sor13974157oii.6.2018.09.02.22.49.29
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 02 Sep 2018 22:49:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepak.vksharma09@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QRC5RPwO;
       spf=pass (google.com: domain of deepak.vksharma09@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=deepak.vksharma09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=GAdSRThuIaPrI9bzWKKT6x/BGqKaU1v5yaYHPnBulwQ=;
        b=QRC5RPwOP8Iv14q4Sv6gBdblcIu7gSw/MBMbLMxlHXpYxtavKirp03jnScPxW/jjhv
         tNELC30XiovA6uKMFgxOge6ovOfAwweWm2iQ2UCaUfkdo5tkg59mEtet7vya3LpndCCH
         6U9ZvV4D7nPy4FJMdSg0rJO2i5+SiLNLf0tLauvx952RVOugvCH3MzJXg8zUt8JtCeWP
         mOCD9r5psSk3vEEaMIfUSrUuF2PQGoFrc1Bf6uzjRBU/gEUBcBPHRVjjeoV8NElO5TiF
         oLpye/0/DaOFb2pSi365eRj3W4SZt8dB0WP3Hcdl7Ejlh37l+3+BuaXioOjUafZ4qgRH
         PESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=GAdSRThuIaPrI9bzWKKT6x/BGqKaU1v5yaYHPnBulwQ=;
        b=Ver8eZsk142XCO9ADCHZtiaaylPilBf4F8MNp5xF2V4S1CkIkrKKXhoaagWKCvzQby
         CYg9GPRH0jByxO7S/vilDzwFe4rdHPjgAycn7GtEDe3ih4Y102lznh8Nm1fxUiS3Aq7v
         yoKFKmrSxjLYkV7bHu2ybT0MLhqzKTtt30GUA39FsTIcpr8HZHsCYQqFp4cz1drjLhRt
         /1b0cIYwUWv04FLVfFkndheOYcPdMElUEkbmW5DintuRuh7Vg30FRqiVpDlC57C4DNZ1
         5SHacPmrPXFJ0Z0vAJFcNKYf3SOd8P+9ZkomqJzyNgZmLbXfbqLMIB0LDNl+qgE9hq4c
         N9nw==
X-Gm-Message-State: APzg51Ao4DLzenC0KOqthBQTsP+XpsqIqw6aIneFGFrDFjmXK1pKbMwa
	66yLpUXFOVn7yjy818EKab+CZMRPmgK9yH7TgBaz9os28gjv3A==
X-Google-Smtp-Source: ANB0VdZHf5/vT5/mdDX35l6JYr4R4xq7zVY8M7T1t28f+pUbGNhPAYCe6ZV+GRPzqpoDZ/Bb4WVPvXocUexFOYJ9n/c=
X-Received: by 2002:aca:91a:: with SMTP id 26-v6mr17078001oij.33.1535953768734;
 Sun, 02 Sep 2018 22:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20180903005815.6662.15607@shiny-2.local>
In-Reply-To: <20180903005815.6662.15607@shiny-2.local>
From: Deepak Sharma <deepak.vksharma09@gmail.com>
Date: Mon, 3 Sep 2018 11:19:17 +0530
Message-ID: <CAKL9Ya4p6G8ts1HewucJHav8sSTeNW7XZKbmvga7ozZHyM-QaA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for Deepak.vksharma09@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000c6e48e0574f11aa4"

--000000000000c6e48e0574f11aa4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, "I accept" .

Thanks and Regards,
Deepak Sharma

On Mon, Sep 3, 2018 at 6:28 AM <kurt@seifried.org> wrote:

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

--000000000000c6e48e0574f11aa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes,

&quot;I accept&quot;=C2=A0.<div><br></div><div>Thanks and Regards,</div><di=
v>Deepak Sharma=C2=A0<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr">On Mon, Sep 3, 2018 at 6:28 AM &lt;<a href=3D"mailto:kurt@seifrie=
d.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">This is a confirmation email sent from CVE request form at <a href=3D"=
https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwanta=
cve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can&#39;t use the data until you a=
ccept the MITRE CVE Terms of Use). <br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div>

--000000000000c6e48e0574f11aa4--
