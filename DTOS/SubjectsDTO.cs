using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;


namespace School.DTOs;

public record SubjectDTO
{
       [JsonPropertyName("subject_id")]
       public long SubjectId{get;set;}


        [JsonPropertyName("subject_name")]
        public string SubjectName{get;set;}

        [JsonPropertyName("who Teaches")]
        

        public List<TeacherDTO> Teachers{get;set;}

       

}

