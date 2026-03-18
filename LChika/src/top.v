/*------------------------------------------------------------------------------
    時間の計算
    入力クロック：27MHz
    1  秒のカウント値：1   / (1/27MHz) = 27,000,000 - 1 = 19b_fcbf
    0.5秒のカウント値：0.5 / (1/27MHz) = 13,500,000 - 1 =  cd_fe5f
*------------------------------------------------------------------------------*/
`define COUNTER_DEFAULT 24'hcd_fe5f //0.5sec

/*------------------------------------------------------------------------------

*------------------------------------------------------------------------------*/
module top(
    input sys_clk,
    input sys_rst_n,
    input sys_sw,
    output [5:0] sys_led
);

reg [23:0]counter;  //LED更新周期カウンタ
reg [5:0]led;

/*------------------------------------------------------------------------------
    Lチカ更新カウンタ
*------------------------------------------------------------------------------*/
always  @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        counter <= `COUNTER_DEFAULT;
    end
    else begin
        if (counter > 24'h0)
            counter <= counter - 1'b1;
        else
            counter <= `COUNTER_DEFAULT;
    end
end

/*------------------------------------------------------------------------------
    LED点灯状態の変更
    0:点灯
    1:消灯
*------------------------------------------------------------------------------*/
always  @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        led <= 6'b11_1110;              //初期の点灯状態
  end
    else begin
        if (counter == 24'h0)           //更新タイミングが来た
            led <= {led[4:0], led[5]};  //1bit左シフト
        else
            led <= led; //更新しない
    end
end


assign sys_led = led;

endmodule