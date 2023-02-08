    public class License
    {
        public int Id { get; set; }
        public State LicenseState { get; set; }
        public string LicenseNumber { get; set; }
        public DateTime DateAdmitted { get; set; }
        public int CreatedBy { get; set; }
        public User User { get; set; }
        public DateTime DateCreated { get; set; }
        public bool IsActive { get; set; }

    }
