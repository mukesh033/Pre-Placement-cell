$(document).ready(function () {

    //show question code start
    $("#show").click(function()
    {
        var qtype = $("#qtype").val();
        $.ajax({
            type: 'get',
            url: 'fetchquestion.aspx',
            data: { questype: qtype },
            success: function (res)
            {
                $("#questable").html(res);
            }

        });

    });

    //show question code end


    //result submit button click start
    $("#ques_submit").click(function () {
        var result = 0;
        var atmptq = 0;
        var noatmptq = 0;
        var totalques = 20;
        var questionid = "";
        var answerattempt = "";
        var nocorrect = 0;
        var noincorrect = 0;
        for(var i=1;i<=totalques;i++)
        {
        
            var ans = $("#ans" + i).val();
            var quesid= $("#quesid" + i).val();
            if ($("#q1" + i).is(":checked"))
            {
                if (($("#q1" + i).val() == ans)) {
                    result = result + 4;
                    nocorrect++;
                }
                else {
                    result = result - 1;
                }
                atmptq++;
               
                answerattempt = answerattempt + ",Option1";
            }
            else  if ($("#q2" + i).is(":checked"))
            {
                if (($("#q2" + i).val() == ans)) {
                    result = result + 4;
                    nocorrect++;
                }
                else {
                    result = result - 1;
                }
                atmptq++;
                
                answerattempt = answerattempt + ",Option2";
            }
            
            else if ($("#q3" + i).is(":checked")) {
                if (($("#q3" + i).val() == ans)) {
                    result = result + 4;
                    nocorrect++;
                }
                else {
                    result = result - 1;
                }
                atmptq++;
                
                answerattempt = answerattempt + ",Option3";

            }
            else if ($("#q4" + i).is(":checked")) {
                if (($("#q4" + i).val() == ans)) {
                    result = result + 4;
                    nocorrect++;
                }
                else {
                    result = result - 1;
                }
                atmptq++;
               
                answerattempt = answerattempt + ",Option4";
            }
            else {
                answerattempt = answerattempt + ",none";
               
            }
            questionid = questionid + "," + quesid;
        }
        noatmptq = parseInt(totalques) - parseInt(atmptq);
        questionid = questionid.trim(',');
        answerattempt = answerattempt.trim(',');
        var summary = totalques + "$" + atmptq + "$" + noatmptq;
        noincorrect =(totalques - noatmptq)-nocorrect ;
        
        $.ajax({
            type: 'get',
            url: 'saveresult.aspx',
            data: {totalques:totalques,atmptq:atmptq,noatmptq:noatmptq,totalresult:result,questionid:questionid,answerattempt:answerattempt,nocorrect:nocorrect,noincorrect:noincorrect},
            success: function (res) {
                alert("Timeout Exam Completed!");
                window.location = "result.aspx?summary="+summary;
            }

        });


    });

    //result submit button click end
   

});
$('input.nextbtn').live('click', function () {
    
    var dataid = $(this).attr('data-id');
    var nextdataid = parseInt(dataid) + 1;
    if(dataid==20)
    {
        nextdataid = 1;
    }
    
    $("#quesdiv" + dataid).hide();
    $("#quesdiv" + nextdataid).show();

});

$('input.qbtm').live('click', function () {
    var v = $(this).val();
    $(".quesdiv").hide();
    $("#quesdiv"+v).show();
    
});
function startexam()
{
   
    var userid = $("#userid").val();
    
    $.ajax({
        type: 'get',
        url: 'checkexam.aspx',
        data: {userid:userid},
        success: function (res) {
            if (res == "ok") {
                alert("Already Given Exam!");
            }
            else if (res == "no") {
                showexam();
            }
            else {
                alert("error");
            }
        }

    });
   
}
function showexam()
{
    window.open("exam.aspx", "exam", "fullscreen=yes,menubar=no,resizable=no,titlebar=no,addressbar=no,scrollbar=no,toolbar=no,top=1,left=1");
}
function terminate() {
    window.close();
}