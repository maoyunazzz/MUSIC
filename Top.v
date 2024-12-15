module top(
    input clkk,           // 系统时钟
    input rstn,          // 系统复位信号，低电平有效
    output pwm     // 音频输出信号
);

// 你的音频生成模块实例
MUSIC shis_is_true_music (
    .clk(clkk),             // 输入时钟
    .start(1'b1),
    .rstn(rstn),           // 输入复位
    .speedup(2'b00),     // 控制音符速度
    .B(pwm)  // 输出音频信号
);

endmodule
