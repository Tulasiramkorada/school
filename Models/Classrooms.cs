using School.DTOs;

namespace School.Models;



    public record Classroom
    {

        public long ClassroomId{get;set;}

        public string Capacity{get;set;}

        public string Facilities{get;set;}

         public  ClassDTO asDto{
            get{
                return new ClassDTO
                {
                    SubjectId = ClassroomId,
                    Capacity = Capacity,
                    Facilities = Facilities,
                    
                };
            }
        }

        

    }