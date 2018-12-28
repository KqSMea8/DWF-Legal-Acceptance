Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1474249ivl;
        Tue, 10 Apr 2018 11:36:53 -0700 (PDT)
X-Received: by 2002:a9d:171e:: with SMTP id i30-v6mr1024863ota.204.1523385413438;
        Tue, 10 Apr 2018 11:36:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523385413; cv=none;
        d=google.com; s=arc-20160816;
        b=fNqyLrb728Lmdib+Wmc/CHHUlmutZmAJ8qZ6atB3l8qe+Qv6zFGvR/iAidbKVZjhaa
         W184yYevXW7UYDKfy6aklL+olNDRgxEeWCpW6U/B1gVNw73rlbcUNnTuc2V/zyMisRUY
         zGfupFcJsangygKiY7GWacGhuA1FQvVgKGScw7XC+QTABWelfDpe8ZKFSuUJz0w203XJ
         HrVk7dCvny60vzAAf44Ph7kiBTtD/IX4XeiVbOsnRG/YatU4rIA+choZpdNwNSmBTVFe
         wU/VrhnC/16d2HygjVJaqiaZ6lunzqiPMFljOc9lHig8vFg4th7oorLee3xIgR7KYmlG
         Offg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=rVaPPcjRvtQeNP6YHI1QxjRlZGWxSFeEJjPZ5xGOuxw=;
        b=cVcKbWrGLlOPMead+lOZuH3PYlMBKHVDsBic7HwMFWIBZBzB3f9zIVtmnH4semBouG
         g2xnkhnV1KmudRwXakTiO/JGOJTitHI2vmA5UXeoHDOjiYZ+0Y3zedXgPP3vAdjWfu7N
         sMM8MqNIen15vza7+RV0d+EeQRBJ5oO8paYxui1HO1FofjKq/SD9CQlnvD+neV05uODs
         563UP/5+XfMzf5IuBV/nhdxDBjw0us1ojMpmMvYEpt0GMTg0RPTE/glPImSbUYnsV6VH
         tEEx8wNydU0PEx64sYwFq6nrbwuvF9AaxvVg0/CxdcEbYSKKSrcfHcEQvWXrzc6wCmeK
         WxbA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9TOf3Jq;
       spf=pass (google.com: domain of ryabinin.a.a@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ryabinin.a.a@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <ryabinin.a.a@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p54-v6sor1475927oth.185.2018.04.10.11.36.53
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 10 Apr 2018 11:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ryabinin.a.a@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9TOf3Jq;
       spf=pass (google.com: domain of ryabinin.a.a@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ryabinin.a.a@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=rVaPPcjRvtQeNP6YHI1QxjRlZGWxSFeEJjPZ5xGOuxw=;
        b=a9TOf3JqTh9f2QtQF+PsrcNBE8n2lu1lqz8N43yZ2PHYXdjfbhUbjhtLbBUNt9wCwF
         pLU/SgY+i7dJxKP38ywjVHkhWMOf1NIJxT/QoUeQkrTXMIaPq6SbjeSe57jwCTZptsNo
         c0X/zece6PMPfA9Z2xSgffk1FrOrPHy5oehZEgpOB3uNeuKyoU0/uMlAsNqSTq5aVym6
         9LhwIG1I8eATTSvc0agunTbQuXqPkiqWBjwM0xZ758LUyYqCJ1NkQMTHarc88azjrNbr
         N70VNkhTQLWzfLQRwZqsotywlokakVMk4Qmc/M4OVHWwNtnKXEUrM2Pqlz9Lm4TAmYoa
         +kTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=rVaPPcjRvtQeNP6YHI1QxjRlZGWxSFeEJjPZ5xGOuxw=;
        b=NdgkaRAsdEZxqGBwd25LLLBHyq/hTbsyScNN3pqwnvExMuiH0TbfEorJSfIJ+p6YJS
         5Gcc2E8hBGN8w4COzXzNi2X62BvEVu2iQYOgKYzSmg/iFuRCvbpRaS2/qWt73M67I8oP
         7Vi1DsQbuka2RiD8rDvzSATYbCiUlr/zZ31pKO9V3VNvcebbbfli7355GjuDONVqMPZ4
         cGla1xqqdi6cx8rrGynXe4F3fXbWEf8s2geryTEUGB8z0YLzB49fkhPV6hlGR07AEjV5
         mdByN9K7+KdfYx5h7HtmXFsuyloh750HvgTKxCDvxLpLT1giJqTofmamZO8RRVgPfhPn
         Nj3g==
X-Gm-Message-State: ALQs6tB+lkEpyEAZV0vB1fxGyh+7Q6m8ahMc+WGpNs4hlQt6iViTv/OL
	b8nA1WivBdooN5GVn0ioeJElyqAT3Rszb4Wf0L4=
X-Google-Smtp-Source: AIpwx4/J1mV5+gUj+BKkmL3XectQguYLxvU9lIRn1A70bLVEzPVadnaYEydV/+LdlzL6Xu2XtdaGfEeyBMZ+x2sj+no=
X-Received: by 2002:a9d:2ce2:: with SMTP id e31-v6mr1013505otd.135.1523385412698;
 Tue, 10 Apr 2018 11:36:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2ec7:0:0:0:0:0 with HTTP; Tue, 10 Apr 2018 11:36:52
 -0700 (PDT)
In-Reply-To: <20180410182631.97071.75255@slab.local>
References: <20180410182631.97071.75255@slab.local>
From: Andrey Ryabinin <ryabinin.a.a@gmail.com>
Date: Tue, 10 Apr 2018 21:36:52 +0300
Message-ID: <CAPAsAGxYZfrvB10agqqJ77mch_9N-HRvCt3YD-Ory7azXVoTew@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ryabinin.a.a@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-04-10 21:26 GMT+03:00  <kurt@seifried.org>:
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
nd Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE)=
 and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclu=
sive, no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare derivative works of, publicly display, publicly perform, sublicense=
, and distribute such materials and derivative works. Unless required by ap=
plicable law or agreed to in writing, you provide such materials on an "AS =
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or =
implied, including, without limitation, any warranties or conditions of TIT=
LE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you =
make for such purposes is authorized provided that you reproduce MITRE's co=
pyright designation and this license in any such copy.
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
>
