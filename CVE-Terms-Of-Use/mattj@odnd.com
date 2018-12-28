Delivered-To: kurt@seifried.org
Received: by 10.79.0.167 with SMTP id q39csp1781224ivf;
        Mon, 12 Mar 2018 09:22:18 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuIsuAT0vGq5St2+T8UGbdSYctVQYVshhvxACmcNzUjM6Fm+IktV09ZYcfMPV0VCA85NOiT
X-Received: by 10.46.31.10 with SMTP id f10mr5331678ljf.130.1520871738752;
        Mon, 12 Mar 2018 09:22:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520871738; cv=none;
        d=google.com; s=arc-20160816;
        b=ww6FccRk5bO9TmA0c5ViVky5abl0tZmCtgNVZlvSAdtDZx5A+Ay8GpC6vkI0SGHZvf
         +GmZMTxiHr4h4AAlejtAlCDGOOnara7C+JwUHBV0VHRtQvcc7lAfP9q43C8vadDH59aT
         6evfCoh/xPOQfpU4kj0RVbxcfML/C2KySePTA8RCYU8avPwdYgBY9X/B8f7izJHV3H+n
         M05v2fPA8nn9CmD6ycoPP997C77219i7oZ4h4kzKtso1hrH5xIQwZJRrqILDW8zEUCAE
         Up0YegMug9N8JiD0hdByGI8SyFMShMVpBnjT330SS5QAb459pvclVQ9Z4LvM2UklyM7k
         QzNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:references:in-reply-to:subject:to:from:date
         :content-transfer-encoding:mime-version:arc-authentication-results;
        bh=sIZ82pduPM23a3ym8aorcwr68yOTM/K/WUMS+GkK5Ew=;
        b=MYZLi5EnKq74uWuQ1Z/itEb58wuIsqPDgDfDKgl4h72rl2o3C+iflYqXzn5SJBidsX
         Tnf415Cf8Yvaa6ltL7rHwy5/E0ceb+PMv/GNldIJz+Sb5SgINH/NEPXfkk4srCh4e0EG
         /iq8CGZROy4WTMzsE+xakClD5WDdxf9DEYAFLtojrK81uq4VBDNg88quganFijmGX/a6
         SvHfolvEWBFkCYDlFV8pBB5zl+lPms7YWP/Dxk+524S6lfQizaBHTb6M1jjKSW0+oAqH
         XQmNiM9+CfH08W1wBGoyGxMyPmAlIU0tyCLgTm4hyHY2+BkYRcSe7HVGygv5rWDEJ4FQ
         MSPw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mattj@odnd.com designates 158.174.5.46 as permitted sender) smtp.mailfrom=mattj@odnd.com
Return-Path: <mattj@odnd.com>
Received: from webmail.countermail.com (db1.countermail.com. [158.174.5.46])
        by mx.google.com with ESMTPS id b15si2930516ljf.424.2018.03.12.09.22.18
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Mar 2018 09:22:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mattj@odnd.com designates 158.174.5.46 as permitted sender) client-ip=158.174.5.46;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of mattj@odnd.com designates 158.174.5.46 as permitted sender) smtp.mailfrom=mattj@odnd.com
Received: from smtp.countermail.com ([158.174.5.46])  by webmail.countermail.com (Postfix) with  ESMTPA id CD7BD60214B7
	for <kurt@seifried.org>; Mon, 12 Mar 2018 17:21:28 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Mon, 12 Mar 2018 12:21:28 -0400
From: mattj@odnd.com
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 mattj@odnd.com
In-Reply-To: <20170818192821.55281.10010@shiny-2.local>
References: <20170818192821.55281.10010@shiny-2.local>
Message-ID: <79a9102431a4783aa5c55b2a92880b5e@odnd.com>
X-Sender: mattj@odnd.com

I accept.

On 2017-08-18 15:28, kurt@seifried.org wrote:

> This is a confirmation email sent from CVE request form at 
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use 
> (assuming you filled out the CVE form and want one, we can't use the 
> data until you accept the MITRE CVE Terms of Use).
> 
> Simply quote the email and reply with "I accept" at the top if you 
> agree to the MITRE CVE Terms of Use and we will add a copy of the email 
> to the DWF MITRE CVE Terms of Use acceptance data at 
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
> 
> The reason we use a complete copy of the email is that it provides an 
> artifact showing that the email address accepted the Terms of Use, when 
> they were accepted and so on.
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
> Submissions: For all materials you submit to the Common Vulnerabilities 
> and Exposures (CVE
