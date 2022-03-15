using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace School.DTOs;

public record ClassDTO
{
       [JsonPropertyName("classroom_id")]
       public long SubjectId{get;set;}


        [JsonPropertyName("capacity")]
        public string Capacity{get;set;}

        [JsonPropertyName("Facilities")]
        

        public string Facilities{get;set;}

       

}