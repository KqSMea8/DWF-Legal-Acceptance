Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp799223uad;
        Thu, 20 Apr 2017 10:47:13 -0700 (PDT)
X-Received: by 10.223.169.205 with SMTP id b71mr8803457wrd.80.1492710433421;
        Thu, 20 Apr 2017 10:47:13 -0700 (PDT)
Return-Path: <john@betterment.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by mx.google.com with ESMTPS id b62si15141881wme.116.2017.04.20.10.47.13
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Apr 2017 10:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of john@betterment.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@betterment.com;
       spf=pass (google.com: domain of john@betterment.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=john@betterment.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=betterment.com
Received: by mail-wm0-x234.google.com with SMTP id r190so54853091wme.1
        for <kurt@seifried.org>; Thu, 20 Apr 2017 10:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=betterment.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ClDMdXHrXeAAKgctw2A2M7nVNq3IqbhoTUQOfV8Sun4=;
        b=i/KYbUgXTIHki10VmzP7pvgp1Bq2j97/n4xgL3XHWjKOOyR4XEzlss6LRb5rlOJvG1
         CKWCFfSIqe/tqvw9p7JqOwOCCiEBJsPK5IJFrqDLcKk9s/o4NtM7gMSyCBkR/23F5rcM
         HioBFikydR4xJtPy05BDSTGDUwfp30UCg651U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ClDMdXHrXeAAKgctw2A2M7nVNq3IqbhoTUQOfV8Sun4=;
        b=dF5v7hd2YMjnLsvgw7Pf6dqOUR0cY5Mhl35R9P7HxBaIUoS8gdBJWM0QSVP5RahU4I
         uzUJ5HLPsQr152CI8JWQkuLTpf6/YeRhLacE3MbwjH48AjfZXm6EekSwf4Lrr1QdQX5x
         LqvTs4dKekamEvPD7jAYOljf/DZYnhtPIO1fRkYRcqnoVuZMbzCt+NOClYO2zqhLq+EG
         taHaI8mAXSFMc0+dqZIzKEc4MQg+5xjsGa2pO4rOTtL5m/GTyO9s059fzugm93rhGeD5
         JSWSYmCsZ2+H0WXqgGtbSNCBgr8R6OeI9agtukb0Izv1Ukgj7Dv0Imtsk93M810n/ll+
         kAYg==
X-Gm-Message-State: AN3rC/69pkVMdqvFqZzB/nMOcWjvVbQEvzSTl81CyrKKNqQwO0NaBiMB
	VeeHPrlcTrwx17mkysGksE84xS5W5lRUwe4=
X-Received: by 10.28.154.85 with SMTP id c82mr4450341wme.100.1492710432655;
 Thu, 20 Apr 2017 10:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20170420154335.58112.94548@bigbox.local>
In-Reply-To: <20170420154335.58112.94548@bigbox.local>
From: John Mileham <john@betterment.com>
Date: Thu, 20 Apr 2017 17:47:01 +0000
Message-ID: <CAJKBizCfc0k_KY_qOLHbON6MFof6x01kJCuLsRrmcoi0u3TmUg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for john@betterment.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114b1dc617807c054d9cbb2f

--001a114b1dc617807c054d9cbb2f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Thanks Kurt!

On Thu, Apr 20, 2017 at 11:43 AM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>
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
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a114b1dc617807c054d9cbb2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>I accept</div><div><br></div><div>Thanks Kurt!</div><div><br><div clas=
s=3D"gmail_quote"><div>On Thu, Apr 20, 2017 at 11:43 AM &lt;<a href=3D"mail=
to:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">This is a confirmation email sent from CVE request form=
 at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank"=
>https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use=
 (assuming you filled out the CVE form and want one, we can&#39;t use the d=
ata until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/tree/master/Terms-Of-Use</a><br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div>

--001a114b1dc617807c054d9cbb2f--
