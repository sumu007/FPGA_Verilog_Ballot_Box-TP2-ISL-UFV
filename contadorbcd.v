module contadorBCD(clock, valor, overflow, reset);
    output[3:0] valor;
    output overflow;
    reg[3:0] valor;
    reg overflow;
    input clock;
    input reset;

    always @(posedge clock or posedge reset) begin
        if(reset) begin
            valor = 0;
				overflow = 0;
        end else begin
			  valor = valor + 1;

			  if(valor==10) begin
					valor = 0;
					overflow = 1;
					overflow = 0;
			  end
		  end

    end

endmodule
