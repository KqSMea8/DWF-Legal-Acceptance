Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3418053otd;
        Sun, 19 Aug 2018 20:31:28 -0700 (PDT)
X-Google-Smtp-Source: AA+uWPxwrT/QwkebMSbEBiZYqIUsByKpOZL+1GkbmUtE1feXwfcbQIVbYudCBekBstGff2IThvG7
X-Received: by 2002:a50:bc03:: with SMTP id j3-v6mr54637766edh.34.1534735888068;
        Sun, 19 Aug 2018 20:31:28 -0700 (PDT)
Return-Path: <xct@vulndev.io>
Received: from mail.vulndev.de ([95.216.26.206])
        by mx.google.com with ESMTPS id o31-v6si152953edc.358.2018.08.19.20.31.27
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 19 Aug 2018 20:31:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of xct@vulndev.io designates 95.216.26.206 as permitted sender) client-ip=95.216.26.206;
Authentication-Results: mx.google.com;
       dkim=temperror (no key for signature) header.i=@vulndev.io header.s=2017 header.b=g8ZAWZx8;
       arc=fail (DNS record missing);
       spf=pass (google.com: domain of xct@vulndev.io designates 95.216.26.206 as permitted sender) smtp.mailfrom=xct@vulndev.io
ARC-Authentication-Results: i=1; web
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndev.io; s=2017;
	t=1534735887; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uQHeV0xPTamikMYY2HS2reb7lAD5Clb9R2helRxksec=;
	b=g8ZAWZx8xTBttIiMHeShUQlSVpLRaLV+wqnDa/101YT1fD3PlE5XzStGiP/1dfjQot/E9D
	NwCv5r3HwE6fu5/Ysa3snmiSzc3U8LGlUF1+OV1W2TEq89dxr6cVBvPG6/ndYAsBYOf5O2
	Vs9cAGxPQtHoTH079tqf09trF7wXVFciqPMKuD6CWIXj39ITX0rTvfKTWs1SGRg1/JTV2u
	0a1C3tvLwMB6L4oz+8qq11cpt6PDgO6/FMV07AxfmvtIXioxzwhHD4Bks0/HIjzFXeMSSo
	pF3DZlbE4ICYBrKGmbdhaJn3g3sbLBGDIxoREkKe2tb8sTWzO4cIFHxpIgEYeg==
ARC-Seal: i=1; s=2017; d=vulndev.io; t=1534735887; a=rsa-sha256; cv=none;
	b=tHkjNqKadozXCDZAIHG+7M1d7LcNuEpfD1sJt6wXVvr4ataGheBrdRMLJNxQIvXz0Qa4MfNnts/SbmSLgm00h4eswncXSe6fMc4lD53GIn8BpUY/uqynuAeLcdcIGlj7mQSsUygxT/sNznjIqNvar8bG+jeLM/CicZidcN5vPKiRpGiacuu0BtfQmCuWpPBUxjzFpzUmTnpwb8+4whOB+Z/la8E+txAmSYL72aYEWQrJPeRDdzqT9g3Ix0mzEpIuuySaLAtcfsuANHCIhHqhWl9Rqy72ukWueRFq5Tyl9CrG9p5RtNiFiPn7NMi0Y3HgMZZc+UVpiEXalLqH4+nZeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndev.io;
	s=2017; t=1534735887; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uQHeV0xPTamikMYY2HS2reb7lAD5Clb9R2helRxksec=;
	b=UZEaPk4wN8bK15r3TsZ/h+q28Adwv/R1TQh18O7lUJcqAU7ha9iblHfRDWhqNqC+k9R9l3
	GY5dCfPvh4dgFZsSxUabvAsO3XQPV+qU1Pf0ULG+E2ibhv3qI8ELklCJvWkDYOhUb4ZnzG
	D4LJvQunt6t9tV0LmaM06jR5NJZUnpCrYUNt85KN/0623YfI6M97kFJSGJHsoaTCdRn3WE
	DjsjOi1bvHQujrA/jchdBrqskqK7HsGxp18LJjUZUyIfASJ3z0QibpiUI/w66V1RcnvqoD
	jNrqrfE5BmEDqlKCEXBUgcRPcIvolk97s/Vabr+PxbFroqwQybmtPgRosOxBeA==
Received: from mail.vulndev.io (localhost [IPv6:::1])
	by mail.vulndev.de (Postfix) with ESMTP id DBDD0460A67
	for <kurt@seifried.org>; Mon, 20 Aug 2018 05:31:26 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Mon, 20 Aug 2018 05:31:26 +0200
From: xct@vulndev.io
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 xct@vulndev.io
In-Reply-To: <20180819222840.2337.69859@shiny-2.local>
References: <20180819222840.2337.69859@shiny-2.local>
Message-ID: <586b2dcb141c259ffaa58adbf431484f@vulndev.io>
X-Sender: xct@vulndev.io
User-Agent: Roundcube Webmail/1.3.6

I accept.

Am 2018-08-20 00:28, schrieb kurt@seifried.org:
> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the
> data until you accept the MITRE CVE Terms of Use).
> 
> Simply quote the email and reply with "I accept" at the top if you
> agree to the MITRE CVE Terms of Use and we will add a copy of the
> email to the DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
> 
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use,
> when they were accepted and so on.
> 
> If you did not submit a CVE request to the DWF you can safely ignore
> this message, however we may resend it at some point in the future, if
> you don't want any future emails simply reply with "unsubscribe" or
> "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address
> to the block list so we don't spam you with these, please note that
> this will prevent you from being able to accept the MITRE CVE Terms of
> Use via the DWF automatically in future (you'll have to manually ask).
> But again, if you have no idea what a CVE is then you can ignore
> this/ask to be added to the block list with no problems.
> 
> MITRE CVE Terms of Use
> 
> LICENSE
> 
> Submissions: For all materials you submit to the Common
> Vulnerabilities and Exposures (CVEÂ®), you hereby grant to The MITRE
> Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a
> perpetual, worldwide, non-exclusive, no-charge, royalty-free,
> irrevocable copyright license to reproduce, prepare derivative works
> of, publicly display, publicly perform, sublicense, and distribute
> such materials and derivative works. Unless required by applicable law
> or agreed to in writing, you provide such materials on an "AS IS"
> BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
> implied, including, without limitation, any warranties or conditions
> of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
> PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license
> to reproduce, prepare derivative works of, publicly display, publicly
> perform, sublicense, and distribute Common Vulnerabilities and
> Exposures (CVEÂ®). Any copy you make for such purposes is authorized
> provided that you reproduce MITRE's copyright designation and this
> license in any such copy.
> 
> DISCLAIMERS
> 
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE
> ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION
> HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION,
> ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL
> WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY
> WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY
> RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A
> PARTICULAR PURPOSE.
> 
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org
> manually with your question/concerns/etc.
