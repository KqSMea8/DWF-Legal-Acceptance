Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp7085720ivh;
        Wed, 31 Jan 2018 13:35:32 -0800 (PST)
X-Google-Smtp-Source: AH8x224oX19SH5OG7HmRLUt/MNOStGG7sgKsDzl+8SaNnVMU7iwMz/Ls1HzgqPnCOsT+Uc8xczJL
X-Received: by 10.223.209.6 with SMTP id a6mr13490297wri.169.1517434532750;
        Wed, 31 Jan 2018 13:35:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1517434532; cv=none;
        d=google.com; s=arc-20160816;
        b=Rv9+kOCexSnVJAekTLto/AKz4Y1fWN++uiyHmpkw9c0rrIvNUQHe5LH0osL+MX1vyF
         H0WVlsAEW0NqEvfUGVFxzQ2ePnifFwfJot3H7U4MLXNCKxYniKv8Wwhz+0BaPdC2U22B
         8iDHlGkBzjQ0H5rJRZiWaGPDdXwObmvdEeg4jBFiXNl5Yn4dOZs8tcOvjG2f6bh4yx8f
         A3GIucT8b7Coz9pEVW1BsMJXsBOyCws/WdriEgv+n0tK/ww3I556f73IFQQURts9nJc6
         If3LWJ5Zsj0ng5NXXbKV1gQykDROgvzeAG3/v0NGh43hhMNcuh3MUiQJEDwYBoD3x9n8
         0/Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=nyGyYeCw+h6B4M0XV2ZywUSVm/Y6YHgvn/K/WnVZ9is=;
        b=fus4PZVYA4LcXNUqwuHHVmgOpRm7vuEGDfUlXJ2rQktSA5p5fh8egdFzlGYAwedjpu
         zAojFpLtXQukzbi6PHABGKe6enCo9k1Uq4GKIhnVz6uMW4ctP4JCJ0JBpKuW8zz+JcE/
         N4574EYG50czO36zBumYsdQ9VUl6D+P1xBid8L9mtnigkha8dhLoPePv6G8NIv444CeJ
         PHWB69scnrT8LdmmXkIxFVm5SY1K9654jsYSbQTs23sy3HKFX3rL6Vtxwtj+zYzR2inR
         4xYoacLuKpS1fs9WQRgyjyfY5NfvMj7Isn6wbJhrpGikrx/0cGUhNds7UbaNCMX7eyBp
         afYw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@teknik.io header.s=_teknikKey header.b=pLBSuSDI;
       spf=pass (google.com: domain of sfeldmann@teknik.io designates 185.165.168.124 as permitted sender) smtp.mailfrom=sfeldmann@teknik.io
Return-Path: <sfeldmann@teknik.io>
Received: from mail.teknik.io (mail.teknik.io. [185.165.168.124])
        by mx.google.com with ESMTPS id v21si2859715wra.259.2018.01.31.13.35.32
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jan 2018 13:35:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sfeldmann@teknik.io designates 185.165.168.124 as permitted sender) client-ip=185.165.168.124;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@teknik.io header.s=_teknikKey header.b=pLBSuSDI;
       spf=pass (google.com: domain of sfeldmann@teknik.io designates 185.165.168.124 as permitted sender) smtp.mailfrom=sfeldmann@teknik.io
dkim-signature: v=1; a=rsa-sha256; d=teknik.io; s=_teknikKey;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=nyGyYeCw+h6B4M0XV2ZywUSVm/Y6YHgvn/K/WnVZ9is=;
	b=pLBSuSDIVFR+GdpV/FYNtmZ45S1dt+ygtJOa8nVP8V5FArJ06Dx7vveq0iDhPMmXcvJxUBLXUuHoYmEVo/0mnBw1FiaPATvXvACcdqN/wVSBAwQnkGZEImTXc1HMUCW5Vr3txlsfTj8dOtMfKb+mbt1ziTTiIo444b7xChtekptnLo8PJeJYt4+qXiF6rO/tywaUNQQKmii/vn1IXqvPbb0yUh5vBec3jEAGiolCoeEHF2h5GCCp0fM4EZ
	Ym+5nn9fcZbNzf/QIgBvC9uvfi16OLi+lCh9+9+XQ9cIOeCcVkKKuHkq8ONIsEGpXVBwz1LzzHHC9KaQGur1xG9VAssg==
Received: from [172.20.65.97] (i53874EDC.versanet.de [83.135.78.220])
	by mail.teknik.io with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128)
	; Wed, 31 Jan 2018 13:35:31 -0800
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 sfeldmann@teknik.io
To: kurt@seifried.org
References: <20171227193409.3645.61667@slab.local>
From: Sebastian Feldmann <sfeldmann@teknik.io>
Message-ID: <03ea0879-f4a2-f715-702b-5dac94bdb124@teknik.io>
Date: Wed, 31 Jan 2018 22:33:38 +0100
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20171227193409.3645.61667@slab.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

I accept


On 12/27/2017 20:34, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVEÂ®), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVEÂ®). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc.
>


