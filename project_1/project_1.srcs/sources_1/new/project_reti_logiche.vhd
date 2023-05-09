library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity project_reti_logiche is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_w : in std_logic;
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0);
        o_done : out std_logic;
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_we : out std_logic;
        o_mem_en : out std_logic
    );
end project_reti_logiche;

architecture arch_project_reti_logiche of project_reti_logiche is

    -- Descrizione segnale rappresentante lo stato della FSM
    type STATE is (WAIT_START, GET_CHANNEL, GET_ADDR, ASK_MEM, WRITE_OUT, ENABLE_OUT);
    signal curr_state : STATE;
    
    -- Descrizione segnale attivazione uscita
    signal out_en : std_logic;
    
    --Descrizione segnali per gestione del calcolo e salvataggio del canale di uscita corrente
    signal we_ch : std_logic;
    signal reg_ch : unsigned(0 to 1);
    
    -- Descrizione segnali per gestione del calcolo e salvataggio dell'indirizzo di memoria
    signal we_addr : std_logic;
    signal clr_addr : std_logic;
    signal reg_addr : unsigned(0 to 15);
    
    -- Descrizione segnali per abilitare l'aggiornamento dei canali di uscita
    signal write : std_logic;
    signal we_z0 : std_logic;
    signal we_z1 : std_logic;
    signal we_z2 : std_logic;
    signal we_z3 : std_logic;
    
    -- Descrizione dei segnali dei 4 registri dei canali d'uscita
    signal reg_z0 : std_logic_vector(0 to 7);
    signal reg_z1 : std_logic_vector(0 to 7);
    signal reg_z2: std_logic_vector(0 to 7);
    signal reg_z3 : std_logic_vector(0 to 7);
    
begin
    -- Deserializer:
    -- Legge dalla seriale i_w aggiornando il valore del canale di uscita da utilizzare
    channel_calc : process(we_ch, i_w, i_clk, i_start)
    -- Processo sequenziale
    begin
        if i_clk'event and i_clk='1' and i_start='1' and we_ch='1' then
            reg_ch <= shift_left(reg_ch, 1);
            reg_ch(1) <= i_w;
        end if;
    end process;    
    
    -- Deserializer:
    -- Legge dalla seriale i_w aggiornando il valore salvato dell'indirizzo di memoria a cui accedere
    mem_addr_calc : process(we_addr, clr_addr, i_w, i_clk, i_start)
    -- Processo sequenziale
    begin
        if i_clk'event and i_clk='1' then
            if clr_addr='1' then
                reg_addr <= "0000000000000000";
            elsif we_addr = '1' and i_start='1' then
                reg_addr <= shift_left(reg_addr, 1);
                reg_addr(15) <= i_w;                
            end if;            
        end if;
    end process;
    
    -- Accede all'indirizzo di memoria contenuto nel registro reg_addr
    mem_access : process(i_clk, we_addr)
    begin
        if i_clk'event and i_clk='1' and we_addr='1' then
            o_mem_addr <= std_logic_vector(reg_addr);
        end if;
    end process;
    
    -- DMUX:
    -- Quando è richiesta la scrittura seleziona il canale sulla base di reg_ch
    ch_dmux : process(reg_ch, write) 
    -- Processo combinatorio
    begin
        we_z0 <= '0';
        we_z1 <= '0';
        we_z2 <= '0';
        we_z3 <= '0';
        case reg_ch is
            when "00" =>
                we_z0 <= write;
            when "01" =>
                we_z1 <= write;
            when "10" =>
                we_z2 <= write;
            when "11" =>
                we_z3 <= write;
            when others =>
        end case;
    end process;
    
    -- Registro di memoria per salvare l'ultimo valore utile sul canale
    reg_z0_calc : process(i_clk, i_rst, we_z0, i_mem_data)
    -- Processo sequenziale
    begin
        if i_rst = '1' then
            reg_z0 <= "00000000";
        elsif i_clk'event and i_clk='1' and we_z0='1' then
            reg_z0 <= i_mem_data;
        end if;
    end process;
    
     -- Registro di memoria per salvare l'ultimo valore utile sul canale
    reg_z1_calc : process(i_clk, i_rst, we_z1, i_mem_data)
    -- Processo sequenziale
    begin
        if i_rst = '1' then
            reg_z1 <= "00000000";
        elsif i_clk'event and i_clk='1' and we_z1='1' then
            reg_z1 <= i_mem_data;
        end if;
    end process;
    
    -- Registro di memoria per salvare l'ultimo valore utile sul canale
    reg_z2_calc : process(i_clk, i_rst, we_z2, i_mem_data)
    -- Processo sequenziale
    begin
        if i_rst = '1' then
            reg_z2 <= "00000000";
        elsif i_clk'event and i_clk='1' and we_z2='1' then
            reg_z2 <= i_mem_data;
        end if;
    end process;
    
    -- Registro di memoria per salvare l'ultimo valore utile sul canale
    reg_z3_calc : process(i_clk, i_rst, we_z3, i_mem_data)
    -- Processo sequenziale
    begin
        if i_rst = '1' then
            reg_z3 <= "00000000";
        elsif i_clk'event and i_clk='1' and we_z3='1' then
            reg_z3 <= i_mem_data;
        end if;
    end process;
    
    -- Calcolo delle uscite dei canali
    out_en_calc : process(out_en)
    begin
        o_done <= out_en;
    end process;
    
    o_z : process(out_en, reg_z0, reg_z1, reg_z2, reg_z3)
    -- Processo combinatorio
    begin
        if out_en = '0' then
            o_z0 <= "00000000";
            o_z1 <= "00000000";
            o_z2 <= "00000000";
            o_z3 <= "00000000";
        else
            o_z0 <= reg_z0;
            o_z1 <= reg_z1;
            o_z2 <= reg_z2;
            o_z3 <= reg_z3;
       end if;
    end process;
    
    -- Descrizione funzione di stato della FSM
    fsm : process(i_rst, i_clk)
    -- Processo sequenziale
    begin
        if i_rst='1' then
            curr_state <= WAIT_START;
        elsif i_clk'event and i_clk='1' then
            case curr_state is
                when WAIT_START =>
                    if i_start = '1' then
                        curr_state <= GET_CHANNEL;
                    end if;
                when GET_CHANNEL =>
                     curr_state <= GET_ADDR;           
                when GET_ADDR =>
                    if i_start = '0' then
                        curr_state <= ASK_MEM;
                    end if;
                when ASK_MEM =>
                     curr_state <= WRITE_OUT;
                when WRITE_OUT =>
                    curr_state <= ENABLE_OUT;
                when ENABLE_OUT =>
                    curr_state <= WAIT_START;
            end case;
        end if;
    end process;
    
    -- Descrizione funzione di uscita della FSM
    fsm_lambda : process(curr_state)
    -- Processo combinatorio
    begin
        -- Caso base
        we_ch <= '0';
        we_addr <= '0';
        clr_addr <= '1';
        write <= '0';
        o_mem_we <= '0';
        o_mem_en <= '0';
        out_en <= '0';
        
        case curr_state is
            when WAIT_START =>
                we_ch <= '1';
            when GET_CHANNEL =>
                we_ch <='1';
            when GET_ADDR =>
                we_ch <='0';
                we_addr <= '1';
                clr_addr <= '0';
            when ASK_MEM=>
                we_addr <= '0';
                o_mem_en <= '1';
                clr_addr <= '0';
            when WRITE_OUT =>
                we_addr <= '0';
                o_mem_en <= '1';
                write <= '1';
            when ENABLE_OUT =>
                write <= '0';
                out_en<='1';
        end case;
    end process;
end arch_project_reti_logiche;
