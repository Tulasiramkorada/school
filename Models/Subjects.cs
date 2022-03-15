using School.DTOs;

namespace School.Models;


public record Subject
{

    public long SubjectId { get; set; }

    public string SubjectName { get; set; }

    public SubjectDTO asDto
    {
        get
        {
            return new SubjectDTO
            {
                SubjectId = SubjectId,
                SubjectName = SubjectName,

            };
        }
    }



}