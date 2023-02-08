 public class LicenseAddRequest
    {
        [Required]
        public int LicenseState { get; set; }

        [Required]
        public string LicenseNumber { get; set; }

        public DateTime? DateAdmitted { get; set; }

        [Required]
        public DateTime DateCreated { get; set; }

        [Required]
        public bool IsActive { get; set; }
    }
