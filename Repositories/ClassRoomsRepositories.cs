
using Dapper;
using School.Models;
using School.Utilities;
using System.Data;



namespace School.Repositories;


public interface IClassRepository
{
    

    

    Task<Classroom> GetById(long StudentId);

    Task<List<Classroom>> GetList();

   

}


public class ClassRepository : BaseRepository, IClassRepository
{

    public ClassRepository(IConfiguration config) : base(config)

    {

    }

    
    public async Task<Classroom> GetById(long ClassroomId)
    {
        var query = $@"SELECT * FROM ""{TableNames.class_room}""
        WHERE classroom_id = @ClassroomId";

        using (var con = NewConnection)
            return await con.QuerySingleOrDefaultAsync<Classroom>(query,
            new
            {
                @ClassroomId= ClassroomId
            });
    }

    public async Task<List<Classroom>> GetList()
    {
        var query = $@"SELECT*FROM ""{TableNames.class_room}""";
        List<Classroom> res;

        using (var con = NewConnection)
        {
            res = (await con.QueryAsync<Classroom>(query)).AsList();
        }

        return res;
    }

   
    }
