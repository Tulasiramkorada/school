using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;


namespace School.DTOs;

public record StudentDTO
{
       [JsonPropertyName("student_id")]
       public long StudentId{get;set;}


        [JsonPropertyName("first_name")]
        public string FirstName{get;set;}


        [JsonPropertyName("last_name")]
        public string LastName{get;set;}


        [JsonPropertyName("email")]

        public string Email{get;set;}

         [JsonPropertyName("gender")]

        public string Gender{get;set;}

        [JsonPropertyName ("classroom_id")]

        public long ClassRoomId{get;set;}

        [JsonPropertyName("teachers_assigned")]

        public List<TeacherDTO> Teacher{get;set;}

        [JsonPropertyName("subjects_assigned")]

        public List<SubjectDTO> Subject{get;set;}

}

public record UserCreateDto
{


        [JsonPropertyName("first_name")]
        [Required]
        [MaxLength(50)]
        public string FirstName{get;set;}

        [JsonPropertyName("last_name")]
         [Required]
         [MaxLength(50)]
        public string LastName{get;set;}

        [JsonPropertyName("email")]
        [MaxLength(255)]
        public string Email{get;set;}


         [JsonPropertyName("gender")]
          [Required]
          [MaxLength(6)]

        public string Gender{get;set;}

        [JsonPropertyName("date_of_birth")]
         [Required]
        public DateTimeOffset DateOfBirth{get;set;}


        [JsonPropertyName("classroom_id")]
        [Required]


        public long ClassRoomId{get;set;}
}

public record UserUpdateDto
{

        [JsonPropertyName("last_name")]
         [MaxLength(50)]
        public string LastName{get;set;}

        

        [JsonPropertyName("email")]
        [MaxLength(255)]
        public string Email{get;set;}

}