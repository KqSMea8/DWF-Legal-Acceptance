Delivered-To: kurt@seifried.org
Received: by 2002:a37:291d:0:0:0:0:0 with SMTP id p29csp1401787qkh;
        Tue, 27 Nov 2018 08:05:16 -0800 (PST)
X-Received: by 2002:ab0:7196:: with SMTP id l22mr13758755uao.3.1543334716639;
        Tue, 27 Nov 2018 08:05:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543334716; cv=none;
        d=google.com; s=arc-20160816;
        b=v/xvuoa0xdGHKCWqdW+POA34cFt/nNZtrmkxjUVguQN/gHWglOST+L5KywJ48eqpxx
         H6TMMMUX4XdHjZ+h5QDIkak4JSC+bWT3UmQVMIqZyTnxB88opS4pI+NkiGyoGr+nZYHd
         Iy+/07zpjrXe84X6UTTCMks1ry6RC2vf54xRwAGLq1D6e/efEESr4o0ezSgljBGzv7pE
         VZ/QxaaKhJ+0A0KEZV+ABB8yMFW1OUmvjYq4DMb+4H7Gwciug4CrVSXSeMdeqKTkg2oQ
         ztT43bSxUQMAANUXAejskYzhG3L22Fm0tBEmz46+5c2Qel9P8X430ifo5MB57x5na2R2
         u6DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ikJjMI7B8WwIAe8T14FaeZlzQzNFkMuRPVngficTvuM=;
        b=lcntIWaXtpDMdd/ojhDQUPXWAoEVUuo0LqNRh3GzjyKcIUPWn/3MrwTbR3ZH777TKP
         0FncXsPAb6tPKEnl0BSB0isHE9KgCScxbXsDrE7LnJfUo/okgE62ZqHm8zTsFFP/l4JH
         VeOR7rPeLeCdVAP24/py3X23sjRZG/Hq641jmUPTuBXEwlRsXWkNJD6CMtlCBbqY4iXW
         +c7TVEMQhWPF9hQhc6cF2AHCPIcL3AdT3vWKHR6+jC0qE7lrAokmhUxpi9c9dsSc3esB
         ECEcJ4tUid2gTBGnQl4I/IqaTJ0Gyoc8dn71+35I89CDjqESRutDjAFY3GVih9C8gQx+
         qXMA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@bitpay.com header.s=google header.b=Mnb+2Ev8;
       spf=pass (google.com: domain of matias@bitpay.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=matias@bitpay.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=bitpay.com
Return-Path: <matias@bitpay.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id n14sor2045304uap.37.2018.11.27.08.05.16
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 27 Nov 2018 08:05:16 -0800 (PST)
Received-SPF: pass (google.com: domain of matias@bitpay.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@bitpay.com header.s=google header.b=Mnb+2Ev8;
       spf=pass (google.com: domain of matias@bitpay.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=matias@bitpay.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=bitpay.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitpay.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ikJjMI7B8WwIAe8T14FaeZlzQzNFkMuRPVngficTvuM=;
        b=Mnb+2Ev8tnI/V+YfwesPS3PWimoFevPWS//oVMmPirJELNw2KC06NmYww13bpOdE+a
         AutdV6/rfDdZtJG7urVaZqGKQ0chKlLR7sTKy9vaiopNR6Z7au2cUi53Z3XB0vwIgpt0
         Z1dquUm8+KOIQQh0onc/46+zlrRnSgO2+hTDD2fODGQ+qjuVZa2o3o9oFNOLzSUQfUr/
         8XOP5sofoCyYwFUAcnf+wbZHjV8RVh2RzAJ0+Ufk4LMPwZwS7Exaxx3ge7oOa6Z8efUn
         Re8+Ydp0q31wpjc7ULYE9iEQKB3+wW0A3FLgBMFAoue3mIrYD86hvud6kCt9WMYltxAV
         9t8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=ikJjMI7B8WwIAe8T14FaeZlzQzNFkMuRPVngficTvuM=;
        b=L8JUB0Rss/w+6uflc4D3MMHVhDo3qpA36ZOT6mLmq+cL7QBAXlCJ3oWdi2t4X2+NTa
         KapbIv0Hk4nCP71l3CqV1fF/AdGlh6mddTCI2Mv6yDW/gvDXLtLxxV2KOH1g4yEunGan
         nUHbpd93a90Ep+MdajNwscuG/BNPkjy8jw1v8eec36aexmKPwvBvdCChcaWWONY57blc
         r7hJKKpXkZ724KRwjrMd2j41GUvPU/gwtWxHoYpBMdIHtc/FHGxce+plNeaSVeQxukaS
         0EGsbLTBrfZJS2j44GHScrO9pu8xvflCcMe6+vDVPJs8fi0RxCPJ5TOzM8NXhXqcyR8Z
         cGPQ==
X-Gm-Message-State: AA+aEWZAUp7aSRIN1GYglOL1cAkAnGYsUw0JyD+eiaklwL1lXOvxXVKO
	LlTQlw5lyKrM/U9nvSWnZYj/TBdKxsKN/g==
X-Google-Smtp-Source: AFSGD/V1ZjjrAI49KatTqap9Y+ProOy0RyjVK+7reV8Vqf8SMuBxDBjAqgxQatUUWYk6d6lx+XGFBw==
X-Received: by 2002:ab0:1601:: with SMTP id k1mr13906437uae.74.1543334715312;
        Tue, 27 Nov 2018 08:05:15 -0800 (PST)
Return-Path: <matias@bitpay.com>
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id u136sm1380556vku.10.2018.11.27.08.05.13
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Nov 2018 08:05:13 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id w72so5163556vkd.5
        for <kurt@seifried.org>; Tue, 27 Nov 2018 08:05:13 -0800 (PST)
X-Received: by 2002:a1f:490:: with SMTP id 138mr13074045vke.48.1543334712679;
 Tue, 27 Nov 2018 08:05:12 -0800 (PST)
MIME-Version: 1.0
References: <20181127154026.36526.35377@bigbox.local>
In-Reply-To: <20181127154026.36526.35377@bigbox.local>
From: Matias Alejo Garcia <matias@bitpay.com>
Date: Tue, 27 Nov 2018 13:05:00 -0300
X-Gmail-Original-Message-ID: <CA+vKqYdYMvy=MwLSvU3b1-3_EgUBgz6ndyPoQ5oUyUc09eW=Wg@mail.gmail.com>
Message-ID: <CA+vKqYdYMvy=MwLSvU3b1-3_EgUBgz6ndyPoQ5oUyUc09eW=Wg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for matias@bitpay.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.
On Tue, Nov 27, 2018 at 12:40 PM <kurt@seifried.org> wrote:
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


--=20
BitPay.com
