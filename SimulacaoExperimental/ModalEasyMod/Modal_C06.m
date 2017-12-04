clc
close all
clear all

% Código principal para a simulação experimental do TCC 2
barra = waitbar(0,'Aguarde...');
x = input('\n Quantas amostras serão utilizadas? \n'); % quantidade de amostras
pontoss=input('\n Quantos pontos serão utilizados para calcular a frequência da placa? \n'); % Pontos da placa selecionados

while pontoss>136 || pontoss <0
    pontoss=input('\n A quantidade deve ser positiva e inferior a 137 \n');
end

pontos_calculo = 136-pontoss;

for i =1:x
    clear DELTA_FREQ   H2           N            Sff          col          fig          infoFRF      meas         t  ...
... 
EnsaioTempo  J            Nb         freq         infoMODE     n            tau   ...
...
F            L         coupled      fs           j            ncol       ...
...
MAC          Saa          W            df           gamma        jj           nlin    ...
    ...
FRF          Saf          a            dt            kk...
...
H            Sfa        f            ii 

load FRF_C01.mat
storedStructure = load('FRF_C01.mat'); % Pegando o FRF_C01.mat do experimento

if pontos_calculo > 0
for kw = 1:pontos_calculo % Passo para zerar os 136-N pontos da placa
    EscolherC = round(rand*17); % Selecionando aleatoriamente as colunas
    EscolherL = round(rand*8); % Selecionando aleatoriamente as linhas
    while EscolherC == 0
        EscolherC = round(rand*17);
    end
    if EscolherC == 1 %% Se for na coluna A
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HA1C4 = zeros(1,length(storedStructure.FRF.HA1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HA2C4 = zeros(1,length(storedStructure.FRF.HA2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HA3C4 = zeros(1,length(storedStructure.FRF.HA3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HA4C4 = zeros(1,length(storedStructure.FRF.HA4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HA5C4 = zeros(1,length(storedStructure.FRF.HA5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HA6C4 = zeros(1,length(storedStructure.FRF.HA6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HA7C4 = zeros(1,length(storedStructure.FRF.HA7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HA8C4 = zeros(1,length(storedStructure.FRF.HA8C4));
        end
    elseif EscolherC == 2 %% Se for na coluna B
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HB1C4 = zeros(1,length(storedStructure.FRF.HB1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HB2C4 = zeros(1,length(storedStructure.FRF.HB2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HB3C4 = zeros(1,length(storedStructure.FRF.HB3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HB4C4 = zeros(1,length(storedStructure.FRF.HB4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HB5C4 = zeros(1,length(storedStructure.FRF.HB5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HB6C4 = zeros(1,length(storedStructure.FRF.HB6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HB7C4 = zeros(1,length(storedStructure.FRF.HB7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HB8C4 = zeros(1,length(storedStructure.FRF.HB8C4));
        end
    elseif EscolherC == 3 %% Se for na coluna C
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HC1C4 = zeros(1,length(storedStructure.FRF.HC1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HC2C4 = zeros(1,length(storedStructure.FRF.HC2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HC4C4 = zeros(1,length(storedStructure.FRF.HC4C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HC4C4 = zeros(1,length(storedStructure.FRF.HC4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HC5C4 = zeros(1,length(storedStructure.FRF.HC5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HC6C4 = zeros(1,length(storedStructure.FRF.HC6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HC7C4 = zeros(1,length(storedStructure.FRF.HC7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HC8C4 = zeros(1,length(storedStructure.FRF.HC8C4));
        end
    elseif EscolherC == 4 %% Se for na coluna D
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HD1C4 = zeros(1,length(storedStructure.FRF.HD1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HD2C4 = zeros(1,length(storedStructure.FRF.HD2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HD3C4 = zeros(1,length(storedStructure.FRF.HD3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HD4C4 = zeros(1,length(storedStructure.FRF.HD4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HD5C4 = zeros(1,length(storedStructure.FRF.HD5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HD6C4 = zeros(1,length(storedStructure.FRF.HD6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HD7C4 = zeros(1,length(storedStructure.FRF.HD7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HD8C4 = zeros(1,length(storedStructure.FRF.HD8C4));
        end
    elseif EscolherC == 5 %% Se for na coluna E
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HE1C4 = zeros(1,length(storedStructure.FRF.HE1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HE2C4 = zeros(1,length(storedStructure.FRF.HE2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HE3C4 = zeros(1,length(storedStructure.FRF.HE3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HE4C4 = zeros(1,length(storedStructure.FRF.HE4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HE5C4 = zeros(1,length(storedStructure.FRF.HE5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HE6C4 = zeros(1,length(storedStructure.FRF.HE6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HE7C4 = zeros(1,length(storedStructure.FRF.HE7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HE8C4 = zeros(1,length(storedStructure.FRF.HE8C4));
        end
    elseif EscolherC == 6 %% Se for na coluna F
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HF1C4 = zeros(1,length(storedStructure.FRF.HF1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HF2C4 = zeros(1,length(storedStructure.FRF.HF2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HF3C4 = zeros(1,length(storedStructure.FRF.HF3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HF4C4 = zeros(1,length(storedStructure.FRF.HF4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HF5C4 = zeros(1,length(storedStructure.FRF.HF5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HF6C4 = zeros(1,length(storedStructure.FRF.HF6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HF7C4 = zeros(1,length(storedStructure.FRF.HF7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HF8C4 = zeros(1,length(storedStructure.FRF.HF8C4));
        end
    elseif EscolherC == 7 %% Se for na coluna G
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HG1C4 = zeros(1,length(storedStructure.FRF.HG1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HG2C4 = zeros(1,length(storedStructure.FRF.HG2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HG3C4 = zeros(1,length(storedStructure.FRF.HG3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HG4C4 = zeros(1,length(storedStructure.FRF.HG4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HG5C4 = zeros(1,length(storedStructure.FRF.HG5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HG6C4 = zeros(1,length(storedStructure.FRF.HG6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HG7C4 = zeros(1,length(storedStructure.FRF.HG7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HG8C4 = zeros(1,length(storedStructure.FRF.HG8C4));
        end
    elseif EscolherC == 8 %% Se for na coluna H
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HH1C4 = zeros(1,length(storedStructure.FRF.HH1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HH2C4 = zeros(1,length(storedStructure.FRF.HH2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HH3C4 = zeros(1,length(storedStructure.FRF.HH3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HH4C4 = zeros(1,length(storedStructure.FRF.HH4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HH5C4 = zeros(1,length(storedStructure.FRF.HH5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HH6C4 = zeros(1,length(storedStructure.FRF.HH6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HH7C4 = zeros(1,length(storedStructure.FRF.HH7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HH8C4 = zeros(1,length(storedStructure.FRF.HH8C4));
        end
    elseif EscolherC == 9 %% Se for na coluna I
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HI1C4 = zeros(1,length(storedStructure.FRF.HI1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HI2C4 = zeros(1,length(storedStructure.FRF.HI2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HI3C4 = zeros(1,length(storedStructure.FRF.HI3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HI4C4 = zeros(1,length(storedStructure.FRF.HI4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HI5C4 = zeros(1,length(storedStructure.FRF.HI5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HI6C4 = zeros(1,length(storedStructure.FRF.HI6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HI7C4 = zeros(1,length(storedStructure.FRF.HI7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HI8C4 = zeros(1,length(storedStructure.FRF.HI8C4));
        end
    elseif EscolherC == 10 %% Se for na coluna J
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HJ1C4 = zeros(1,length(storedStructure.FRF.HJ1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HJ2C4 = zeros(1,length(storedStructure.FRF.HJ2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HJ3C4 = zeros(1,length(storedStructure.FRF.HJ3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HJ4C4 = zeros(1,length(storedStructure.FRF.HJ4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HJ5C4 = zeros(1,length(storedStructure.FRF.HJ5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HJ6C4 = zeros(1,length(storedStructure.FRF.HJ6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HJ7C4 = zeros(1,length(storedStructure.FRF.HJ7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HJ8C4 = zeros(1,length(storedStructure.FRF.HJ8C4));
        end
    elseif EscolherC == 11 %% Se for na coluna K
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HK1C4 = zeros(1,length(storedStructure.FRF.HK1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HK2C4 = zeros(1,length(storedStructure.FRF.HK2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HK3C4 = zeros(1,length(storedStructure.FRF.HK3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HK4C4 = zeros(1,length(storedStructure.FRF.HK4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HK5C4 = zeros(1,length(storedStructure.FRF.HK5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HK6C4 = zeros(1,length(storedStructure.FRF.HK6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HK7C4 = zeros(1,length(storedStructure.FRF.HK7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HK8C4 = zeros(1,length(storedStructure.FRF.HK8C4));
        end
    elseif EscolherC == 12 %% Se for na coluna L
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HL1C4 = zeros(1,length(storedStructure.FRF.HL1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HL2C4 = zeros(1,length(storedStructure.FRF.HL2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HL3C4 = zeros(1,length(storedStructure.FRF.HL3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HL4C4 = zeros(1,length(storedStructure.FRF.HL4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HL5C4 = zeros(1,length(storedStructure.FRF.HL5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HL6C4 = zeros(1,length(storedStructure.FRF.HL6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HL7C4 = zeros(1,length(storedStructure.FRF.HL7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HL8C4 = zeros(1,length(storedStructure.FRF.HL8C4));
        end
    elseif EscolherC == 13 %% Se for na coluna M
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HM1C4 = zeros(1,length(storedStructure.FRF.HM1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HM2C4 = zeros(1,length(storedStructure.FRF.HM2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HM3C4 = zeros(1,length(storedStructure.FRF.HM3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HM4C4 = zeros(1,length(storedStructure.FRF.HM4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HM5C4 = zeros(1,length(storedStructure.FRF.HM5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HM6C4 = zeros(1,length(storedStructure.FRF.HM6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HM7C4 = zeros(1,length(storedStructure.FRF.HM7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HM8C4 = zeros(1,length(storedStructure.FRF.HM8C4));
        end
    elseif EscolherC == 14 %% Se for na coluna N
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HN1C4 = zeros(1,length(storedStructure.FRF.HN1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HN2C4 = zeros(1,length(storedStructure.FRF.HN2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HN3C4 = zeros(1,length(storedStructure.FRF.HN3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HN4C4 = zeros(1,length(storedStructure.FRF.HN4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HN5C4 = zeros(1,length(storedStructure.FRF.HN5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HN6C4 = zeros(1,length(storedStructure.FRF.HN6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HNC4 = zeros(1,length(storedStructure.FRF.HN7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HN8C4 = zeros(1,length(storedStructure.FRF.HN8C4));
        end
    elseif EscolherC == 15 %% Se for na coluna O
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HO1C4 = zeros(1,length(storedStructure.FRF.HO1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HO2C4 = zeros(1,length(storedStructure.FRF.HO2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HO3C4 = zeros(1,length(storedStructure.FRF.HO3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HO4C4 = zeros(1,length(storedStructure.FRF.HO4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HO5C4 = zeros(1,length(storedStructure.FRF.HO5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HO6C4 = zeros(1,length(storedStructure.FRF.HO6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HO7C4 = zeros(1,length(storedStructure.FRF.HO7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HO8C4 = zeros(1,length(storedStructure.FRF.HO8C4));
        end
    elseif EscolherC == 16 %% Se for na coluna P
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HP1C4 = zeros(1,length(storedStructure.FRF.HP1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HP2C4 = zeros(1,length(storedStructure.FRF.HP2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HP3C4 = zeros(1,length(storedStructure.FRF.HP3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HP4C4 = zeros(1,length(storedStructure.FRF.HP4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HP5C4 = zeros(1,length(storedStructure.FRF.HP5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HP6C4 = zeros(1,length(storedStructure.FRF.HP6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HP7C4 = zeros(1,length(storedStructure.FRF.HP7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HP8C4 = zeros(1,length(storedStructure.FRF.HP8C4));
        end
    elseif EscolherC == 17 %% Se for na coluna Q
        while EscolherL == 0
         EscolherL = round(rand*8);
        end
        if EscolherL == 1 %Linha 1
            storedStructure.FRF.HQ1C4 = zeros(1,length(storedStructure.FRF.HQ1C4));
        elseif EscolherL == 2 %Linha 2
            storedStructure.FRF.HQ2C4 = zeros(1,length(storedStructure.FRF.HQ2C4));
        elseif EscolherL == 3 %Linha 3
            storedStructure.FRF.HQ3C4 = zeros(1,length(storedStructure.FRF.HQ3C4));
        elseif EscolherL == 4 %Linha 4
            storedStructure.FRF.HQ4C4 = zeros(1,length(storedStructure.FRF.HQ4C4));
        elseif EscolherL == 5 %Linha 5
            storedStructure.FRF.HQ5C4 = zeros(1,length(storedStructure.FRF.HQ5C4));
        elseif EscolherL == 6 %Linha 6
            storedStructure.FRF.HQ6C4 = zeros(1,length(storedStructure.FRF.HQ6C4));
        elseif EscolherL == 7 %Linha 7
            storedStructure.FRF.HQ7C4 = zeros(1,length(storedStructure.FRF.HQ7C4));
        elseif EscolherL == 8 %Linha 8
            storedStructure.FRF.HQ8C4 = zeros(1,length(storedStructure.FRF.HQ8C4));
        end
    end
    
end
% Abaixo atribui-se os novos valores da FRF.
HA1C4 = storedStructure.FRF.HA1C4;
HA2C4 = storedStructure.FRF.HA2C4;
HA3C4 = storedStructure.FRF.HA3C4;
HA4C4 = storedStructure.FRF.HA4C4;
HA5C4 = storedStructure.FRF.HA5C4;
HA6C4 = storedStructure.FRF.HA6C4;
HA7C4 = storedStructure.FRF.HA7C4;
HA8C4 = storedStructure.FRF.HA8C4;

HB1C4 = storedStructure.FRF.HB1C4;
HB2C4 = storedStructure.FRF.HB2C4;
HB3C4 = storedStructure.FRF.HB3C4;
HB4C4 = storedStructure.FRF.HB4C4;
HB5C4 = storedStructure.FRF.HB5C4;
HB6C4 = storedStructure.FRF.HB6C4;
HB7C4 = storedStructure.FRF.HB7C4;
HB8C4 = storedStructure.FRF.HB8C4;

HC1C4 = storedStructure.FRF.HC1C4;
HC2C4 = storedStructure.FRF.HC2C4;
HC3C4 = storedStructure.FRF.HC4C4;
HC4C4 = storedStructure.FRF.HC4C4;
HC5C4 = storedStructure.FRF.HC5C4;
HC6C4 = storedStructure.FRF.HC6C4;
HC7C4 = storedStructure.FRF.HC7C4;
HC8C4 = storedStructure.FRF.HC8C4;

HD1C4 = storedStructure.FRF.HD1C4;
HD2C4 = storedStructure.FRF.HD2C4;
HD3C4 = storedStructure.FRF.HD3C4;
HD4C4 = storedStructure.FRF.HD4C4;
HD5C4 = storedStructure.FRF.HD5C4;
HD6C4 = storedStructure.FRF.HD6C4;
HD7C4 = storedStructure.FRF.HD7C4;
HD8C4 = storedStructure.FRF.HD8C4;

HE1C4 = storedStructure.FRF.HE1C4;
HE2C4 = storedStructure.FRF.HE2C4;
HE3C4 = storedStructure.FRF.HE3C4;
HE4C4 = storedStructure.FRF.HE4C4;
HE5C4 = storedStructure.FRF.HE5C4;
HE6C4 = storedStructure.FRF.HE6C4;
HE7C4 = storedStructure.FRF.HE7C4;
HE8C4 = storedStructure.FRF.HE8C4;

HF1C4 = storedStructure.FRF.HF1C4;
HF2C4 = storedStructure.FRF.HF2C4;
HF3C4 = storedStructure.FRF.HF3C4;
HF4C4 = storedStructure.FRF.HF4C4;
HF5C4 = storedStructure.FRF.HF5C4;
HF6C4 = storedStructure.FRF.HF6C4;
HF7C4 = storedStructure.FRF.HF7C4;
HF8C4 = storedStructure.FRF.HF8C4;

HG1C4 = storedStructure.FRF.HG1C4;
HG2C4 = storedStructure.FRF.HG2C4;
HG3C4 = storedStructure.FRF.HG3C4;
HG4C4 = storedStructure.FRF.HG4C4;
HG5C4 = storedStructure.FRF.HG5C4;
HG6C4 = storedStructure.FRF.HG6C4;
HG7C4 = storedStructure.FRF.HG7C4;
HG8C4 = storedStructure.FRF.HG8C4;

HH1C4 = storedStructure.FRF.HH1C4;
HH2C4 = storedStructure.FRF.HH2C4;
HH3C4 = storedStructure.FRF.HH3C4;
HH4C4 = storedStructure.FRF.HH4C4;
HH5C4 = storedStructure.FRF.HH5C4;
HH6C4 = storedStructure.FRF.HH6C4;
HH7C4 = storedStructure.FRF.HH7C4;
HH8C4 = storedStructure.FRF.HH8C4;

HI1C4 = storedStructure.FRF.HI1C4;
HI2C4 = storedStructure.FRF.HI2C4;
HI3C4 = storedStructure.FRF.HI3C4;
HI4C4 = storedStructure.FRF.HI4C4;
HI5C4 = storedStructure.FRF.HI5C4;
HI6C4 = storedStructure.FRF.HI6C4;
HI7C4 = storedStructure.FRF.HI7C4;
HI8C4 = storedStructure.FRF.HI8C4;

HJ1C4 = storedStructure.FRF.HJ1C4;
HJ2C4 = storedStructure.FRF.HJ2C4;
HJ3C4 = storedStructure.FRF.HJ3C4;
HJ4C4 = storedStructure.FRF.HJ4C4;
HJ5C4 = storedStructure.FRF.HJ5C4;
HJ6C4 = storedStructure.FRF.HJ6C4;
HJ7C4 = storedStructure.FRF.HJ7C4;
HJ8C4 = storedStructure.FRF.HJ8C4;

HK1C4 = storedStructure.FRF.HK1C4;
HK2C4 = storedStructure.FRF.HK2C4;
HK3C4 = storedStructure.FRF.HK3C4;
HK4C4 = storedStructure.FRF.HK4C4;
HK5C4 = storedStructure.FRF.HK5C4;
HK6C4 = storedStructure.FRF.HK6C4;
HK7C4 = storedStructure.FRF.HK7C4;
HK8C4 = storedStructure.FRF.HK8C4;

HL1C4 = storedStructure.FRF.HL1C4;
HL2C4 = storedStructure.FRF.HL2C4;
HL3C4 = storedStructure.FRF.HL3C4;
HL4C4 = storedStructure.FRF.HL4C4;
HL5C4 = storedStructure.FRF.HL5C4;
HL6C4 = storedStructure.FRF.HL6C4;
HL7C4 = storedStructure.FRF.HL7C4;
HL8C4 = storedStructure.FRF.HL8C4;

HM1C4 = storedStructure.FRF.HM1C4;
HM2C4 = storedStructure.FRF.HM2C4;
HM3C4 = storedStructure.FRF.HM3C4;
HM4C4 = storedStructure.FRF.HM4C4;
HM5C4 = storedStructure.FRF.HM5C4;
HM6C4 = storedStructure.FRF.HM6C4;
HM7C4 = storedStructure.FRF.HM7C4;
HM8C4 = storedStructure.FRF.HM8C4;

HN1C4 = storedStructure.FRF.HN1C4;
HN2C4 = storedStructure.FRF.HN2C4;
HN3C4 = storedStructure.FRF.HN3C4;
HN4C4 = storedStructure.FRF.HN4C4;
HN5C4 = storedStructure.FRF.HN5C4;
HN6C4 = storedStructure.FRF.HN6C4;
HN7C4 = storedStructure.FRF.HN7C4;
HN8C4 = storedStructure.FRF.HN8C4;

HO1C4 = storedStructure.FRF.HO1C4;
HO2C4 = storedStructure.FRF.HO2C4;
HO3C4 = storedStructure.FRF.HO3C4;
HO4C4 = storedStructure.FRF.HO4C4;
HO5C4 = storedStructure.FRF.HO5C4;
HO6C4 = storedStructure.FRF.HO6C4;
HO7C4 = storedStructure.FRF.HO7C4;
HO8C4 = storedStructure.FRF.HO8C4;

HP1C4 = storedStructure.FRF.HP1C4;
HP2C4 = storedStructure.FRF.HP2C4;
HP3C4 = storedStructure.FRF.HP3C4;
HP4C4 = storedStructure.FRF.HP4C4;
HP5C4 = storedStructure.FRF.HP5C4;
HP6C4 = storedStructure.FRF.HP6C4;
HP7C4 = storedStructure.FRF.HP7C4;
HP8C4 = storedStructure.FRF.HP8C4;

HQ1C4 = storedStructure.FRF.HQ1C4;
HQ2C4 = storedStructure.FRF.HQ2C4;
HQ3C4 = storedStructure.FRF.HQ3C4;
HQ4C4 = storedStructure.FRF.HQ4C4;
HQ5C4 = storedStructure.FRF.HQ5C4;
HQ6C4 = storedStructure.FRF.HQ6C4;
HQ7C4 = storedStructure.FRF.HQ7C4;
HQ8C4 = storedStructure.FRF.HQ8C4;

end

%------------------------------------------------------------------------
% Inicio do codigo original
% -----------------------------------------------------------------------

tic
% Tamanho da placa
L = 670; 
W = 300;

col = ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q'];
nlin = 8;
ncol = 17;

freq = storedStructure.FRF.freq;
H = zeros(length(freq),nlin*ncol);
for jj = 1:ncol
    for ii = 1:nlin
        meas = ['H' col(jj) num2str(ii) 'C4'];
        H(:,ii + (jj-1)*nlin) = eval(meas).';
        eval(['clear ' meas]);
        infoFRF(1,ii + (jj-1)*nlin).response = jj*ii;
        infoFRF(1,ii + (jj-1)*nlin).dir_response = 3;
        infoFRF(1,ii + (jj-1)*nlin).excitation = 9;
        infoFRF(1,ii + (jj-1)*nlin).dir_excitation = 3;
    end
end

[RES]=lsce(H,freq,infoFRF);

toc 

linhas(i) = length(RES);

cont = sum(linhas);

tamanho = length(RES);

for gg = 1:tamanho % Armazenando as frequências em uma matriz
    [AcumF(gg,i)] = RES(gg,1);
end
    
waitbar(i/x)

end

close(barra)
delete(barra)

hhh = size(AcumF);
hh = hhh(1); % Quantidade de linhas

for kk = 1:hh % Laço para calcular a média e desvio padrão
    [Medias(kk,1)] = mean(AcumF(kk,:));
    [STD(kk,1)] = std(AcumF(kk,:));
end


