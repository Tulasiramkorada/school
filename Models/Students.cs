using School.DTOs;

namespace School.Models;

public enum Gender
{
    Male = 1,

    Female = 2,
}
public record Student
{

    public long StudentId { get; set; }
    public string FirstName { get; set; }

    public string LastName { get; set; }

    public DateTimeOffset DateOfBirth { get; set; }

    public long ClassRoomId { get; set; }

    public string Email { get; set; }

    public Gender Gender { get; set; }

    public StudentDTO asDto
    {
        get
        {
            return new StudentDTO
            {
                StudentId = StudentId,
                FirstName = FirstName,
                LastName = LastName,
                ClassRoomId = ClassRoomId,
                Email = Email,
                Gender = Gender.ToString().ToLower(),
            };
        }
    }
}


