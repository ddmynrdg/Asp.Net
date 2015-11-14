using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace Jquery
{
    [ServiceContract(Namespace = "")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class KullaniciServis
    {
        [OperationContract]
        [WebGet (ResponseFormat = WebMessageFormat.Json)]
        public string IsimGetir()
        {
            return "Didem Yanardağ";
        }
    }
}
