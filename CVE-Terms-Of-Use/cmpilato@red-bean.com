Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp850956uaa;
        Thu, 6 Apr 2017 13:26:54 -0700 (PDT)
X-Received: by 10.36.218.5 with SMTP id z5mr28194508itg.79.1491510414112;
        Thu, 06 Apr 2017 13:26:54 -0700 (PDT)
Return-Path: <cmpilato@gmail.com>
Received: from mail-it0-x234.google.com (mail-it0-x234.google.com. [2607:f8b0:4001:c0b::234])
        by mx.google.com with ESMTPS id h15si2954423ita.15.2017.04.06.13.26.54
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:26:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmpilato@gmail.com designates 2607:f8b0:4001:c0b::234 as permitted sender) client-ip=2607:f8b0:4001:c0b::234;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of cmpilato@gmail.com designates 2607:f8b0:4001:c0b::234 as permitted sender) smtp.mailfrom=cmpilato@gmail.com
Received: by mail-it0-x234.google.com with SMTP id a140so33065839ita.0
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=wqmqXPS9bo/mitaC52dZGAxJjRnQeoFTpZSv3Gi6ZP4=;
        b=NHDVZcmzxWkmUx2sS3kooNYNs8nSTBElNxK61TKVxP2PrRXAzsPZuZw17b1B4B9v2q
         JWVB3qbC7EdxTERG2UQ3D8SZEmRRVwwp2/Y0neqEltohgMOj6wyFKCIIUGaF3rWLt0L+
         ZBsKFNfSq7i8xxwy0UdkW0zrt3n4wxc/mGJfHw+CGxfM81dedCXnG9JLdROo5LfE5vLo
         hxxTxKiAXIyeC6vwL1kITt0eVGI4KAvZLcriVanHTzBNgrSBDaVNN/lV9IOnVYsG3qOK
         HWgrEyYp7Er4QjV9pP0GrEkeqt5NNakSn9Yi5GUhscDVwqOT7S1D1PuVv/9YTnZUui9z
         Ipmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=wqmqXPS9bo/mitaC52dZGAxJjRnQeoFTpZSv3Gi6ZP4=;
        b=lS6UHZpOWJh8JseCJdVf/ICDrNen7o6lFtjUH60QtDtrD1FBYrGKGGmHWmfgQbfQ6N
         sqouePtpvto5Ri3BEnbo26Qjpy/VnBwGMDWXmG7mW50kr63OBd2Szt3yLWamyYYH7FyC
         7C/4ayfsGLVjks/iUIW6X3tc+Hnkxq/0IeZVDQ99vkYL1aQawSGECYljzH7KtStMe7Pp
         C0eoSZGHljEOLOj7HQbyu6X+Px6+sKVwlFffKoBvGAN+r+ckcSpJq996XQw9tjpvwjuv
         I0ii1oGXdd8zWZje6SNJ8xBuVTbiDPf5C7m32gw8JYBGCNg0/OPAoAdw67PtdGfDEJUQ
         rFlg==
X-Gm-Message-State: AFeK/H3ECkuPssHyKFJuoOv0KUvanwmSkUczfffc7wrI1Fv2usQq1Yh5OiNWXdYMvNkTkPevaY3OqkM0V61nIw==
X-Received: by 10.36.188.195 with SMTP id n186mr13883250ite.64.1491510413697;
 Thu, 06 Apr 2017 13:26:53 -0700 (PDT)
MIME-Version: 1.0
Sender: cmpilato@gmail.com
Received: by 10.107.56.135 with HTTP; Thu, 6 Apr 2017 13:26:52 -0700 (PDT)
Received: by 10.107.56.135 with HTTP; Thu, 6 Apr 2017 13:26:52 -0700 (PDT)
In-Reply-To: <CABUQHU4fkQGCxGm8CNLZQS3D0iz5hYE=59EHMm2bUvGr7nEg2g@mail.gmail.com>
References: <20170406201054.4090.79557@shiny-2.local> <CABUQHU4fkQGCxGm8CNLZQS3D0iz5hYE=59EHMm2bUvGr7nEg2g@mail.gmail.com>
From: "C. Michael Pilato" <cmpilato@red-bean.com>
Date: Thu, 6 Apr 2017 16:26:52 -0400
X-Google-Sender-Auth: DJBRATSr2ReFD1QQxIGWpNTBW38
Message-ID: <CABUQHU4FPDTU7sybfxRgwe+L211poOeTQ+jU6ajfQX3TSUSGuA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for cmpilato@red-bean.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=94eb2c11496e6327d9054c8554a3

--94eb2c11496e6327d9054c8554a3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Apr 6, 2017 4:11 PM, <kurt@seifried.org> wrote:

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms of
Use acceptance data at https://github.com/distributedweaknessfiling/DWF-
Legal-Acceptance/tree/master/Terms-Of-Use

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

--94eb2c11496e6327d9054c8554a3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept<br><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Apr 6, 2017 4:11 PM,  &lt;<a href=3D"mailto:kurt@seifr=
ied.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquo=
te class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">This is a confirmation email sent from CVE request form at =
<a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (as=
suming you filled out the CVE form and want one, we can&#39;t use the data =
until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br>
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
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div></div>

--94eb2c11496e6327d9054c8554a3--
