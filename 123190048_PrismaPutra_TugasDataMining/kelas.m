training = [3.81 3.5 5; 
            3 7 1;
            3.67 4.1 3;
            3.32 3.8 5;
            3 5 2;
            3.20 4 4;
            2.75 6 3;
            3 5 5;
            2.52 7 0;
            3.47 4.6 3;
            3.9 4.2 2
];
sampel = [3.15 3.5 5];
group = [4; 2; 4; 3; 2; 3; 1; 2; 1; 3; 4];

classification = fitcknn(training,group,'NumNeighbors',3);
class = predict(classification,sampel);
class