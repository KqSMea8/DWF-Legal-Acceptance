Delivered-To: kurt@seifried.org
Received: by 10.79.201.12 with SMTP id n12csp3862239ivk;
        Tue, 13 Feb 2018 08:31:09 -0800 (PST)
X-Google-Smtp-Source: AH8x224IBtK1JivS+XBaqRvqgcoYEme7ygqNDaHU1KWQ6SlsETnvamHusaL6aT+qSLN/SSB331NR
X-Received: by 10.80.226.68 with SMTP id o4mr3008368edl.151.1518539469330;
        Tue, 13 Feb 2018 08:31:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518539469; cv=none;
        d=google.com; s=arc-20160816;
        b=j7PHZxQN3KqW9BxgFdltGo/4iKv0gtgp39RPbIPnC7X1T1w5orgYYvliuW5C+Bhv88
         jrfzLijGHicHN8dwRcP/3c7IhZevdMoxDmX2r4UFSR3FzWZEKcdFaS6MYTiHDi2rNdH8
         1PWcNn4xqjhfrsH1JLhOi4WA1/I1OnUDlXnNsICZnTf//LWLxUjrYfO9guwvxiGgZPAL
         9oVcMV0wGpH/RmExLu7uZeDdlTI0WmkYvfKDNH82B8+31cMcsrENmJNnT8AejF1mYzuK
         z8K/2y7V7okoryCopiWDtk4Hcq6XL+sggs+kVMKyZdUk+VPi4gBQrg+SHM4B8NlXeApY
         isyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-id:list-unsubscribe:user-agent:message-id:references
         :in-reply-to:subject:to:from:date:content-transfer-encoding
         :mime-version:dkim-signature:arc-authentication-results;
        bh=v6kLDTmtRumZqPmPQOFeU1u+e7HqHXb6JT5jD6u6ixU=;
        b=HHWTsPCaq8x7FgVY6S6t+Sv9WR6nMJG5lxixfrvbSfiZCsxw+etNO17JO8JkkgkfSi
         TFqVG0aBacWRknvODmdnX+vxFq4bEGl9YYFwLH7o19qztewDifaQRu5X3UrJwpn774og
         KpEV+mG8VN1mn78m20CDA+7BryeeDRcN2RFcoPjtuzrgTBX5NXobVPlTStgW2MLsV5tK
         4Di69pVg6GIXymEIRVWkOF7VDfJx5vRrLOckCCXAftJPjT9qAyrdQJWy4HUqhEEgFq5a
         gbBk0tY258XvkFsUbe7e/FyrzFGQjXWTjMGlDQdJ5q7kwqWLaRljKOuox7LdUHUGPuic
         G7KA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=temperror (no key for signature) header.i=@legacysecuritygroup.com header.s=scph1115 header.b=SVhrxO7D;
       spf=pass (google.com: domain of msprvs1=17582z2tky0dk=bounces-9178@spmailt.com designates 35.160.182.156 as permitted sender) smtp.mailfrom=msprvs1=17582Z2TKy0DK=bounces-9178@spmailt.com
Return-Path: <msprvs1=17582Z2TKy0DK=bounces-9178@spmailt.com>
Received: from mta201.spmta.com (mta201.spmta.com. [35.160.182.156])
        by mx.google.com with ESMTPS id f35si1990379ede.481.2018.02.13.08.31.07
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 08:31:09 -0800 (PST)
Received-SPF: pass (google.com: domain of msprvs1=17582z2tky0dk=bounces-9178@spmailt.com designates 35.160.182.156 as permitted sender) client-ip=35.160.182.156;
Authentication-Results: mx.google.com;
       dkim=temperror (no key for signature) header.i=@legacysecuritygroup.com header.s=scph1115 header.b=SVhrxO7D;
       spf=pass (google.com: domain of msprvs1=17582z2tky0dk=bounces-9178@spmailt.com designates 35.160.182.156 as permitted sender) smtp.mailfrom=msprvs1=17582Z2TKy0DK=bounces-9178@spmailt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=legacysecuritygroup.com; s=scph1115; t=1518539465;
	i=@legacysecuritygroup.com;
	bh=v6kLDTmtRumZqPmPQOFeU1u+e7HqHXb6JT5jD6u6ixU=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Unsubscribe:
	 List-Id;
	b=SVhrxO7DeXojqeClad9pvQuu5vk+zgcKvQPBRqhRl5OOqWeEUUGSuERy6258y4X3D
	 Tl3+gwBTXAZgkmjCFYw1NM72H3QyIbklJc3SZ6HuUjaChOwXrLXnTobmXl1p3wYEjr
	 GT93xRX44G1SApTn0Q/14NrOYISe/l+Sec0yhH1c=
X-MSFBL: MZejLh0dmE2VUxy3di+Asb95jGUmIZplBUJ+yXPBeIk=|eyJtZXNzYWdlX2lkIjo
	iMDAwMGM5MTI4MzVhNjQ1NDM1YjAiLCJzdWJhY2NvdW50X2lkIjoiMCIsImN1c3R
	vbWVyX2lkIjoiOTE3OCIsInRlbmFudF9pZCI6InNwYyIsInIiOiJrdXJ0QHNlaWZ
	yaWVkLm9yZyJ9
Authentication-Results:  c.mta1vsmtp.cc.prd.sparkpost smtp.user=<hidden>; auth=pass (LOGIN)
Received: from [45.36.225.203] ([45.36.225.203:33982] helo=mx.legacysecuritygroup.com)
	by c.mta1vsmtp.cc.prd.sparkpost (envelope-from <contact@legacysecuritygroup.com>)
	(ecelerity 4.2.39.63035 r(Core:4.2.39.1)) with ESMTPSA (cipher=ECDHE-RSA-AES256-GCM-SHA384) 
	id 53/0B-21604-9C2138A5; Tue, 13 Feb 2018 16:31:05 +0000
Received: from mx.legacysecuritygroup.com (localhost [127.0.0.1])
	by mx.legacysecuritygroup.com (Postfix) with ESMTP id 0381416DDB
	for <kurt@seifried.org>; Tue, 13 Feb 2018 16:31:04 +0000 (UTC)
Authentication-Results: mx.legacysecuritygroup.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=legacysecuritygroup.com
X-Virus-Scanned: Debian amavisd-new at 
Received: from mx.legacysecuritygroup.com ([127.0.0.1])
	by mx.legacysecuritygroup.com (mx.legacysecuritygroup.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id YWpgjdFqC4EZ for <kurt@seifried.org>;
	Tue, 13 Feb 2018 16:31:03 +0000 (UTC)
Received: from _ (localhost [127.0.0.1])
	by mx.legacysecuritygroup.com (Postfix) with ESMTPSA id 2E13C16DC9
	for <kurt@seifried.org>; Tue, 13 Feb 2018 16:31:03 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 13 Feb 2018 11:31:03 -0500
From: contact@legacysecuritygroup.com
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 contact@legacysecuritygroup.com
In-Reply-To: <20180213154631.60555.56650@slab.local>
References: <20180213154631.60555.56650@slab.local>
Message-ID: <2e9b1933f9bafa0460f34b62c25a7611@legacysecuritygroup.com>
X-Sender: contact@legacysecuritygroup.com
User-Agent: Roundcube Webmail
List-Unsubscribe: <mailto:unsubscribe@unsub.spmta.com?subject=unsubscribe:MAEzgoi1CIgYsUInThs-V-sMZ6vjaLLGbpNu3N7u0Fk~|eyAicmNwdF90byI6ICJrdXJ0QHNlaWZyaWVkLm9yZyIsICJ0ZW5hbnRfaWQiOiAic3BjIiwgImN1c3RvbWVyX2lkIjogIjkxNzgiLCAibWVzc2FnZV9pZCI6ICIwMDAwYzkxMjgzNWE2NDU0MzViMCIsICJzdWJhY2NvdW50X2lkIjogIjAiIH0~>
List-Id: <spc-9178-0>

I accept
