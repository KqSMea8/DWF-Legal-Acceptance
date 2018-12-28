Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1185594uau;
        Thu, 3 Aug 2017 11:35:11 -0700 (PDT)
X-Received: by 10.223.161.145 with SMTP id u17mr1954055wru.44.1501785311543;
        Thu, 03 Aug 2017 11:35:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1501785311; cv=none;
        d=google.com; s=arc-20160816;
        b=xhbtRrpKVvUYc1CEAtISga8HxAsBoie5xFuDY9/L4EeVW8LxgC6oUBqiFYBIEFuR5N
         R7N+PpF5osBwf+dQ7XLSnoPsP2qlS+JpryYjOoFUy+4b4EWeFz+9RlPZT0lc5PJucU8A
         jEdAFfHkjgYWsexhr5oMvOa9tN5lI+97VL/26xrQ6bVKtN6zNyZiHmP4L3UDkVPSaZhL
         jBvLiUAsM54FWN363UdBE3jK8DydOhXAtKsFDKdL98QAy/6vf3z4+KnVtjPq487tbnk/
         FMaabBNq5JLc4+Oh21of01/4DNZVoOx5Kl9v9PrW4UJqWxaUVeN8h57MORKi8pNMUmec
         LkOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:to:subject:content-transfer-encoding:mime-version
         :references:in-reply-to:user-agent:date:domainkey-signature
         :dkim-signature:arc-authentication-results;
        bh=NFHJJbpY/ywY0o13GhsPWfALbcxNkJw2GjA1wyhdaX4=;
        b=WUfRLKm1lvkWdjhlRDVrbXL03oOxfbUZr4fSoNpN9xyUxCDSFIND9UDvM7dS1hJDcC
         zOC0+ybBKCDUogyCfTTimYOHJpLw5rHwbTROmY0+FJgutremzNcYK7LOy7/uV6KG6W5M
         48xosRtrtEZgDw1IAzp+nN0DYyGY1kQMgCOcV8QFCsIw11cqFomUJAt24PmBAMI+vg2f
         mMYxrCVntkr0BVLPDOZ8KxNiz0Gy4k0X4Iw5py69FCAKO4G5KXsinbFoFxihZX3YX/FR
         ZoVeg4QUAtWWQOhy0wT5QqlygpCz3aME5b6uaz9QdWwgSbgxWB+Tk53L8VF4s3R5wHIm
         VpCA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@jpo.cc header.b=Taba8Zer;
       spf=pass (google.com: domain of javi@jpo.cc designates 178.32.165.120 as permitted sender) smtp.mailfrom=javi@jpo.cc;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=jpo.cc
Return-Path: <javi@jpo.cc>
Received: from mx.oc.ocserver.net (mx.oc.ocserver.net. [178.32.165.120])
        by mx.google.com with ESMTPS id v82si1726422wma.51.2017.08.03.11.35.11
        for <kurt@seifried.org>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 03 Aug 2017 11:35:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of javi@jpo.cc designates 178.32.165.120 as permitted sender) client-ip=178.32.165.120;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@jpo.cc header.b=Taba8Zer;
       spf=pass (google.com: domain of javi@jpo.cc designates 178.32.165.120 as permitted sender) smtp.mailfrom=javi@jpo.cc;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=jpo.cc
Received: from mx.oc.ocserver.net (localhost.localdomain [127.0.0.1])
	by mx.oc.ocserver.net (Postfix) with ESMTP id A279D21C03AD
	for <kurt@seifried.org>; Thu,  3 Aug 2017 20:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha1; c=simple; d=jpo.cc; h=date:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding
	:subject:to:from:message-id; s=postfix; bh=wvIJgVsvpzBv/481XoMso
	mkQLF8=; b=Taba8ZerLiUgngrQJyXvtU51nn1Z/3T4c+V4SXdVYu7qbwp5+drGQ
	t05uAF8zne7rd8CLccF7T78e4Q+zUDBEOwxtCCKmJTVc1TPjwPoaRE5FmGklPGwB
	IDu4l0RozEh3vObi0kxOZOZ78sGnnEeiZitq8f4EBeXORqM3qzF62E=
DomainKey-Signature: a=rsa-sha1; c=simple; d=jpo.cc; h=date:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding
	:subject:to:from:message-id; q=dns; s=postfix; b=nNpgBSzpBK5cxud
	pw4ds5lsEeFpjzjq0qIORiTH8actgooT1rzqMitFgvwEQRg2xqOovMfANiC+OK5c
	k7rJOIrEmOO+nGqeaX1G6+9NPKIpSqJmUs5vZRIWn0tfJ+Gnaz4QahCImzfxiIuv
	Z6hYYraZdNAx7tpAWi6UJnP8Iz40=
Received: from [10.34.121.140] (unknown [31.4.182.230])
	by mx.oc.ocserver.net (Postfix) with ESMTPSA id 2598C21C03AC
	for <kurt@seifried.org>; Thu,  3 Aug 2017 20:35:10 +0200 (CEST)
Date: Thu, 03 Aug 2017 20:29:08 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20170803181519.4892.38234@shiny-2.local>
References: <20170803181519.4892.38234@shiny-2.local>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----6QM1EFCMAIA0UT4O0EM8MGU2VUFCPE"
Content-Transfer-Encoding: 7bit
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for javi@jpo.cc
To: kurt@seifried.org
From: Javi <javi@jpo.cc>
Message-ID: <6E8D13CE-D9E8-4A66-B385-EE04106C3B05@jpo.cc>

------6QM1EFCMAIA0UT4O0EM8MGU2VUFCPE
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I accept=2E=20
Thanks=2E=20

On 3 August 2017 20:15:19 CEST, kurt@seifried=2Eorg wrote:
>This is a confirmation email sent from CVE request form at
>https://iwantacve=2Eorg/ asking you to accept the MITRE CVE Terms of Use
>(assuming you filled out the CVE form and want one, we can't use the
>data until you accept the MITRE CVE Terms of Use)=2E=20
>
>Simply quote the email and reply with "I accept" at the top if you
>agree to the MITRE CVE Terms of Use and we will add a copy of the email
>to the DWF MITRE CVE Terms of Use acceptance data at
>https://github=2Ecom/distributedweaknessfiling/DWF-Legal-Acceptance/tree/=
master/Terms-Of-Use
>
>The reason we use a complete copy of the email is that it provides an
>artifact showing that the email address accepted the Terms of Use, when
>they were accepted and so on=2E=20
>
>If you did not submit a CVE request to the DWF you can safely ignore
>this message, however we may resend it at some point in the future, if
>you don't want any future emails simply reply with "unsubscribe" or
>"DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address
>to the block list so we don't spam you with these, please note that
>this will prevent you from being able to accept the MITRE CVE Terms of
>Use via the DWF automatically in future (you'll have to manually ask)=2E
>But again, if you have no idea what a CVE is then you can ignore
>this/ask to be added to the block list with no problems=2E=20
>
>MITRE CVE Terms of Use
>
>LICENSE
>
>Submissions: For all materials you submit to the Common Vulnerabilities
>and Exposures (CVE=EF=BF=BD=EF=BF=BD), you hereby grant to The MITRE Corp=
oration
>(MITRE) and all CVE Numbering Authorities (CNAs) a perpetual,
>worldwide, non-exclusive, no-charge, royalty-free, irrevocable
>copyright license to reproduce, prepare derivative works of, publicly
>display, publicly perform, sublicense, and distribute such materials
>and derivative works=2E Unless required by applicable law or agreed to in
>writing, you provide such materials on an "AS IS" BASIS, WITHOUT
>WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,
>including, without limitation, any warranties or conditions of TITLE,
>NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE=2E
>
>CVE Usage: MITRE hereby grants you a perpetual, worldwide,
>non-exclusive, no-charge, royalty-free, irrevocable copyright license
>to reproduce, prepare derivative works of, publicly display, publicly
>perform, sublicense, and distribute Common Vulnerabilities and
>Exposures (CVE=EF=BF=BD=EF=BF=BD)=2E Any copy you make for such purposes =
is authorized
>provided that you reproduce MITRE's copyright designation and this
>license in any such copy=2E
>
>DISCLAIMERS
>
>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE
>ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION
>HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION,
>ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL
>WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY
>WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY
>RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A
>PARTICULAR PURPOSE=2E
>
>A copy is available at
>https://github=2Ecom/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse=2Emd
>
>To contact the DWF either hit reply, or email kurt@seifried=2Eorg
>manually with your question/concerns/etc=2E=20

------6QM1EFCMAIA0UT4O0EM8MGU2VUFCPE
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>I accept=2E <br>
Thanks=2E <br><br><div class=3D"gmail_quote">On 3 August 2017 20:15:19 CES=
T, kurt@seifried=2Eorg wrote:<blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); paddin=
g-left: 1ex;">
<pre class=3D"k9mail">This is a confirmation email sent from CVE request f=
orm at <a href=3D"https://iwantacve=2Eorg">https://iwantacve=2Eorg</a>/ ask=
ing you to accept the MITRE CVE Terms of Use (assuming you filled out the C=
VE form and want one, we can't use the data until you accept the MITRE CVE =
Terms of Use)=2E <br /><br />Simply quote the email and reply with &quot;I =
accept&quot; at the top if you agree to the MITRE CVE Terms of Use and we w=
ill add a copy of the email to the DWF MITRE CVE Terms of Use acceptance da=
ta at <a href=3D"https://github=2Ecom/distributedweaknessfiling/DWF-Legal-A=
cceptance/tree/master/Terms-Of-Use">https://github=2Ecom/distributedweaknes=
sfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br /><br />The re=
ason we use a complete copy of the email is that it provides an artifact sh=
owing that the email address accepted the Terms of Use, when they were acce=
pted and so on=2E <br /><br />If you did not submit a CVE request to the DW=
F you can safely ignore this message, however we may resend it at some poin=
t in the future, if you don't want any future emails simply reply with &quo=
t;unsubscribe&quot; or &quot;DON'T SEND ME THIS EMAIL EVER AGAIN&quot; and =
I'll add your email address to the block list so we don't spam you with the=
se, please note that this will prevent you from being able to accept the MI=
TRE CVE Terms of Use via the DWF automatically in future (you'll have to ma=
nually ask)=2E But again, if you have no idea what a CVE is then you can ig=
nore this/ask to be added to the block list with no problems=2E <br /><br /=
>MITRE CVE Terms of Use<br /><br />LICENSE<br /><br />Submissions: For all =
materials you submit to the Common Vulnerabilities and Exposures (CVE=EF=BF=
=BD=EF=BF=BD), you hereby grant to The MITRE Corporation (MITRE) and all CV=
E Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-ch=
arge, royalty-free, irrevocable copyright license to reproduce, prepare der=
ivative works of, publicly display, publicly perform, sublicense, and distr=
ibute such materials and derivative works=2E Unless required by applicable =
law or agreed to in writing, you provide such materials on an &quot;AS IS&q=
uot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or=
 implied, including, without limitation, any warranties or conditions of TI=
TLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE=
=2E<br /><br />CVE Usage: MITRE hereby grants you a perpetual, worldwide, n=
on-exclusive, no-charge, royalty-free, irrevocable copyright license to rep=
roduce, prepare derivative works of, publicly display, publicly perform, su=
blicense, and distribute Common Vulnerabilities and Exposures (CVE=EF=BF=BD=
=EF=BF=BD)=2E Any copy you make for such purposes is authorized provided th=
at you reproduce MITRE's copyright designation and this license in any such=
 copy=2E<br /><br />DISCLAIMERS<br /><br />ALL DOCUMENTS AND THE INFORMATIO=
N CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; =
BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSOR=
ED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGE=
NTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING =
BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WIL=
L NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR F=
ITNESS FOR A PARTICULAR PURPOSE=2E<br /><br />A copy is available at <a hre=
f=3D"https://github=2Ecom/distributedweaknessfiling/DWF-Database/blob/maste=
r/TermsOfUse=2Emd">https://github=2Ecom/distributedweaknessfiling/DWF-Datab=
ase/blob/master/TermsOfUse=2Emd</a><br /><br />To contact the DWF either hi=
t reply, or email kurt@seifried=2Eorg manually with your question/concerns/=
etc=2E <br /><br /></pre></blockquote></div></body></html>
------6QM1EFCMAIA0UT4O0EM8MGU2VUFCPE--
