Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2061816otd;
        Sun, 2 Sep 2018 19:38:02 -0700 (PDT)
X-Google-Smtp-Source: ANB0VdY18YBLFVnAGmZ1ZSKClGWkZ04KUfGq4kp9z1Ur1qzs13MMKuUFTUHWZiXQ5phdylFNBOj8
X-Received: by 2002:a5d:55ca:: with SMTP id i10-v6mr17370452wrw.38.1535942282461;
        Sun, 02 Sep 2018 19:38:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535942282; cv=none;
        d=google.com; s=arc-20160816;
        b=CFxPi1bMY+DSUw+6WNJYGw1CWXRZcDUpS3jpfRubCCxOD8ETRbtmGdRAvPeVkp84KS
         bkAWjtFJyKaWsS2v1re0dv89aWV78aiS/3BFElUI9re/Gm7Et1dxuRgQ8fy642Ez/w2r
         tl3OaKllURQALNa/llfePiwov9X4zktBsfgqfAjKRABYiRMrGSNv8okb5opaT3y/IDQa
         ZONXGhCmU/AT57ycKKqgODI/JRCjqoPmFeplkDCuAKo8w+OxgpL0CXd5DjCaStcYsV1c
         4tabNmeojD82a01XZ8IAUphvdaISiHHlnQEjCgzP1ovY4MJH2IL86KCEzgdd/uF2MRNx
         6abQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:reply-to:from:to:dkim-signature:date;
        bh=VpdAMAgcLgpqaI77qeP5TkwYt5j3WD0Zj4XFY2psfjY=;
        b=IixEQskKSE4kMq4qj2GstZZhu3c+jUNLitlSUm81x4O8bR2ej/CPqBN0AAs8f5f4eQ
         2SWovM0ExTY99fXuDc4VS16Cs8ZuVddMyjoOpTt1826BjTz/aDnF3nIhZKdyTSPJTbja
         7Ffg5mn3OJNzf0hwZZmQHHdxJHCdRq3JzZRjsTwgCW8Co5+vVwl0ls3ydf0E6cRQGL16
         VUKuB5fH/Phby1yzm9QIgNhfM8fnvL26KKRZhfcsuN4DmjKPY5uNTfRHtKVtRLlOoQb3
         5sTNKyerkWYqO0gdLM1S8VBJZExY8qG4wjcDoTnmVNJe27enQB8y/WnRTrKSz/rgIRyo
         I3kw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=mXI6RqZy;
       spf=pass (google.com: domain of seeroot@protonmail.com designates 185.70.40.135 as permitted sender) smtp.mailfrom=seeroot@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Return-Path: <seeroot@protonmail.com>
Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch. [185.70.40.135])
        by mx.google.com with ESMTPS id a22-v6si8077851wmd.181.2018.09.02.19.38.02
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Sep 2018 19:38:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of seeroot@protonmail.com designates 185.70.40.135 as permitted sender) client-ip=185.70.40.135;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=mXI6RqZy;
       spf=pass (google.com: domain of seeroot@protonmail.com designates 185.70.40.135 as permitted sender) smtp.mailfrom=seeroot@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Date: Mon, 03 Sep 2018 02:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1535942280;
	bh=VpdAMAgcLgpqaI77qeP5TkwYt5j3WD0Zj4XFY2psfjY=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
	 From;
	b=mXI6RqZySOm3xSe+iyo+4c5rr30YDiKayzAqSqNzOfac2H63vWFXlM3bd5Pkg7uGU
	 3gbyVaXptmg9EqemSHnByyjPKo28tldPDORivw/QpJNpr9xQ1ypiqO09DRrLg3tC/C
	 2NFC1dIiipwNidFibEYYJz0urpoFRig/Hpdrxx7Y=
To: "kurt@seifried.org" <kurt@seifried.org>
From: seeroot <seeroot@protonmail.com>
Reply-To: seeroot <seeroot@protonmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for seeroot@protonmail.com
Message-ID: <YmOFtTimG1sQ_P741vUjAYxY0-O9LTPvpowWNVyVuS2OMPi8fH4N5awGI0kQu04n1os1dB8qlUv0fHK2LtdiKXPOwEgCBoCPhqvZ_k8C1f8=@protonmail.com>
In-Reply-To: <20180903005746.6662.67988@shiny-2.local>
References: <20180903005746.6662.67988@shiny-2.local>
Feedback-ID: tfxdyCkhmaDepVK1uAT4C1gE-D0qq6ZsEetZPKUJMQpdRuzoEnbwgOl47VW4ctyyatCk3H_-6DcvFWkFnOeQOA==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.1 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham autolearn_force=no
	version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on mail.protonmail.ch

I accept.


Sent with ProtonMail Secure Email.

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On September 2, 2018 8:57 PM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add a copy of the email to the DW=
F MITRE CVE Terms of Use acceptance data at https://github.com/distributedw=
eaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they w=
ere accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this=
 message, however we may resend it at some point in the future, if you don'=
t want any future emails simply reply with "unsubscribe" or "DON'T SEND ME =
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from =
being able to accept the MITRE CVE Terms of Use via the DWF automatically i=
n future (you'll have to manually ask). But again, if you have no idea what=
 a CVE is then you can ignore this/ask to be added to the block list with n=
o problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (=
MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to repro=
duce, prepare derivative works of, publicly display, publicly perform, subl=
icense, and distribute such materials and derivative works. Unless required=
 by applicable law or agreed to in writing, you provide such materials on a=
n "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or implied, including, without limitation, any warranties or conditions =
of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PU=
RPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any cop=
y you make for such purposes is authorized provided that you reproduce MITR=
E's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE=
 PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE =
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF=
 TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRES=
S OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE=
 INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES=
 OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.


