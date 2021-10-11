load('ldpa.mat');

%% proposed LDPA
experiment_accuracy1=zeros(4,1);
LDPA_cnn = [
0.9290000200271606
0.9210000038146973
0.9330000281333923
0.9169999957084656
0.9150000214576721
0.9200000166893005
0.9340000152587891
0.9179999828338623
0.9300000071525574
0.9330000281333923
,
0.9480000138282776
0.9369999766349792
0.9539999961853027
0.9359999895095825
0.9150000214576721
0.9369999766349792
0.9539999961853027
0.9359999895095825
0.9419999718666077
0.9490000009536743
,
0.9559999704360962
0.9470000267028809
0.9490000009536743
0.9409999847412109
0.9330000281333923
0.9419999718666077
0.9580000042915344
0.9430000185966492
0.9490000009536743
0.953000009059906
,
0.9570000171661377
0.9520000219345093
0.949999988079071
0.949999988079071
0.9440000057220459
0.9589999914169312
0.9629999995231628
0.9470000267028809
0.9520000219345093
0.9629999995231628

];

LDPA_svm = [
0.9597989949748744
0.9585427135678392
0.957286432160804
0.9535175879396985
0.9510050251256281
0.9547738693467337
0.9585427135678392
0.9585427135678392
0.9635678391959799
0.9673366834170855
,
0.9660804020100503
0.957286432160804
0.9685929648241206
0.957286432160804
0.9597989949748744
0.9585427135678392
0.9685929648241206
0.9698492462311558
0.9811557788944724
0.9824120603015075
,
0.9798994974874372
0.9623115577889447
0.9798994974874372
0.9673366834170855
0.957286432160804
0.957286432160804
0.9987437185929648
0.9811557788944724
0.9987437185929648
0.9987437185929648
,
0.9987437185929648
0.9685929648241206
0.9974874371859297
0.9711055276381909
0.9597989949748744
0.9673366834170855
0.9987437185929648
0.9987437185929648
0.9987437185929648
0.9987437185929648
];

LDPA = min(LDPA_svm,LDPA_cnn);
for ii = 1:4
    experiment_accuracy1(ii) = sum(LDPA((ii-1)*10+1:ii*10))/10;
end
%% sumrate
experiment_accuracy2 = zeros(4,1);
sumrate_cnn = [
0.871999979019165
0.9169999957084656
0.9179999828338623
0.8820000290870667
0.871999979019165
0.9070000052452087
0.9290000200271606
0.9190000295639038
0.9269999861717224
0.8560000061988831
,
0.871999979019165
0.9259999990463257
0.9350000023841858
0.9020000100135803
0.8529999852180481
0.9079999923706055
0.9440000057220459
0.9330000281333923
0.9399999976158142
0.8669999837875366
,
0.859000027179718
0.9390000104904175
0.949999988079071
0.9290000200271606
0.8730000257492065
0.9279999732971191
0.9539999961853027
0.9409999847412109
0.9599999785423279
0.871999979019165
,
0.8709999918937683
0.9430000185966492
0.953000009059906
0.9279999732971191
0.8899999856948853
0.9300000071525574
0.9539999961853027
0.9459999799728394
0.9599999785423279
0.8650000095367432
];
sumrate_svm = 0.99.*ones(40,1);

sumrate = min(sumrate_svm,sumrate_cnn);
for ii = 1:4
    experiment_accuracy2(ii) = sum(sumrate((ii-1)*10+1:ii*10))/10;
end
%% fairness
experiment_accuracy3 = zeros(4,1);
fair_cnn = [
0.921999990940094
0.9120000004768372
0.9210000038146973
0.9240000247955322
0.8980000019073486
0.9079999923706055
0.9200000166893005
0.9070000052452087
0.8920000195503235
0.9150000214576721
,
0.9369999766349792
0.9290000200271606
0.9319999814033508
0.9229999780654907
0.9190000295639038
0.9259999990463257
0.9330000281333923
0.9150000214576721
0.9290000200271606
0.9449999928474426
,
0.9470000267028809
0.9390000104904175
0.9399999976158142
0.9359999895095825
0.9359999895095825
0.9279999732971191
0.9399999976158142
0.9399999976158142
0.9330000281333923
0.9399999976158142
,
0.9570000171661377
0.953000009059906
0.9570000171661377
0.9470000267028809
0.9330000281333923
0.9350000023841858
0.9599999785423279
0.9409999847412109
0.9419999718666077
0.9580000042915344

];
fair_svm = 0.99.*ones(40,1);

fair = min(fair_svm,fair_cnn);
for ii = 1:4
    experiment_accuracy3(ii) = sum(fair((ii-1)*10+1:ii*10))/10;
end

semilogy(T_vec,1-experiment_accuracy2,'-ro','MarkerSize',8,'LineWidth',2);
hold on;
semilogy(T_vec,1-experiment_accuracy3,'-bv','MarkerSize',8,'LineWidth',2);
semilogy(T_vec,1-experiment_accuracy1,'-ksquare','MarkerSize',8,'LineWidth',2);



