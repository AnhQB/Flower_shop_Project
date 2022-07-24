using System;
using System.Collections.Generic;

#nullable disable

namespace ShopFlower.Models
{
    public partial class Customer
    {
        public Customer()
        {
            Bills = new HashSet<Bill>();
        }

        public int CusId { get; set; }
        public string CusName { get; set; }
        public string Email { get; set; }
        public string CusPhone { get; set; }
        public string CusAddress { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public virtual ICollection<Bill> Bills { get; set; }
    }
}
