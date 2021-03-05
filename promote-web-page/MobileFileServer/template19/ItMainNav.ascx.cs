using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentreStack.Controls
{
    public partial class ItMainNav : EnglishUserControl
    {

    }
    public partial class EnglishUserControl : System.Web.UI.UserControl
    {
        public string CurrentLang
        {
            get;
            set;
        }

        public string EnglishURL
        {
            get
            {
                return englishUrl;
            }
        }

        public string FrenchURL
        {
            get
            {
                if (localizedUrl == null)
                {
                    return null;
                }
                return localizedUrl + "?l=fr";
            }
        }

        public string GermanURL
        {
            get
            {
                if (localizedUrl == null)
                {
                    return null;
                }
                return localizedUrl + "?l=de";
            }
        }

        public string SpanishURL
        {
            get
            {
                if (localizedUrl == null)
                {
                    return null;
                }
                return localizedUrl + "?l=es";
            }

        }

        public string ItalianURL
        {
            get
            {
                if (localizedUrl == null)
                {
                    return null;
                }
                return localizedUrl + "?l=it";
            }

        }

        public string ChineseURL
        {
            get
            {
                if (localizedUrl == null)
                {
                    return null;
                }
                return localizedUrl + "?l=zh-CN";
            }
        }

        //private englishU
        private string localizedUrl;
        private string englishUrl;
        protected void Page_Load(object sender, EventArgs e)
        {
            CurrentLang = "us";

            string currentLocale = System.Threading.Thread.CurrentThread.CurrentUICulture.Name;
            if (currentLocale == "fr" || currentLocale.Contains("fr-"))
            {
                CurrentLang = "fr";
            }
            if (currentLocale == "de" || currentLocale.Contains("de-"))
            {
                CurrentLang = "de";
            }
            if (currentLocale == "it" || currentLocale.Contains("it-"))
            {
                CurrentLang = "it";
            }
            if (currentLocale == "es" || currentLocale.Contains("es-"))
            {
                CurrentLang = "es";
            }
            if (currentLocale == "zh" || currentLocale.Contains("zh-"))
            {
                CurrentLang = "cn";
            }

            englishUrl = this.Request.Url.AbsolutePath.ToLower();
            if (englishUrl.EndsWith("/default.aspx"))
            {
                englishUrl = englishUrl.Replace("/default.aspx", "/");
            }
            localizedUrl = "/";

            if (!englishUrl.Contains("/lang/"))
            {
                if (englishUrl == "/")
                {
                    localizedUrl = "/lang/";
                    return;
                }
                // so it is english url. find its localized url
                if (englishUrl.Contains("/secure-file-sharing"))
                {
                    localizedUrl = "/lang/secure-file-sharing";
                    return;
                }
                if (englishUrl.Contains("/cloud-file-server"))
                {
                    localizedUrl = "/lang/cloud-file-server";
                    return;
                }
                if (englishUrl.Contains("/file-share-sync"))
                {
                    localizedUrl = "/lang/file-share-sync";
                    return;
                }
                if (englishUrl.Contains("/self-hosted-dropbox"))
                {
                    localizedUrl = "/lang/self-hosted-dropbox";
                    return;
                }
                if (englishUrl.Contains("/cloud-backup"))
                {
                    localizedUrl = "/lang/cloud-backup";
                    return;
                }
                // use-cases
                if (englishUrl.Contains("/use-case/local-backup-server"))
                {
                    localizedUrl = "/lang/local-backup-server";
                    return;

                }
                if (englishUrl.Contains("/use-case/migrate-server-to-cloud"))
                {
                    localizedUrl = "/lang/migrate-server-to-cloud";
                    return;
                }
                if (englishUrl.Contains("/use-case/mobile-access"))
                {
                    localizedUrl = "/lang/mobile-access";
                    return;
                }
                if (englishUrl.Contains("/use-case/multi-site-sync"))
                {
                    localizedUrl = "/lang/multi-site-sync";
                    return;
                }
                if (englishUrl.Contains("/use-case/remote-access"))
                {
                    localizedUrl = "/lang/remote-access";
                    return;
                }
                if (englishUrl.Contains("/use-case/secure-data-transfer"))
                {
                    localizedUrl = "/lang/secure-data-transfer";
                    return;
                }
                if (englishUrl.Contains("/use-case/self-hosted-backup"))
                {
                    localizedUrl = "/lang/self-hosted-backup";
                    return;
                }
                if (englishUrl.Contains("/use-case/transfer-large-file"))
                {
                    localizedUrl = "/lang/transfer-large-file";
                    return;
                }
                if (englishUrl.Contains("/use-case/white-label-file-sharing"))
                {
                    localizedUrl = "/lang/white-label-file-sharing";
                    return;
                }


                localizedUrl = null;

            }


        }
    }
}