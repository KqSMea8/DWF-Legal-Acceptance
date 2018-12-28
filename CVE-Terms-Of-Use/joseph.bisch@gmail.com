Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp4068354ivl;
        Mon, 2 Oct 2017 13:27:56 -0700 (PDT)
X-Received: by 10.237.35.102 with SMTP id i35mr5925085qtc.174.1506976076162;
        Mon, 02 Oct 2017 13:27:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506976076; cv=none;
        d=google.com; s=arc-20160816;
        b=B08cXIKPAJCQgo7amAZCajeMVpLORr5g9Rl/issYcsCiwDxz0WmFb1K4flozfrzddr
         e9tFyXFe+aJFiwI8dSwKkP2p96XH2Q/FU/N/y8RoMef0MGiLSsle0fX6qMT60tXmR+HC
         cegZOZVL5klPAE1R0KkTNbIcoYn5GdfVhjWRWyLvVozGbg1J3eGMzqY/Z0TJNxKqmvuf
         Tzpt8LyCWY9od8Y5zfKgJ0hbZxSroKwM3i8aga6piqiqxkDpjRZHNpfOtHuNPDRD49eD
         jlS9dqdDVFFPBIzSF03vF9BXBy9dgcTtSJ0peNRdvkGzlLxpLCLsoWk2ruSELeAU6vNy
         t6sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=gFSbDB+wOo5D/cOhG6iQ5QDcK+Q9kK4PD3+bjo7vhc0=;
        b=Cq6+CcHvRrwrt57cELTbZI9BRTY7z+z0uULnKTE0dQo4a7VMcBAJ/63iAwYIjHJNE9
         CEvR9Tvri7k113ndLDJrVED4t6zIcNu8ULth1FeAN21oSTmlUsptiTzJetBrC564OhNK
         ovlOflQoaVjNyBYSgU60hx7P0yMnE0XUzZkMFxXIsDsdIXDIMtcpFZfDlbQiYO2SQVuA
         ezgWJnzH0nrfY+DiwtmbMpaypu+vkXX6puQJgm5pURoogaIoH2ImPerrBzhhOnwaF+ua
         reIeVPUKce0zbBkyMaCxN6sfR35UQbhgDBZQx1QaqufX4RYr6BNgSK/DYLytiIC18fba
         OeCg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6owiEw3;
       spf=pass (google.com: domain of joseph.bisch@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=joseph.bisch@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <joseph.bisch@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 93sor5541911qkz.9.2017.10.02.13.27.56
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 02 Oct 2017 13:27:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of joseph.bisch@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6owiEw3;
       spf=pass (google.com: domain of joseph.bisch@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=joseph.bisch@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=gFSbDB+wOo5D/cOhG6iQ5QDcK+Q9kK4PD3+bjo7vhc0=;
        b=D6owiEw3wjtBGozbE1SnEiHNrm49M3xcru8nIKNVJS6E/tuNxHcHW94VSGxZc0qb9c
         ZPyoz91Uxvn6tJGe5rKLFKAeJPALj1jq7jjkUg7sF2OT3D4cCJTRHn0dlySCB7oYUGBp
         XE9RGrIMDpfbRjSNsFaBkG3Sf2nH5MkrPVUPnTfJaOqwrdjOmX+W3L9iyHM4O5NHRhTg
         40qW6IgVfxZq0kccB/MIC6abw+dVHXv91EYW8Gq6PScpGeCwkX1jhqRx/j86Rl99Do9v
         fBAKfDjXMNQfIDpC3KOd2Lgh69Ei+fGYxB7XaqjZySjg6oJJtBGxssCtExUp7NyLbJ2Z
         a1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=gFSbDB+wOo5D/cOhG6iQ5QDcK+Q9kK4PD3+bjo7vhc0=;
        b=S1s8RxDaCLWNPPytjkhWRpWzxJ9liiKcX1RHQl3TNDQ/U8v3S3O+aCAZwRD7rdfWpr
         IR8Zfl9slf+ty5KzxZmSQoaOVYg1jGjAlv0Gw2OU3KeBukloAjbCnkcWmje4lbWr+NY1
         n7QtdabveFAeK3IsHMFYUwHVMStdjlRBnvUGEoVDpE+PY27WMMAi+CWdos1jrHxrcmSK
         m+r0XlAOBZxCeMukKr2ae5EF1lLwFBdJfUdMw+v/D6DKcQqGey91UxJmW9JlMtpLCzmQ
         lXJXDIpglu1XT4HWfdPAYzk6XzBqqqCFUagVvr04dAur2m60Wz1o/W325qCkeKU/Ab/T
         XFNQ==
X-Gm-Message-State: AMCzsaWPJcXCR5MharY2sn0NUO+qT97z0UOENwKSZLLmxVEzbSgqUBs1
	kgZjU4uCK6i9xitSVwbeWkYlOyZ1NHfQzJZ6U9U=
X-Google-Smtp-Source: AOwi7QC/zkclje+yGE0AjsxdVlngSxmfF+ANntSUbx49/TTZDQ0uni5BQfvB0csduLu5KEKGthwilh3gDSV3CMZepDY=
X-Received: by 10.55.149.2 with SMTP id x2mr17545966qkd.23.1506976075396; Mon,
 02 Oct 2017 13:27:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.99.85 with HTTP; Mon, 2 Oct 2017 13:27:54 -0700 (PDT)
In-Reply-To: <20171002202308.11491.10443@slab.local>
References: <20171002202308.11491.10443@slab.local>
From: Joseph Bisch <joseph.bisch@gmail.com>
Date: Mon, 2 Oct 2017 16:27:54 -0400
Message-ID: <CAO+PtjtM1wTdstJFi9VwuOM=SuHPJd46TLPuOxi05kmR-MOTmA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for joseph.bisch@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Mon, Oct 2, 2017 at 4:23 PM,  <kurt@seifried.org> wrote:
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
