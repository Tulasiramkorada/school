using Microsoft.AspNetCore.Mvc;
using School.DTOs;
using School.Repositories;

namespace School.Controllers;

[ApiController]
[Route("[controller]")]
public class ClassroomController : ControllerBase
{

    private readonly IClassRepository _classroom;
    private readonly ILogger<ClassroomController> _logger;



    public ClassroomController(ILogger<ClassroomController> logger, IClassRepository classroom)
    {
        _logger = logger;

        _classroom = classroom;
    }

    [HttpGet]

    public async Task<ActionResult<List<ClassDTO>>> GetAllusers()
    {
        var usersList = await _classroom.GetList();

        var dtoList = usersList.Select(x => x.asDto);

        return Ok(dtoList);
    }

    [HttpGet("{classroom_id}")]

    public async Task<ActionResult<StudentDTO>> GetUserById([FromRoute] long classroom_id)
    {
        var user = await _classroom.GetById(classroom_id);


        return Ok(user.asDto);


    }



}