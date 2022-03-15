using School.Models;
using Dapper;
using System.Data;
using School.Utilities;
using School.DTOs;

namespace School.Repositories;


public interface ISubjectRepository
{




    Task<Subject> GetById(long StudentId);

    Task<List<Subject>> GetList();

    Task<List<SubjectDTO>> GetListSubjects(long Id);

}


public class SubjectRepository : BaseRepository, ISubjectRepository
{

    public SubjectRepository(IConfiguration config) : base(config)

    {

    }


    public async Task<Subject> GetById(long SubjectId)
    {
        var query = $@"SELECT * FROM ""{TableNames.subject}""
        WHERE subject_id = @SubjectId";

        using (var con = NewConnection)
            return await con.QuerySingleOrDefaultAsync<Subject>(query,
            new
            {
                SubjectId = SubjectId
            });
    }

    public async Task<List<Subject>> GetList()
    {
        var query = $@"SELECT * FROM ""{TableNames.subject}""";
        List<Subject> res;

        using (var con = NewConnection)
        {
            res = (await con.QueryAsync<Subject>(query)).AsList();
        }

        return res;
    }



    public async Task<List<SubjectDTO>> GetListSubjects(long Id)
    {
        var query = $@"SELECT s.* FROM {TableNames.student_subject} ss LEFT JOIN {TableNames.subject} s ON s.subject_id = ss.subject_id
        
        WHERE ss.student_id = @Id";

        using (var con = NewConnection)

        {
            return (await con.QueryAsync<SubjectDTO>(query, new { Id })).AsList();
        }
    }
}
