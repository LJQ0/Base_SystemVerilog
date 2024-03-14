/***********************************************
#
#    Filename: fsdb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-09 09:38:28
#    Last Modified: 2024-03-09 09:38:28
#
***********************************************/
module fsdb();

`ifdef FSDB
    initial begin
        $fsdbDumpfile("tb.fsdb");
        $fsdbDumpvars("+mda");
    end 
`endif
endmodule
