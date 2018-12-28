Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp259733otb;
        Mon, 10 Dec 2018 22:00:00 -0800 (PST)
X-Received: by 2002:a19:2395:: with SMTP id j143mr8087261lfj.107.1544508000203;
        Mon, 10 Dec 2018 22:00:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544508000; cv=none;
        d=google.com; s=arc-20160816;
        b=PFmzPxQkdHIK7ElF08QM8IqI5XrQw8tWoJQE0+Za9EtJ2HpJNebd1lnqywc1t8n2aX
         rsVbxFaQEcwLmAEtRJwteZmEJW4fH59WeWctDE3aL40LMu1jYF/DyZpxyCO0HZItr+Qu
         KxS8ryYd325BbC4MNRiJanuTeu4IQ9JahcgIzuLuuC6zjERSCFpPy5AJFZORFmeKIYH5
         yzMLQixFpgbHDFbTA2dQn5oVIBlA3ubyqhL9oMho+n63BpyB0WsYsSPId430r6pzMxOt
         oeZDvYE4hlbH1OYW8t+w5eBLVksZFspmY3QPdmdXYKtgx5f4ZUK68zrIFQkau0pkC83f
         HzKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AkAV3prfWDjFKXYQQVY7pvCPlDbvfm/ngaAnOkOM2wc=;
        b=JtdMSk/ANKKksUHv1b6PD5vG6ctc1jO1N4p7iukgOACVTXGDcxWOQy8BBhgkf9Dlwr
         at28ehhrHdU3s7Up4tlCrL2FGsKyJIVCJ26nJTZdibqZLD16CmY+rupJjydLxoOZrZPM
         WcsaQRSnWuz/mzm/OCGgIk32UL9VzWWjXy3vlGBPjaRUJyxZL8ly24g/UestD/8GcGAz
         +OKz2ahyv6o+S/KRBFjnbxwuwMbhfY+KHP0RX61MaZqfx3z8Q8RgM09BRukQlHoc04iL
         3rIc8t7B5kXxFmhZ1cvkYys1/4Sp1EgkSKYYjZwgbjwr8HpF1zyYqZKOybbWTwZ2EuUU
         r23Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EeesqdZC;
       spf=pass (google.com: domain of kurtisgmiller@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kurtisgmiller@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kurtisgmiller@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o194sor3406333lfa.64.2018.12.10.21.59.59
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 10 Dec 2018 22:00:00 -0800 (PST)
Received-SPF: pass (google.com: domain of kurtisgmiller@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EeesqdZC;
       spf=pass (google.com: domain of kurtisgmiller@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kurtisgmiller@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=AkAV3prfWDjFKXYQQVY7pvCPlDbvfm/ngaAnOkOM2wc=;
        b=EeesqdZC3uiTngQQBf9hETyWj6GGXCqjdbXs/pvCW9XZOVuy53yE0VMIku2gJcnO/l
         pbMJTpvcHH3NFc1TWaR8VSZ+WF8g/FwactrtmqW1g+hrBVREkftEChw8/n8mGdfXTEpJ
         ghX963joaV7zv4QtGDaQaAy1SST5Z+UMwKJYyuLIFsKdBDeXZFZoBAGkLEDVvP9kwfa2
         CwwJz2XvzpzaDlWvEqE3JfzMp3B20Wq9IkktodKPIDoZRQqdVuPFSL0sRwqLlFo60vOX
         pmxGPiuHAzRus1ZqxDS63AOrgIXRrUyB/prHbOJ2xPi/lMGIZ7GbhJuPOKZ14naC1guB
         nDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=AkAV3prfWDjFKXYQQVY7pvCPlDbvfm/ngaAnOkOM2wc=;
        b=uSQtkQ+EU/6Ee78/t5S3lK/qmZ2UtuI2oMTdT8wLyp/R5AP5fi/KgTBDvSPqixNaGh
         QfLTWLjZ8OIoNuKAnoKzPeemkWGyNO68J0AnF8IukTGld1ifmq+ugEk6MuOSey8/TxXC
         jBlB1SViyC9jQNZ6X8JlSqIoT3hOlkhc4CSyYdc40KJA7jAazKtl5Ybn9yo6cNolGoCg
         cQT5GBlKOl3H72L2Q935oj1yxMIxFWDrel5absRTs5BzPoIWhDNnP3BOIY+dWoaktsk5
         AtUFah21aG8NRQG1dLugFfGNMH9Svn34Anqzf9kzoG3C7Y5yYmP8b1qiu1PNjqfL4XRj
         SGpA==
X-Gm-Message-State: AA+aEWZJfAaBSpM3M6xeNOaM9mYJzdNnWg0JOv4qbxcpNSo0tocSWg8g
	WoG5RET0pTbM1srePM8O4ugi/jxpM1ETktEUaz3m2Q==
X-Google-Smtp-Source: AFSGD/WtzsbHjVRR/4luPO+QKpMtvPcIixI1E7doJazcGFYhzVkp9faPNej4sxWQr3Tg3T0AQk3n6TNc2FrF3XQRYks=
X-Received: by 2002:a19:c995:: with SMTP id z143mr7268439lff.79.1544507998925;
 Mon, 10 Dec 2018 21:59:58 -0800 (PST)
MIME-Version: 1.0
References: <20181211053032.24278.14882@bigbox.local>
In-Reply-To: <20181211053032.24278.14882@bigbox.local>
From: Kurtis Miller <kurtisgmiller@gmail.com>
Date: Mon, 10 Dec 2018 23:59:52 -0600
Message-ID: <CAKEq21Kq3vQjYdQRqAsK_O_cLc0Ge0yO+jxtnTEWa5SLi=c_rQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kurtisgmiller@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.
On Mon, Dec 10, 2018 at 11:30 PM <kurt@seifried.org> wrote:
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
