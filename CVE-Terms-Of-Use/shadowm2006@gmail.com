Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp4664272otd;
        Sat, 21 Jul 2018 23:41:32 -0700 (PDT)
X-Received: by 2002:aed:2569:: with SMTP id w38-v6mr7765944qtc.164.1532241692047;
        Sat, 21 Jul 2018 23:41:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1532241692; cv=none;
        d=google.com; s=arc-20160816;
        b=F5dUJ9+B4Ktb+2Cq2Lhm6a4MicbJZp3AeM0n4Kwyf7L5r1nqKwG2Z1pg30ldnWwRCL
         9EQfzbLZbgptEB0BE7rnpl7QwozJpM7JuzU8PryOA3g6oC6/1FbfY9Dn0moTwXdABlbp
         lKAZ5eKUGbedFf1NYWoIlK87C8hNWicyfYCGhdGXpuabUyl4+9l8/9muVelfyr58NRu+
         1krMxHH73oCqep5rgE1uqDF82tYnOtvaBlaRFIcOThwJpWvtlNlri62BSEMn6uuWRMER
         4JAQzeNm1xXfjKgppV38PtUXBUY4K4kozKTmAIzreghty+jAz4QJ1iRM1o0sH5KJoG6i
         FLlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=pN+lU+pQ5qP4fOZSM7xmBCpX9KsQiBPAIRi07KHox4Q=;
        b=pL14qd/9n/3ptLZUV9bTi4/sUgnuH1SU5xV+2mIARb0UJpZWlOLeBmJXMklbGVmn1+
         FA3wYP+/ZwKbvxTJyzWgAr6aYwl3ZLNC7xGCEXe0ukDq9VoUq24XUCeNSPtTM4qGBQ+5
         ZPZGomjmVISgV7qLr8K4wGSO4F1Ncxj4jqDLZrA8DI5SN3pAUIU102o5lQnTDjraYKhj
         pImAbgN/0YD9GMsBFlYkyUfAUeEfDrA+G1oKmybd1VFlaGAyq+Ad0OLHAkTsx0NVsa41
         CN2dpuxC4KUDAKUJnIYDPMrVMFWkcNRkGhsRLDJHorUar7aGocWF3Ru967mlvAiZl0cl
         cFMQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ByLfJgT8;
       spf=pass (google.com: domain of shadowm2006@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shadowm2006@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shadowm2006@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z46-v6sor2673014qve.42.2018.07.21.23.41.31
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 21 Jul 2018 23:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of shadowm2006@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ByLfJgT8;
       spf=pass (google.com: domain of shadowm2006@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shadowm2006@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pN+lU+pQ5qP4fOZSM7xmBCpX9KsQiBPAIRi07KHox4Q=;
        b=ByLfJgT8IAJZmUPVFQtPglHA2/e+5TphETktGV9DhQZYAHdBfhjie4UQw6MfQeuysx
         8TKHs0Qwu6eFUCaQ05pF2natLWfLoe54crMm/DVmytU0/VLcsZRVStGf1aaV9VIpaJbd
         1mLrdiqF7mu6NTNQFh1Bh+wSzJfz9bSuRDykBxwSIly0phhXptVXgUiXQIBbIFwkEEzN
         iCeg7Wh6dhRa4MEJT0d3jLMjA9BNb+kpjGGUppy6YLbC+n1GDuIfxjngnmm/R83xY7gn
         o/Q9dnuphyHz+l7xqHJtSzdXYt04Sbx6F6XtxyvBPtqqfqNK9+KFIW4eUmxkiwbGXY8k
         /D1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pN+lU+pQ5qP4fOZSM7xmBCpX9KsQiBPAIRi07KHox4Q=;
        b=e3paPVHZ5ZOxjojhgNUhO7Qx9OBBY4thGC1lE3u65Uln5h66KjNCoUyelFz5l7wPUS
         YjxVl4++M3NP2Iown9EbNSQWBmr5nlNC34HVowHmHgntx/g8JbzJSyagbbSPP/rTUH7K
         hLhM2xHCDWhDkbpGd3vuzH9jtuyIbYm3Xgu/lHhOUOnY40KEFsn3HbzUx9XOkU7kUiaz
         ifYIv4bh8c5x5c5aGCbBjXrWjOJWGWQOQa4yXZa74quyjA9GrdPMD1sF78eVB5LZPqOX
         dvDSrtzb1TFjAgj1dFKjGBBHqYfge5Z0tIIHFvHCupg/FklytL0pgt0z4pyIBJy+qBTO
         LkTA==
X-Gm-Message-State: AOUpUlHWYOONmiJ5oZQW6Qu6eQtyxkMlBtfG/P2hF5zmyLrCDGkjcIFs
	kBlKyjMci7a4ftWRMSlElTyYSN82
X-Google-Smtp-Source: AAOMgpdEfvDfucGPym/04TeHZSD87ZsTDquoaqQBC9LHAov+jR20042DgWiDNvAgz+1HRp+7mzrCqQ==
X-Received: by 2002:a0c:bd0e:: with SMTP id m14-v6mr7174659qvg.92.1532241691443;
        Sat, 21 Jul 2018 23:41:31 -0700 (PDT)
Return-Path: <shadowm2006@gmail.com>
Received: from hanacore.localnet ([191.125.45.240])
        by smtp.gmail.com with ESMTPSA id r13-v6sm4257964qti.70.2018.07.21.23.41.29
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Jul 2018 23:41:30 -0700 (PDT)
From: Iris Morelle <shadowm2006@gmail.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for shadowm2006@gmail.com
Date: Sun, 22 Jul 2018 02:41:28 -0400
Message-ID: <3394697.YxoOOPJvJE@hanacore>
In-Reply-To: <20180722063533.4997.9073@shiny-2.local>
References: <20180722063533.4997.9073@shiny-2.local>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

I accept.

On Sunday, July 22, 2018 2:35:33 AM -04 you wrote:
> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>=20
> Simply quote the email and reply with "I accept" at the top if you agree =
to
> the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
> MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
st
> er/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd
> Exposures (CVE=AE), you hereby grant to The MITRE Corporation (MITRE) and=
 all
> CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=AE).=
 Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
st
> er/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.


=2D-=20
Regards
  Iris Morelle


