Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp3344820ocg;
        Fri, 19 Oct 2018 07:36:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61h58OVpnSNWNBkKSBPtwVq+/OGMvcBzLXRH5locnakrqyIIKnfahncBgcGIZWn1G143F2K
X-Received: by 2002:a5d:548e:: with SMTP id h14-v6mr34218022wrv.316.1539959761472;
        Fri, 19 Oct 2018 07:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539959761; cv=none;
        d=google.com; s=arc-20160816;
        b=FalIv+IoDGAGpGgJjQO6/0Rw9i/ZJQodlmRKsvmOMCQ0dJ7heMVw5eC3DmJuda2PTs
         yz3pdV+xGrxplGogbhiuKX29T/WVMvWbAZXdyRa2K6hw/YVWkjO0D67gq7zcuZ+x1sDq
         re4KZrhcj3v1ic43gSL93HgAulAHZy8oCgbVCmBbZeOTiYav0g6P9j5thA9MPul4ev6a
         ZB4SauSMoehDr1pvjM0dOmwoGMALQcqeW//CFLiZcSbfc1XFOy0SMFF+UfkJPHTxVV9c
         vMWC3PM+4F74Ao6simof0TRwEAO3klezw6uEjLQwZta+cM9sCB2fwfqXVq63j9C3Qpne
         R0gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:reply-to:from:to:dkim-signature:date;
        bh=R96iFaNyM0K+mW01SgFV65CgRVuhZIOCaeQj1+eqXAc=;
        b=QF8dobh4MQUOVe1QaMS5nULwmvap6dC/j2qHuqjyLk7UvZ0iqatGKjpCxkWuCX9NFW
         ofx2UBWLwoYhZNmkTHI+hLdUDtLtxCi2ADcaMUMg5vTG/9PXCV1DtOQnGF0NZohlptA/
         qcCOwF6qVA3sx+Abp5yJIAryGjaMBGzcyi8vzhZYxPFmvz75Jk2r5ssE/2qm3QvK66yg
         AHI2jed+BmX/p7YCNl8w2tt7hoAwHwn49u0NLragYLE5SSJgTW7PW7okoeZtbfurQGPf
         XiYmBo/l/BXiESrRnZZLItpG6s9NO953S+vs8zYCUbpCWyO+a/vVY0wvo/84VrKF6WCx
         rgCg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=XBcFDJs8;
       spf=pass (google.com: domain of lokalhorst@protonmail.com designates 185.70.40.135 as permitted sender) smtp.mailfrom=lokalhorst@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Return-Path: <lokalhorst@protonmail.com>
Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch. [185.70.40.135])
        by mx.google.com with ESMTPS id 89-v6si20313435wrf.444.2018.10.19.07.36.00
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 07:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lokalhorst@protonmail.com designates 185.70.40.135 as permitted sender) client-ip=185.70.40.135;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=XBcFDJs8;
       spf=pass (google.com: domain of lokalhorst@protonmail.com designates 185.70.40.135 as permitted sender) smtp.mailfrom=lokalhorst@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Date: Fri, 19 Oct 2018 14:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1539959757;
	bh=R96iFaNyM0K+mW01SgFV65CgRVuhZIOCaeQj1+eqXAc=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
	 From;
	b=XBcFDJs8PdXsDZEASZJbhT/BguV286CuJTCIr3qxM0HuLz573rqUJ97Q7F8v21vGm
	 KOruJeHg8xQelI0zyvV/fhzJsE6lviVtjiKoJevtcKcaqkqP0fBb3M42BNl1HUnVsI
	 OftkIU6zyh76NQfpVNLM7aMV2+R1X50DcZjDZ6VU=
To: "kurt@seifried.org" <kurt@seifried.org>
From: lokalhorst@protonmail.com
Reply-To: lokalhorst@protonmail.com
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for lokalhorst@protonmail.com
Message-ID: <ElL3t_hXeqO2-wl42USLEo_VqtKSWfV8X29woN4DspA5ZhzCb4p3EIRNTsaC1UbdGaCqBNp9bK0N3VKuP--qCE3i9BODmGOCIaAja3DA6QA=@protonmail.com>
In-Reply-To: <20181019142512.11823.86628@bigbox.local>
References: <20181019142512.11823.86628@bigbox.local>
Feedback-ID: ZQCqlbdOTpl3Hm_GTJYQccFNfXXHn-WTlLx5g6NMgNbdKFA3ZXH1t0K2qe-Gkr2QP2WEgHe9Lf_X8048rPWJLQ==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.1 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham autolearn_force=no
	version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on mail.protonmail.ch

I accept




=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Friday, October 19, 2018 4:25 PM, <kurt@seifried.org> wrote:

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


