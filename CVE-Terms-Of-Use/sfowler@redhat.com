Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp94502ivl;
        Thu, 5 Apr 2018 15:54:06 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+v6ZyPpmqOelbvs0KWKSsRGuIx2z5Lxf76oqYWjv/F1p9/fC8P2ulzounrzvlEtN1lqJtz
X-Received: by 10.55.156.207 with SMTP id f198mr32533870qke.285.1522968846232;
        Thu, 05 Apr 2018 15:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522968846; cv=none;
        d=google.com; s=arc-20160816;
        b=fOZpoClxdZLj+YB4cCDqeO8auNBzB5ifDSLEpxRsq/MJGHvDyTHlWkTxoZES6XkqsK
         sy3lVFksiCXmeCJdmENQcTFtVcPpi4XMnDlLQ6ILx9r+bUEyz0dlHEDqoxjHA79iEWx8
         NmPyljJWNFwYA7QdU+gz4pYe3bW6ZJBlCVhKyK9yTQsP2URvYMsXMMcTouD19zHlkJUp
         FTfWy05Mzt4NL+tGCxZXmfG663XIgDFZY3ECeYehsqtCVyyq6Q1CLbINcFdvebCH/U0p
         3YIMp30NYGVLwYxJ7EZfXn59bvGHi+1wZBDOvpy9KH8DVHJTZtBmteRxKEJs7qWjyiLV
         Zdsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject
         :reply-to:arc-authentication-results;
        bh=jYjUkmP0hDRYb8/+hG9Y+G4Ctq5nn/y2muDu0fdQ0sI=;
        b=WizKWpLcQSLeZl9mgvUzyNpXRP5d1NYQn5HgmCqjnJMJTBtyHYHM7GHs+L5a0luyrh
         olciJ3Q5tZWq5z1fHXK7ILEZQRDT8U62TpFW2uKkTe4y9/co+iOC6gtSnYTgr3z+tREw
         YlgSHdC9pkZ8JJuVzRAnzZs0W0Rg41HKGjLrX10as5lWIQBUNIbShG3Or6ofPC3RT3ui
         Vl9Z1xaXe0Xm0qgeeXccjnslAWyQVrxHkZFfshgRMrcfspUNoB0AC/VWxaUunvfZTOGM
         RcDfN/41um9ZefZZqHPyLvqsKt8WKf5k2X2bZ8Ju/5PGKtATvBVs75TUcYccgWl7Zz19
         j0hA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of sfowler@redhat.com designates 66.187.233.73 as permitted sender) smtp.mailfrom=sfowler@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sfowler@redhat.com>
Received: from mx1.redhat.com (mx3-rdu2.redhat.com. [66.187.233.73])
        by mx.google.com with ESMTPS id s81si7264666qkl.208.2018.04.05.15.54.05
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Apr 2018 15:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfowler@redhat.com designates 66.187.233.73 as permitted sender) client-ip=66.187.233.73;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of sfowler@redhat.com designates 66.187.233.73 as permitted sender) smtp.mailfrom=sfowler@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A525E5BCBE
	for <kurt@seifried.org>; Thu,  5 Apr 2018 22:54:05 +0000 (UTC)
Received: from [10.64.33.18] (unknown [10.64.33.18])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 194D31227727
	for <kurt@seifried.org>; Thu,  5 Apr 2018 22:54:04 +0000 (UTC)
Reply-To: sfowler@redhat.com
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 sfowler@redhat.com
To: kurt@seifried.org
References: <20180405090542.26722.84404@slab.local>
From: Sam Fowler <sfowler@redhat.com>
Organization: Red Hat
Message-ID: <5b87e6e3-03c8-ced8-f135-1843be7b44a9@redhat.com>
Date: Fri, 6 Apr 2018 08:54:04 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20180405090542.26722.84404@slab.local>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.1]); Thu, 05 Apr 2018 22:54:05 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.1]); Thu, 05 Apr 2018 22:54:05 +0000 (UTC) for IP:'10.11.54.3' DOMAIN:'int-mx03.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'sfowler@redhat.com' RCPT:''

I accept

--
Sam Fowler, Red Hat Product Security

On 05/04/18 19:05, kurt@seifried.org wrote:
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
