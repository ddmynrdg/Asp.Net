using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TreeView
{
    public partial class KodEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TreeView1.Nodes.Add(new TreeNode("Yetkililer"));
            TreeView1.Nodes[0].ChildNodes.Add(new TreeNode("Kullanıcı İşlemleri"));
            TreeView1.Nodes[0].ChildNodes[0].ChildNodes.Add(new TreeNode("Kullanıcı Düzenle"));
            TreeView1.Nodes[0].ChildNodes[0].ChildNodes.Add(new TreeNode("Kullanıcı Sil"));
            TreeView1.Nodes[0].ChildNodes.Add(new TreeNode("Sipariş İşlemleri"));
            TreeView1.Nodes[0].ChildNodes[1].ChildNodes.Add(new TreeNode("Sipariş Onayla"));
            TreeView1.Nodes[0].ChildNodes[1].ChildNodes.Add(new TreeNode("Siparişler"));
            TreeView1.Nodes[0].ChildNodes.Add(new TreeNode("Ürün İşlemleri"));
            TreeView1.Nodes[0].ChildNodes[2].ChildNodes.Add(new TreeNode("Ürün Ekle"));
            TreeView1.Nodes[0].ChildNodes[2].ChildNodes.Add(new TreeNode("Ürünler"));
        }
    }
}