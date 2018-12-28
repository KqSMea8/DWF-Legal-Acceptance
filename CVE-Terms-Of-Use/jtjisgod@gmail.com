Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp671211vkh;
        Thu, 29 Sep 2016 21:39:26 -0700 (PDT)
X-Received: by 10.98.106.65 with SMTP id f62mr8462231pfc.107.1475210365988;
        Thu, 29 Sep 2016 21:39:25 -0700 (PDT)
Return-Path: <jtjisgod@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by mx.google.com with ESMTPS id f10si7802497pff.253.2016.09.29.21.39.25
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 21:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jtjisgod@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jtjisgod@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=jtjisgod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id oz2so34440898pac.2
        for <kurt@seifried.org>; Thu, 29 Sep 2016 21:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=v6kLDTmtRumZqPmPQOFeU1u+e7HqHXb6JT5jD6u6ixU=;
        b=SW+vKkARRQIHhTCg03WrkaZop6LKyAheK0cMAtjWsmdjFN9hgXcbPX5rd6wegzlOvg
         2TayQnztoEkZ+ktQhhwACI0496EDTaxQ3U2bcpSe1ObNDZ9DEDAjh9Tf1HGK9etCS+FL
         3/fyplGqsCim8oYFAGPl4fGc5gohfKHcEyIJ9sS3RlsYDrGJeVSft5ok5YerGlf5X2f+
         KYUV6r4AfHsVaXTU+joxbdQpP4p/sfMD15D/4fCBL9PtGx3i+pvx3LFlnnjXuzPQOLuK
         VpWyN0A/dJVjzlvWCFTrYIY7iJN5ZCEwRrR6S3xL2DIoYGWs72J1NP/iwpoloOmSzq03
         kOGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=v6kLDTmtRumZqPmPQOFeU1u+e7HqHXb6JT5jD6u6ixU=;
        b=aAMMrHKN1ihbUZnkQS0rke/Mo/vUFKsL74TaYPQlafKjSuBBBzCUKGqUErvs4S0/po
         gy3L9c4dmdXf2uNDvc8Wc8FHj1t2/HP4HvIwESkS+5Tbg4wXQVaXOi4b62SzO4U215OB
         WTbsOd9XOup0oA1YWF/cfrTYJJ/7CrE4T3clT/onHhlDzLEETskdqH4BofEKKFSbJHRE
         HlFBUPB0uynrMhFwHYmNJWBZw8kAj9mQrKUumqpRvN/UjAR4yPusdaftnzJUY/nvvOkq
         xNjprXAZ6NqCWWplM42h6mYdn0WyCK4546YvG4CJPn0IXf8f466pSd4/d4TgP35dt8rQ
         fIoQ==
X-Gm-Message-State: AA6/9RmBTTN9irQMDLWGSTjc1uahGeKGOhxHGc0SB3PqMPkOE7zYfIkZXYZ+VYv4I43XKA==
X-Received: by 10.66.1.71 with SMTP id 7mr8304174pak.168.1475210365560;
        Thu, 29 Sep 2016 21:39:25 -0700 (PDT)
Return-Path: <jtjisgod@gmail.com>
Received: from [172.16.2.38] ([61.108.14.235])
        by smtp.gmail.com with ESMTPSA id y5sm23755661pfb.13.2016.09.29.21.39.24
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 21:39:25 -0700 (PDT)
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: Jangtaejin <jtjisgod@gmail.com>
Message-ID: <f1047fd4-557f-1cd0-20a5-5cd475f27b48@gmail.com>
Date: Fri, 30 Sep 2016 13:39:20 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2
MIME-Version: 1.0
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I accept
