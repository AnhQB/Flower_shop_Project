using System;
using System.Collections.Generic;

#nullable disable

namespace ShopFlower.Models
{
    public partial class Staff
    {
        public Staff()
        {
            Bills = new HashSet<Bill>();
            InverseManager = new HashSet<Staff>();
        }

        public int StaffId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string StoreId { get; set; }
        public int? ManagerId { get; set; }

        public virtual Staff Manager { get; set; }
        public virtual Store Store { get; set; }
        public virtual ICollection<Bill> Bills { get; set; }
        public virtual ICollection<Staff> InverseManager { get; set; }
    }
}
