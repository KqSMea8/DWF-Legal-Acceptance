Delivered-To: kurt@seifried.org
Received: by 10.157.29.99 with SMTP id m90csp1392390otm;
        Wed, 13 Sep 2017 13:49:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBVfsdqTatEzJSAF5pT5NBimZrfFlcRvrIdpU25uWHy6OC1a7O6W20/nRtwUsPt7QZUwvsv
X-Received: by 10.31.222.5 with SMTP id v5mr12476067vkg.50.1505335790453;
        Wed, 13 Sep 2017 13:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505335790; cv=none;
        d=google.com; s=arc-20160816;
        b=xBPQTKo9IIWXE10nEL1UW1jUvHcHD9cM5XvuLxGxrm+lCC5nvWGuhxEP3+FWeebT/S
         PJoKAzU2KUgf4jcy4W9oYgnXp3R/KBw85CQalwXyINk12waDoCjD/SFQyMdTmSgj6qeP
         GOlmzoEUwUrAbiQum1X+cSUXHeYcMfE4kI3ZU6xv0Oi12dhw1LSjdGtUxXt490I/sh3c
         8UPNqKd6TFIGncyjaA8F01aizu+Xm/FBJ7rqxaxJl9CTQHwOhzlCIBVPpaC0H2fB5B+V
         CB2HIt5N1aCZ/Ktqu3shPt85/iZlIQ7ROK7RCnOwbl7rMHFLtOpPKCyAN0zrSO+Pvdyf
         YQ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :arc-authentication-results;
        bh=/WIRn+6fdKSaMsCRK494QEdCRhUdgFWBNh00Zv6P/Ww=;
        b=AtdI4QBrWPzQu6+Tkcg7fz8kDCIGcJTqLtBNHThi/ZqW7MWVP4eGO4LFnkpGadhY/7
         XLSr5dQFkq1ugSlauXz/W11vzy9+kaVbZD+3y9+m7FsgswyDLmG579XCJPo0d8dAbCkX
         SXAlJWvWOVXJ2jRxSuqfhh7xYKxwkgi3P/a8QlAiFQnJKscZsuzyYL3nTbIiFt9J98IP
         2FEdAS+Omfg2xqK1Qov4ii5ObnWZobzN3h9tJHcZHR9gsFJEnt8L6x3qqsYZh1Jog6vS
         OqHIqVb9wg/7wbDdilJusBZAvdIS1CmERlVBCvTkH9n+zxiUyuDrWVrNFEw1WVZuypUj
         1H9Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rchase@rchase.com designates 104.131.182.133 as permitted sender) smtp.mailfrom=rchase@rchase.com
Return-Path: <rchase@rchase.com>
Received: from lockness.locklinnetworks.com (lockness.locklinnetworks.com. [104.131.182.133])
        by mx.google.com with ESMTP id g192si3752662vkd.226.2017.09.13.13.49.50
        for <kurt@seifried.org>;
        Wed, 13 Sep 2017 13:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of rchase@rchase.com designates 104.131.182.133 as permitted sender) client-ip=104.131.182.133;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of rchase@rchase.com designates 104.131.182.133 as permitted sender) smtp.mailfrom=rchase@rchase.com
Received: from DESKTOP3BJRKUF (unknown [84.39.116.180])
	by lockness.locklinnetworks.com (Postfix) with ESMTPSA id F2610BF54E
	for <kurt@seifried.org>; Wed, 13 Sep 2017 20:49:45 +0000 (UTC)
From: "Reilly Chase" <rchase@rchase.com>
To: <kurt@seifried.org>
References: <20170913203846.2669.88271@222.1.168.192.in-addr.arpa>
In-Reply-To: <20170913203846.2669.88271@222.1.168.192.in-addr.arpa>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for rchase@rchase.com
Date: Wed, 13 Sep 2017 16:49:44 -0400
Message-ID: <04de01d32cd1$d63d6090$82b821b0$@rchase.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIYXwaCfATqlfaIC7pAyOCSJV2+/aIo5V+w
Content-Language: en-us

I accept

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org] 
Sent: Wednesday, September 13, 2017 4:39 PM
To: rchase@rchase.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
rchase@rchase.com

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/maste
r/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when they
were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically in
future (you'll have to manually ask). But again, if you have no idea what a
CVE is then you can ignore this/ask to be added to the block list with no
problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVEB.), you hereby grant to The MITRE Corporation (MITRE) and all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute such materials and derivative works. Unless required by
applicable law or agreed to in writing, you provide such materials on an "AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied, including, without limitation, any warranties or conditions of
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute Common Vulnerabilities and Exposures (CVEB.). Any copy you make
for such purposes is authorized provided that you reproduce MITRE's
copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsO
fUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc. 


