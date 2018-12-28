Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp634758vkh;
        Thu, 29 Sep 2016 19:18:33 -0700 (PDT)
X-Received: by 10.36.153.194 with SMTP id a185mr1869071ite.70.1475201913062;
        Thu, 29 Sep 2016 19:18:33 -0700 (PDT)
Return-Path: <bmartin@tenable.com>
Received: from mail-it0-x22b.google.com (mail-it0-x22b.google.com. [2607:f8b0:4001:c0b::22b])
        by mx.google.com with ESMTPS id 188si1729742itd.78.2016.09.29.19.18.32
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 19:18:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of bmartin@tenable.com designates 2607:f8b0:4001:c0b::22b as permitted sender) client-ip=2607:f8b0:4001:c0b::22b;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@tenable-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of bmartin@tenable.com designates 2607:f8b0:4001:c0b::22b as permitted sender) smtp.mailfrom=bmartin@tenable.com
Received: by mail-it0-x22b.google.com with SMTP id j69so20140579itb.0
        for <kurt@seifried.org>; Thu, 29 Sep 2016 19:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenable-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=ruWkSwB2QMZiGSMZP+xv7Z9/9lzQcneKMGIuXV1D25c=;
        b=jLG2S2MQrV99uEkWvGegp4HPVZBi2mwa7QPcBnBlXoR1NY2q0Qv/r5aN7r3FWyK+hN
         QWhhDbq1/N28YrIRO0goUpIINDiVTNeyvaUdRJdmZwJsoPyTc8qX54c0gOpNuBK9cbTF
         LN61RBx2fkuYBAOZqxl3XAptvS3SdELHrgH9HqmHgFosahPnlwTRcjzD6gnrF5bU2I87
         C2AwRe26muJGFm45jhEYQMtZfqozunFHeegLZxHIIK31jA3BZ2CrhQTZbjpjCAH43ImA
         ti8A0Ek5UtEDgmJXkM4aAVBps85yKoro2xSdASBPmHiSwQOP6aXtEJ/NIRkQ0QHtQo5r
         qfOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=ruWkSwB2QMZiGSMZP+xv7Z9/9lzQcneKMGIuXV1D25c=;
        b=bjyiY05jVR/cb7ozDqwRERoHQJ/EkCCo0GwIy3vYEUJr4adBUrOHwitfuwvB+jNnEO
         9WGmlg+XXgq67qQcG9vBYeIVbR3Yg9sfOc6C9PrR4DE/Ect/QryVK/4VZjmTmuZanlUc
         mcO0X3EDR2BlZJheM9M/7TpFjHukv0hr+LWRobFrM3omAHrT0Rlm8NNynqERdyN52V+h
         o6KxPTiWy3n2AhtVtBOrcEruBidL755jCHWlrSwI/UemcBiO+2JC7ybvajux6g4BYOGK
         7UVfWHHxah/+KBVP659WwzniOXLwGNagtTcu80rtV09JZBA+sAMmFg3rn+kJwTzTH6fa
         Jgiw==
X-Gm-Message-State: AA6/9RkivXs6uiMAZpFxOsmFYYioT9j6VKvXOmaxWpfTLn6A6xNOVeUGgvdcBHpEvXgfppJw
X-Received: by 10.107.198.131 with SMTP id w125mr6027730iof.121.1475201912700;
        Thu, 29 Sep 2016 19:18:32 -0700 (PDT)
Return-Path: <bmartin@tenable.com>
Received: from [192.168.0.5] (174-16-94-63.hlrn.qwest.net. [174.16.94.63])
        by smtp.gmail.com with ESMTPSA id e63sm4868919ioi.17.2016.09.29.19.18.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 19:18:32 -0700 (PDT)
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
References: <CABqVa38mR=6ojMYijdDCJdZLFW3185KbJycq2D+=i17T1=dExg@mail.gmail.com>
From: Brian Martin <bmartin@tenable.com>
Message-ID: <e226f094-5a95-2364-02bc-15e613ce58fe@tenable.com>
Date: Thu, 29 Sep 2016 20:18:28 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CABqVa38mR=6ojMYijdDCJdZLFW3185KbJycq2D+=i17T1=dExg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


I accept.

On 9/29/2016 6:34 PM, Kurt Seifried wrote:
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
> 
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md>
> 
> and quoted below, please reply with "I accept" and I'll be able to
> process your CVE request. Thanks!
> 
> 
>   Terms of Use
> 
> 
>     <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#license>LICENSE
> 
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE®), you hereby grant to The MITRE Corporation (MITRE)
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly
> perform, sublicense, and distribute such materials and derivative works.
> Unless required by applicable law or agreed to in writing, you provide
> such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
> ANY KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly
> perform, sublicense, and distribute Common Vulnerabilities and Exposures
> (CVE®). Any copy you make for such purposes is authorized provided that
> you reproduce MITRE's copyright designation and this license in any such
> copy.
> 
> 
>     <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#disclaimers>DISCLAIMERS
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
> 
> -- 
> Kurt Seifried
> kurt@seifried.org <mailto:kurt@seifried.org>
