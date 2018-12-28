Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp126065ivl;
        Thu, 7 Jun 2018 15:10:32 -0700 (PDT)
X-Received: by 2002:aca:da08:: with SMTP id r8-v6mr1860186oig.345.1528409432180;
        Thu, 07 Jun 2018 15:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1528409432; cv=none;
        d=google.com; s=arc-20160816;
        b=0GASi36iWanbWHJytT1C8HyOfgiW6a0ENXIHopNCp6kZJSF00d1K3sC2gKQeyyNi02
         B1nw2I9wmJ6vVaUycX9gVGYAfIWzjkb/3PyowdwCAai1g+v4WTzL1NkP3qICzvIe0jQC
         DsSbOyWLyFmUoQi4tgwqGq60kxf1gkLuZBHvUs/34QptH9TVH8FlNTPv3TdWeeI06iv8
         3WVVvOT09Fr1MpqEK3o568+Q+8KboUBzuUTd9D1T9rSrBaPCgnQsuGC/1N6nCS/AvGKB
         Niz+8ohiw3xVgLVQWohOwi3iP2UeBCilUaDcQ8LkqBXQb2crgBk/r+xPBDmYol8R/+sN
         oS5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=uMP62HBOK8fRVBQ+F+ZmEn6aCgA70hQlw0X1vYHWtNw=;
        b=s5lYnPM8A2qNA05/SleU9M2xT7O8xs3XfVf4pz5yQrmTzrEmn7hZTS/Alo7dfQV9PM
         4+pC14Iy+Mwmnt7K9g9A+RwqGI+AV7UnReLFwsJDukmYPShYpSB5OnF3HUXnVvjpkvKe
         naY2h6XNuoH2WQJvZFN+8kx3C2r9vxW+Mho7RLbudVSgn8hjYApmWbX2wW77YeMjJvln
         AX0R/yp+YkNZ9i7ssNWVrW9nLo5sQBNh8Tg8iTtcKZiB2nnOC6Af+iQ3mPJmWUZKc9eG
         qMy1gIZWdQDe2TY9cvkEnvi+1atJaeRG2C3NkelefcNEeQTcPa+ZlEYZgmnQZtuuMQd2
         +yaQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pw/OEMad;
       spf=pass (google.com: domain of teddy.reed@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=teddy.reed@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <teddy.reed@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q82-v6sor23667284oig.116.2018.06.07.15.10.32
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 07 Jun 2018 15:10:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of teddy.reed@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pw/OEMad;
       spf=pass (google.com: domain of teddy.reed@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=teddy.reed@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=uMP62HBOK8fRVBQ+F+ZmEn6aCgA70hQlw0X1vYHWtNw=;
        b=Pw/OEMad0X4Zl9/Z4rawrKfdFnABzS14M7qeAX37Xf+K6uxZTBvJmBixxNLEgScjp8
         Ti4GA7h+zodujlkV+hys4SOwfRZEALSc/72LJKaZylUvKIRWL37jwH/aJaQKq9lUe/lb
         znOKTVPwLSMnAtK8vPryv9GgMr6fIN6c/MYzF6p3pUOBfsQ0YdlQFEsB3C5eSd3pJX0H
         PNVtOE/UUQ5gohPtxZqoZp/Npu+Vchad5oK9KnB7vgCLvqCbaIybfAv6wPZYYqUrD/pw
         tp6vFziyS/sSiDqiQDr5eMCiBBC/rmQqy7OUDPPp6jP8nbw8mrz2NwErFgXyC63h0TjB
         wgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=uMP62HBOK8fRVBQ+F+ZmEn6aCgA70hQlw0X1vYHWtNw=;
        b=AIMm1ejsbdmHoTkyTv0w2SpdOj8cdbPx3qN7S+KyQB7wy2Ax8Moj31Jy3Z6A/IyL8v
         jcYeRs/G5I6RNQj9zUPuR+VrKW3YSueYWR+N5jY8IUx18Q6Kb4WCSH0a9aYTPMLXERk7
         z/YGCEmwH8L36/wsdblAn9qERz8COrX2YcSIIwnwNPd8SJiUH9+jFXevncIQK9+In/yS
         GW/vvNbbi251C2qesqXOBwRpg3EQ2/4NRHffb8T1bA2peJF9Y/ZRCol/fah2vI0lF7O1
         tNKRVV1CopcaZL2JwJkvxIfAlGTbxlgv/7rqvq6X5kkhZyYCK4yZ2LjvmC/wZ5bcosTZ
         s0NA==
X-Gm-Message-State: APt69E2uG12/uLT1sJZsfGW0vgjo3S0dq/n6T3+6xgipUeJ1/w6RfGKP
	dMPBcFbd6n6NHROw2Q5b8kw0pYoB
X-Google-Smtp-Source: ADUXVKJYzWBtt76OLJbzJkyHDpITiSkRt6renbjBze/CuQx0BppqCl4I8fL1Lw/+yIOW9EQGwFUlYQ==
X-Received: by 2002:aca:52c5:: with SMTP id g188-v6mr2036331oib.228.1528409431783;
        Thu, 07 Jun 2018 15:10:31 -0700 (PDT)
Return-Path: <teddy.reed@gmail.com>
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com. [74.125.82.176])
        by smtp.gmail.com with ESMTPSA id b63-v6sm687200oia.4.2018.06.07.15.10.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jun 2018 15:10:31 -0700 (PDT)
Received: by mail-ot0-f176.google.com with SMTP id c15-v6so3556211otl.3
        for <kurt@seifried.org>; Thu, 07 Jun 2018 15:10:31 -0700 (PDT)
X-Received: by 2002:a9d:307:: with SMTP id 7-v6mr2386397otv.300.1528409431046;
 Thu, 07 Jun 2018 15:10:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1407:0:0:0:0:0 with HTTP; Thu, 7 Jun 2018 15:10:30 -0700 (PDT)
X-Originating-IP: [2620:10d:c091:200::1:9c9c]
In-Reply-To: <20180604190449.3808.28277@shiny-2.local>
References: <20180604190449.3808.28277@shiny-2.local>
From: Teddy Reed <teddy.reed@gmail.com>
Date: Thu, 7 Jun 2018 18:10:30 -0400
X-Gmail-Original-Message-ID: <CADUykeqygTz0qf3Yx8+Znc7ZuOfebE1bjj9faWVK6NH2EzOBug@mail.gmail.com>
Message-ID: <CADUykeqygTz0qf3Yx8+Znc7ZuOfebE1bjj9faWVK6NH2EzOBug@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for teddy.reed@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Mon, Jun 4, 2018 at 3:04 PM,  <kurt@seifried.org> wrote:
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



--=20
Teddy Reed V
