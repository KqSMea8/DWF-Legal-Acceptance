Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp802544otd;
        Wed, 4 Jul 2018 06:06:22 -0700 (PDT)
X-Received: by 2002:a6b:3757:: with SMTP id e84-v6mr1553782ioa.151.1530709582353;
        Wed, 04 Jul 2018 06:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1530709582; cv=none;
        d=google.com; s=arc-20160816;
        b=dylH9dPz4JQs6kjobDoWF3jh22/pwRlmCBUzDhs0i1vwtCaE8R4szYZBbaeHGPaPjs
         WOmnYAzAW0Q1EBLPT1VP3EUFYtmhz/jWR42OjdDKrLzDXZQj0yYCyO391QJQNaw/Z6Uk
         7BXqDatPGKRR3tM+6EPP9wzv15ldxwRKvUtKALnaw5wxxYGHJDXX/ciUnB1iH9Ml0fFU
         G0mZ4kOVvOhsAcH5WZ1oqUTZ8q6os12RUuGE0V3Oj+atqGSqDzVmZ2PV3fY25mgcwb8U
         sjpKqN5rEWn8e3qYxbynmkO+SBVZb2MRrtWm8+m/Oaa5omnc9CbD9m0o+1rZJWbYV0mZ
         P+pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature
         :arc-authentication-results;
        bh=+sxCl8LYI+2G0mYmJshbc0/b8pIwIAxqp09mvpgPhj0=;
        b=EceEjzJzTzLVWRsy9+bWmUN0Ccc+1Y9vH8uU26+QiJ4+V2OKpSfbP73w0+1rdykmPg
         UQFuH0Tm9yEpksqn/lomt/RO9CCpPfkxsMZzXacbaVfAnqxGtXc0DIIsQb+a/arLcQ3l
         hJ9t6kVR9K1j5GAghMvSAyKnL8L46Q+T/+CLDw1FZzEEDu6W4+zKr/85tq3mInGgMqi5
         kSH8Is2OwvWt49tDcuuxRj3MDHvkzd4iff9PhUG5KQkxHte2GPAarU0Quj7MD6alDbxN
         O/1GU0Bo31zP62P7mvQ88SXEaf0OI1UBxBqxZYQVQrXWSbTa6H1P0FAKzdKE66ML9B/V
         gWgQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jiuvJwte;
       spf=pass (google.com: domain of taouirsa@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=taouirsa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <taouirsa@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z81-v6sor1346947ioz.52.2018.07.04.06.06.22
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 04 Jul 2018 06:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of taouirsa@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jiuvJwte;
       spf=pass (google.com: domain of taouirsa@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=taouirsa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=+sxCl8LYI+2G0mYmJshbc0/b8pIwIAxqp09mvpgPhj0=;
        b=jiuvJwtetG2rAPyEVPA4Ruz8B22+OZtpFt2iNISKcXhsZdPI4LAaqOGCd07CrvCd/s
         KZOwgOQoVnozJVFk4RzYiwswdgIvOWIblNa6rrZA5mYMlfsR4HNUO9E2E6DAe/bhwyjK
         TjqA7mBDDCyQqSMY5WVH95vQkjGnynd+83vyBV3PmC+9zv66lJA6e8tBAeCPaKbBUZzM
         Hipd48Nq038FLR+W71kr/M/ZnFHpQ7KLha2QK7e6+WN/WNfVs5L/6L0Lyy803MKa86bJ
         4XSeuRoBVFR9ucxJZl7ImsOHFTsigrtZfKAhlOJcyLiXdKWEaO2E/dTJf2ISKJhCpBNG
         pPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=+sxCl8LYI+2G0mYmJshbc0/b8pIwIAxqp09mvpgPhj0=;
        b=Lw+zlsQPqk8gL/BiL+uXeagWCJ8GaGBaWtwGS6RMwFm3spDxDyaxTvO4O5B1K1nsfj
         SVsv6dss7gv14pgUhuclS3ASOjZQqgg4bmJ+5dwLZ2hoBuqZIOVjEdK7VZs9CRCzFsPH
         /Y+boARGCQgHKmkMpI2LA2EP1knBrXsEFgQOTL5kapFw0kwTRrIlPrGnxvEwLAJmOFnV
         a/nOTnjRjkeKdNGNrLQdGu+8Qp3zrJHxa8xo7bQqeZjnX5HEpBVTsRvhOKyWltNvfhwv
         4FHRyah28QKLGzyRApvMRFZIxY4JYldgmq5C0BJ/TdFTdfOJi1m5RZNesSr2cIBYZA6r
         rJug==
X-Gm-Message-State: AOUpUlEkPhpamMz1TkNtG3FQVQBvH82C/lU82Fx9IldpuAQawVKPUW73
	Eg2MoZXRcQ00OHrAyFKtWt0v+8LJRCORo4yn/H26
X-Google-Smtp-Source: AAOMgpcvUO16xgXOiVxYWwIMrv8wfVNf3tSirx3bj9G5gjFQRd/gSwLD4kyrqakJpkV+oW/5EdyilPGIfwg8YnJ8ZX4=
X-Received: by 2002:a6b:30c9:: with SMTP id w192-v6mr1619903iow.291.1530709581830;
 Wed, 04 Jul 2018 06:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20180620194524.10662.29990@shiny-2.local>
In-Reply-To: <20180620194524.10662.29990@shiny-2.local>
From: Amine Taouirsa <taouirsa@gmail.com>
Date: Wed, 4 Jul 2018 15:06:08 +0200
Message-ID: <CAOGhsh3nWciR923ZvifMT9jZBE=q-WSbTxk5eqJ_gPfpLLwWkg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for taouirsa@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept
El mi=C3=A9., 20 jun. 2018 a las 21:45, <kurt@seifried.org> escribi=C3=B3:
>
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
