Delivered-To: kurt@seifried.org
Received: by 10.176.3.232 with SMTP id 95csp923305uau;
        Wed, 12 Jul 2017 08:44:04 -0700 (PDT)
X-Received: by 10.13.199.69 with SMTP id j66mr2917671ywd.26.1499874244887;
        Wed, 12 Jul 2017 08:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499874244; cv=none;
        d=google.com; s=arc-20160816;
        b=nUaSfo/34kOmdjvfYFykjq2EDhCGh0IfXmTfCtdlHASAhFdoYYUMXk5hkm+uNdw7vy
         GkR3Q8ce21Czp3gFf6Dhm8Pbl/LQHk4iEKfCmuQSAf5egyt8qp1qf3cLTNQC5rgL5Q1d
         5nBVI/95dw0V7WhuIghIPBtUS/EygOg13ufMkeF1ole1P3NOwMUqczxbaTtfJg84yNw0
         vrPoqVe7Ue4hWjXO3scLOHADpGOpO5eVwvEieVKDqf0/U5mRsFsR/sRD/uKa9rx8n9jw
         a/o2dfjURti2gG5hwIZkprKtFOlL5Mo1YvrecgWGjlzHF0Ds0bI9Mmpk5S+7XfVigxzz
         dfXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:arc-authentication-results;
        bh=IFEDt7U/fP2qEq14reKLIIyUwZLMNlw1CIT+/YXL0LI=;
        b=MpMsm/5ojzzvyScUfLcGY2Z//EBb3xgUugSNyBR2nQL5E9+lh5ZMLmhwuTViSDe6Oj
         Pac+eyWHiqdiXVunLFfVSeojxLL/kDY4UiYn/qgHADmNFANWtoZP2VqUrZI3qP91gu3x
         Zk5v6kWfD8zW2ykGobe1TvE82YKTfIx2X1PBuhW8XlAYt//Q5Cmg2zX6AFmGnsl+X2Xa
         GtOCJNiU0/lohcYMH4kNLSAA0XlL2QbQilf2tdoP2wamwSTHhcDYb4c3WroxMl753JNS
         VoM8veUAicEe4ImesD73NnpQMzh1zrEw4DsneEazDV7M44WYs+7GsdjugXTcyuSo9EkO
         JFIQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jliggitt@redhat.com designates 209.85.161.183 as permitted sender) smtp.mailfrom=jliggitt@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <jliggitt@redhat.com>
Received: from mail-yw0-f183.google.com (mail-yw0-f183.google.com. [209.85.161.183])
        by mx.google.com with ESMTPS id u201si736632ywu.259.2017.07.12.08.44.04
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jul 2017 08:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jliggitt@redhat.com designates 209.85.161.183 as permitted sender) client-ip=209.85.161.183;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of jliggitt@redhat.com designates 209.85.161.183 as permitted sender) smtp.mailfrom=jliggitt@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: by mail-yw0-f183.google.com with SMTP id f200so2375607ywb.1
        for <kurt@seifried.org>; Wed, 12 Jul 2017 08:44:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version;
        bh=IFEDt7U/fP2qEq14reKLIIyUwZLMNlw1CIT+/YXL0LI=;
        b=R45W9+kCqXpi6nnWkJDhdbuiCSbKbqGg/HacZEXl7rJBH2M1+gMi7NXvGJslgI8Dyg
         /7WNvk0teB6b1AmSsyccLSrzR4tOn8KY3ZnV1x2DNKhPdpocI7pNFHn9BPzm/KNfk8kP
         gEROWv2TrAZJhAVXaLFjGOMmWALVosuoXgzVFz4rJXfJU1hV54OXcb3z06CAe5lIcIX+
         33UrPcg0MxD/zfR+Q9aQVZIOZzHBF3mkGWMjPLkAQCwtA7RW3W7JTPBbicqeeYLfmSgr
         9ZxoVY2akoOiRlgXaS47ugODvZYDRTf/82kraW8Bly2Ff/330YJyypYNybfQd+rYPabJ
         O3Lg==
X-Gm-Message-State: AIVw112AdAaYEA+WQKX9mGLozxhDfZqhKN+lI2Kkktk7feUXaJlAJ7aC
	UzYH8WlkonYnnoHeT+XQzao=
X-Received: by 10.31.160.78 with SMTP id j75mr2662vke.4.1499874244535;
        Wed, 12 Jul 2017 08:44:04 -0700 (PDT)
X-Google-Already-Archived: Yes
X-Google-Already-Archived-Group-Id: 63937215ac
X-Google-Doc-Id: 768b612dd655
X-Google-Thread-Id: 135b5ff5df586773
X-Google-Message-Url: http://groups.google.com/group/kubernetes-security/msg/768b612dd655
X-Google-Thread-Url: http://groups.google.com/group/kubernetes-security/t/135b5ff5df586773
X-Google-Web-Client: true
Date: Wed, 12 Jul 2017 08:44:04 -0700 (PDT)
From: Jordan Liggitt <jliggitt@redhat.com>
To: kubernetes-security <kubernetes-security@googlegroups.com>
Cc: kurt@seifried.org
Message-Id: <3bc0bddb-d68d-49d3-a4aa-1abbdb8754d8@googlegroups.com>
In-Reply-To: <20170709032439.2470.70410@shiny-2.local>
References: <20170709032439.2470.70410@shiny-2.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 kubernetes-security@googlegroups.com
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8313_1235721971.1499874244084"
X-Google-Token: EMSHmcsFsJLzdsWGy1g0
X-Google-IP: 66.187.233.202

------=_Part_8313_1235721971.1499874244084
Content-Type: multipart/alternative; 
	boundary="----=_Part_8314_88723383.1499874244084"

------=_Part_8314_88723383.1499874244084
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept


On Saturday, July 8, 2017 at 11:24:46 PM UTC-4, kurt@seifried.org wrote:
>
> This is a confirmation email sent from CVE request form at=20
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use=20
> (assuming you filled out the CVE form and want one, we can't use the data=
=20
> until you accept the MITRE CVE Terms of Use).=20
>
> Simply quote the email and reply with "I accept" at the top if you agree=
=20
> to the MITRE CVE Terms of Use and we will add a copy of the email to the=
=20
> DWF MITRE CVE Terms of Use acceptance data at=20
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use=20
>
> The reason we use a complete copy of the email is that it provides an=20
> artifact showing that the email address accepted the Terms of Use, when=
=20
> they were accepted and so on.=20
>
> If you did not submit a CVE request to the DWF you can safely ignore this=
=20
> message, however we may resend it at some point in the future, if you don=
't=20
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME=
=20
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so=20
> we don't spam you with these, please note that this will prevent you from=
=20
> being able to accept the MITRE CVE Terms of Use via the DWF automatically=
=20
> in future (you'll have to manually ask). But again, if you have no idea=
=20
> what a CVE is then you can ignore this/ask to be added to the block list=
=20
> with no problems.=20
>
> MITRE CVE Terms of Use=20
>
> LICENSE=20
>
> Submissions: For all materials you submit to the Common Vulnerabilities=
=20
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and=20
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,=20
> no-charge, royalty-free, irrevocable copyright license to reproduce,=20
> prepare derivative works of, publicly display, publicly perform,=20
> sublicense, and distribute such materials and derivative works. Unless=20
> required by applicable law or agreed to in writing, you provide such=20
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY=20
> KIND, either express or implied, including, without limitation, any=20
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or=
=20
> FITNESS FOR A PARTICULAR PURPOSE.=20
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
=20
> no-charge, royalty-free, irrevocable copyright license to reproduce,=20
> prepare derivative works of, publicly display, publicly perform,=20
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any=20
> copy you make for such purposes is authorized provided that you reproduce=
=20
> MITRE's copyright designation and this license in any such copy.=20
>
> DISCLAIMERS=20
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE=
=20
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE=
=20
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF=20
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS=20
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE=
=20
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S=20
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.=20
>
> A copy is available at=20
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md=20
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually=
=20
> with your question/concerns/etc.=20
>
>
------=_Part_8314_88723383.1499874244084
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><br><br>On Saturday, July 8, 2017 at 11:24:46 =
PM UTC-4, kurt@seifried.org wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">This is a confirmation email sent from CVE request form at <a href=3D=
"https://iwantacve.org/" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"=
this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fiwantacve.or=
g%2F\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG4UxTjWQl9H5lS2gzxSZAUmB68cg&#=
39;;return true;" onclick=3D"this.href=3D&#39;https://www.google.com/url?q\=
x3dhttps%3A%2F%2Fiwantacve.org%2F\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG=
4UxTjWQl9H5lS2gzxSZAUmB68cg&#39;;return true;">https://iwantacve.org/</a> a=
sking you to accept the MITRE CVE Terms of Use (assuming you filled out the=
 CVE form and want one, we can&#39;t use the data until you accept the MITR=
E CVE Terms of Use).=20
<br>
<br>Simply quote the email and reply with &quot;I accept&quot; at the top i=
f you agree to the MITRE CVE Terms of Use and we will add a copy of the ema=
il to the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://=
github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms=
-Of-Use" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;https://www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2Fdistributedweak=
nessfiling%2FDWF-Legal-Acceptance%2Ftree%2Fmaster%2FTerms-Of-Use\x26sa\x3dD=
\x26sntz\x3d1\x26usg\x3dAFQjCNEpzWa3oX7TDn74VPMtzLQEHCRcfA&#39;;return true=
;" onclick=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%=
2Fgithub.com%2Fdistributedweaknessfiling%2FDWF-Legal-Acceptance%2Ftree%2Fma=
ster%2FTerms-Of-Use\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEpzWa3oX7TDn74V=
PMtzLQEHCRcfA&#39;;return true;">https://github.com/<wbr>distributedweaknes=
sfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a>
<br>
<br>The reason we use a complete copy of the email is that it provides an a=
rtifact showing that the email address accepted the Terms of Use, when they=
 were accepted and so on.=20
<br>
<br>If you did not submit a CVE request to the DWF you can safely ignore th=
is message, however we may resend it at some point in the future, if you do=
n&#39;t want any future emails simply reply with &quot;unsubscribe&quot; or=
 &quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your =
email address to the block list so we don&#39;t spam you with these, please=
 note that this will prevent you from being able to accept the MITRE CVE Te=
rms of Use via the DWF automatically in future (you&#39;ll have to manually=
 ask). But again, if you have no idea what a CVE is then you can ignore thi=
s/ask to be added to the block list with no problems.=20
<br>
<br>MITRE CVE Terms of Use
<br>
<br>LICENSE
<br>
<br>Submissions: For all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITR=
E) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exc=
lusive, no-charge, royalty-free, irrevocable copyright license to reproduce=
, prepare derivative works of, publicly display, publicly perform, sublicen=
se, and distribute such materials and derivative works. Unless required by =
applicable law or agreed to in writing, you provide such materials on an &q=
uot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either=
 express or implied, including, without limitation, any warranties or condi=
tions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICU=
LAR PURPOSE.
<br>
<br>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, pre=
pare derivative works of, publicly display, publicly perform, sublicense, a=
nd distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy yo=
u make for such purposes is authorized provided that you reproduce MITRE&#3=
9;s copyright designation and this license in any such copy.
<br>
<br>DISCLAIMERS
<br>
<br>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE A=
RE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZA=
TION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, =
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRAN=
TIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT TH=
E USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIE=
D WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
<br>
<br>A copy is available at <a href=3D"https://github.com/distributedweaknes=
sfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank" rel=3D"no=
follow" onmousedown=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhtt=
ps%3A%2F%2Fgithub.com%2Fdistributedweaknessfiling%2FDWF-Database%2Fblob%2Fm=
aster%2FTermsOfUse.md\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGZYq-JiWwvGeU=
erdQgyQzkmTicmw&#39;;return true;" onclick=3D"this.href=3D&#39;https://www.=
google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2Fdistributedweaknessfiling%2F=
DWF-Database%2Fblob%2Fmaster%2FTermsOfUse.md\x26sa\x3dD\x26sntz\x3d1\x26usg=
\x3dAFQjCNGZYq-JiWwvGeUerdQgyQzkmTicmw&#39;;return true;">https://github.co=
m/<wbr>distributedweaknessfiling/DWF-<wbr>Database/blob/master/<wbr>TermsOf=
Use.md</a>
<br>
<br>To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@se=
ifried.org" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;mailto:kurt@seifried.org&#39;;return true;" onclick=3D"this.href=3D&#39=
;mailto:kurt@seifried.org&#39;;return true;">kurt@seifried.org</a> manually=
 with your question/concerns/etc.=20
<br>
<br></blockquote></div>
------=_Part_8314_88723383.1499874244084--

------=_Part_8313_1235721971.1499874244084--
