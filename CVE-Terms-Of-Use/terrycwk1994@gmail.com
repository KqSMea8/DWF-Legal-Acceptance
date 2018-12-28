Delivered-To: kurt@seifried.org
Received: by 10.79.201.12 with SMTP id n12csp3813556ivk;
        Tue, 13 Feb 2018 07:48:19 -0800 (PST)
X-Received: by 10.107.155.212 with SMTP id d203mr1873877ioe.247.1518536898967;
        Tue, 13 Feb 2018 07:48:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518536898; cv=none;
        d=google.com; s=arc-20160816;
        b=HcipF0zYU3O2Qm6x8ox4dLH9KtV8m5vDyjlJjwwtMrH1cjWK66cxXUG/ACAHvEEBKL
         n3brEKX0GWQROA3RM2Y315FugQM7OG7XdKzOgWWtQBaHU4fJMshNsHFZ4QoOVgAnhs+Q
         q5RAhy5nPgwsdnOge80F/WgiekuOPNBoNEDQGjcDNBHqJgW6c5tSLHr0kgblZhnXTAio
         fhHCXL7iuWQdyE/MhdmgKQCbMsxv/hMH+JHIvuEEPCk5mseLbypkYKa/CcWCC5328z3E
         Zv8BU4ZesuAwXqwcvOt5bZRSULPdHPoLs8utAwMg5Irm9CqEFhCcMpniXT8sobzjR2A+
         f9mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=up628LyjNUjRDkodtFNk0m+WNBnyewbFCZGZ9jeC8EM=;
        b=dG0AXT0YxSyQp8/QjLUqHjBkysVf4czxCj2kgrTru7RaRXA6tJgCH0xyicrEcjMzwy
         e9/UAMlQSk/OEPvBf3EqkAZoGZkaL703WQuU5c0GpuuthbFH9cdyVACmRQ1cZIJg9d4Q
         +XTct+9o730yxbwRqP2Lv6bqghUOtkNEFQPF6UFONe/RWDOaCTNHXw6zewDlXHZcGTbm
         pug+V03xKfxwu2Exb5fm6TBfeTUb7oBq5ww4KQF9UOYEVfwyP3RVpQrK19vLD5yk5kuQ
         JKjQ6If+WQyUnYKTPIdIFmcN0dJ+/cAcEzklNslbT8Xq4NoqHa5ubRMSw0+xLJbnbZdm
         iIRw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cM4CaDPm;
       spf=pass (google.com: domain of terrycwk1994@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=terrycwk1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <terrycwk1994@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f133sor1095366itf.25.2018.02.13.07.48.18
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 13 Feb 2018 07:48:18 -0800 (PST)
Received-SPF: pass (google.com: domain of terrycwk1994@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cM4CaDPm;
       spf=pass (google.com: domain of terrycwk1994@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=terrycwk1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=up628LyjNUjRDkodtFNk0m+WNBnyewbFCZGZ9jeC8EM=;
        b=cM4CaDPmKvy8Gu19TE7/UxMetX7AgwfyBhMXhCVXKaFFH5F52TorLyacu/lAlWBBLY
         wbpHYthQ0yZk8nZoi17AlW3+llJD6onrrUKc+ldCxD6pvAMGtwpQY/h76yT2rcKm7/6Q
         yP6weJrUuQXR6icp+tEFt+AOBuHeE2yxm7pb8bpfrMGdvVkiBBfzaE3k934ezsCxQCt+
         9PD7m/GbbnQOo7g+83RlcdrxIs2yncv4HLYL5fbqfdv10LQG8nZ74RGUT3jNwgVDaQne
         OXEtHzU97AWmHhZj2w+zM04RLdf2hND+gS15Wo+BaHeVgbZnXM2Cnz82jJ9tOcYugrBY
         buqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=up628LyjNUjRDkodtFNk0m+WNBnyewbFCZGZ9jeC8EM=;
        b=o2E9MBK+IA/BGLHE524U2nJOrCbIaq0K2/lRNJgGT5KeEU8CVwwEs2jIkYqAx/+0sK
         QFJkgJ+OMVekU1LdZY5CTgINDB1+CZ4ov6e8ZrimIiwtUuAUIcVT2xAwWux+9a9ik3oK
         /nPlsj74s580k+itaro+2/HXJOvQM326o0yuslACDl3mAuJQ8q8N/lY7A84HSz5BYQW3
         PHLsa5LfT40WOnH8Ue0b6wzxg3vCK4aHP+Z1r6b6XglXJSaoW20yW7T90xI4c9qOeQYo
         MjUbUMG55x2xIIjxgZxyK+L6+ura+LQn+mQSfqiomzUIHhOa3WdZHrrnmvAQGsBkd6T6
         f1Mg==
X-Gm-Message-State: APf1xPDQFxCX9elUoconmD9mkhU3PxfFo5DVFzhdP0IKSuNqbW6KQD6e
	qlA5lC4s7YE5KHvpBPLNlYExzYE/Y9NyzIqDgCNX3A==
X-Google-Smtp-Source: AH8x22707mfRUFjEyN68V7maaifYC69TYdevoYk+TU6w7LE4cvqviCd2x0tYS4/wHy+55I8QwoSsi2psK9yonqn35QY=
X-Received: by 10.36.167.67 with SMTP id s3mr2190958iti.66.1518536898269; Tue,
 13 Feb 2018 07:48:18 -0800 (PST)
MIME-Version: 1.0
References: <20180213154651.60555.93968@slab.local>
In-Reply-To: <20180213154651.60555.93968@slab.local>
From: Terry Chia <terrycwk1994@gmail.com>
Date: Tue, 13 Feb 2018 15:48:07 +0000
Message-ID: <CAGqxZSUB+V2D0+e=nxWS5RXqk-F8woatsisJMgrSW5JbZpD8NQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for terrycwk1994@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403045fb1c8665838056519ec6b"

--f403045fb1c8665838056519ec6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept
On Tue, 13 Feb 2018 at 11:46 PM, <kurt@seifried.org> wrote:

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

--f403045fb1c8665838056519ec6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept <br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, 13 Feb 201=
8 at 11:46 PM, &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmatio=
n email sent from CVE request form at <a href=3D"https://iwantacve.org/" re=
l=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to=
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form an=
d want one, we can&#39;t use the data until you accept the MITRE CVE Terms =
of Use).<br>
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
</blockquote></div>

--f403045fb1c8665838056519ec6b--
