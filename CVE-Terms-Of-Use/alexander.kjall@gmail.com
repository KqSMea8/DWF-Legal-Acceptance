Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp4068697ivl;
        Mon, 2 Oct 2017 13:28:21 -0700 (PDT)
X-Received: by 10.46.70.18 with SMTP id t18mr7863638lja.148.1506976101547;
        Mon, 02 Oct 2017 13:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506976101; cv=none;
        d=google.com; s=arc-20160816;
        b=YWcg2wmAE13GjZ1qtS2vs40i799DWAHU/wLMv8Q97/+t5Jyl/qkjvvg3VVCRt49rzP
         3XYml0kBQGcUzvzSSpsTdJnfDxElWGVEUff6HpkHgUrJhKXevFeSp4TOshbpM6Uf7ETu
         iJcmByEAPTLO54G8a8laD8knGmDhh68HPLe1RqIud7h1A6Ukjg9DCGFD4T2Bbj02Og7r
         TYRXssE3IOk0TSj9sf1MuXxkCTjmUTYS1YzH6b429rRgjUknpaC+f2Agh5/a+hoD/yVz
         lebBDQy4H+A8rXEWALItg475GiOSRiPH9LLt3pq6oYA9ItkUnIV1gboi0LBH+2p/hXpr
         5fXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=gE49DSCDk7Y6wwtCCAe4XqbXlkNJ8babvBQwNL/y13o=;
        b=k0GoTYOLUmMUuibiDrGK7y4XQZaNsHtYS/LxhRgw5AGTOhUcBhdqqvGNDC/KnGr9eC
         487Lr8wtogauScYTAEey3OYDLPoSK6w+z3FPGnF7l7fsfTTNUmV7ft7p4p59GmV65qM9
         9L0+lMfclntF+SfG2BKFa2kHWD2W5HfsteaqocAFzNCJk8kXACPGeHBYkvBRHOjhYc/W
         aYSY9o9Z8iM4frkKBBbHQeNi9LLd23og2AE//de3cuXkJcFsdPHasFefwAKzDn6AANIH
         eSzEEyIYAYxTix6IyXEg7s/dG/KOfo4RPNE+Pf7q+6KJV8KvyUxAlqxGEQm3EirKmuMu
         IUxQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W4kohj1w;
       spf=pass (google.com: domain of alexander.kjall@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=alexander.kjall@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <alexander.kjall@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f70sor1680505lje.55.2017.10.02.13.28.21
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 02 Oct 2017 13:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexander.kjall@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W4kohj1w;
       spf=pass (google.com: domain of alexander.kjall@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=alexander.kjall@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=gE49DSCDk7Y6wwtCCAe4XqbXlkNJ8babvBQwNL/y13o=;
        b=W4kohj1wc9J3ZVBLHMTH6plS/TC+1pSG6L3YL75Gc47z7RSStsiBu6dOUWcTHExvDl
         bw/WVzva2Xqa2fL1Xf735+kburj/OOixJDEVoUPL/U6Mt6MAeX2MBP4HtOeq8fAwGvYp
         V8ekxZOUHi4vDguYCEBBaaZ+Hrxtc3F9hwNipQPEr93hsyQzj6flCLyIOuaoEvcAgKbi
         zSuUyKIXhe7C+cYe6kd3DQwRVyzRqX8RakmH4Ij/A5bFCytbaufPF7RcM6iE5nQ4zRc4
         lbYetGxUkamzsASHV7jq1suhBcN7OVYdRjyuJA5RdKWVHMMcfkzjMl4OzEN7J1GYF9Ry
         pt7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=gE49DSCDk7Y6wwtCCAe4XqbXlkNJ8babvBQwNL/y13o=;
        b=YsyVCj7PmI93D0f/Wf5+ssilsjOylucfnD4V9p9ddkleJ2gOmsC0K+a8MrcTuEO22O
         wBrbmWeu6ZzU9I48EJQgTu0z82CMyyob4WpFk3lkqb38rG4qMDbYO92ylfOf6Ohz+YFZ
         I1NsgHi7XkUmNm/v4hzRNYLFa03WXtxJJnCLOy5fDIarxH7+dTlRvuV9HqDoJ4cMaWpR
         G9sMYdwSjHgAqwQ3XhgTck3B7Hwsl4nMspemW6NuOrCGgDb4+UgABeoz1TzoWcMAItWv
         6meY+peqkjPtt/M8GkKJh2j8jfiCjZ6HZBeC8H1tNMv6zd2VD4OqybFiqAhrKiBFMBk1
         LkvA==
X-Gm-Message-State: AHPjjUhDfqTVbxugeL5ZjAqA87dYn7Kxf2UCrpnWorIRpIOFHXb1J1nl
	N2lLkXsJ1WBrz7PztNlUJQsCn+sY
X-Google-Smtp-Source: AOwi7QDCOyBm8EVFrt7cOqgJ3h1szWKdhCGIcKQvps51I0ETIh9D6Aeg8zigmOkteozxoRoqW4j7wA==
X-Received: by 10.46.2.19 with SMTP id 19mr7413743ljc.0.1506976100914;
        Mon, 02 Oct 2017 13:28:20 -0700 (PDT)
Return-Path: <alexander.kjall@gmail.com>
Received: from [192.168.88.138] (cm-84.210.143.151.getinternet.no. [84.210.143.151])
        by smtp.googlemail.com with ESMTPSA id k10sm2522595ljb.97.2017.10.02.13.28.19
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 13:28:19 -0700 (PDT)
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 alexander.kjall@gmail.com
To: kurt@seifried.org
References: <20171002202259.11491.64301@slab.local>
From: =?UTF-8?Q?Alexander_Kj=c3=a4ll?= <alexander.kjall@gmail.com>
Message-ID: <aeee82db-d496-79e8-b10c-432df887d072@gmail.com>
Date: Mon, 2 Oct 2017 22:28:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171002202259.11491.64301@slab.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

I accept


On 02. okt. 2017 22:22, kurt@seifried.org wrote:
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

