function wsp = trenowanie_wspolczynniki()
    ids_a = imageDatastore('Characters/A');
    ids_b = imageDatastore('Characters/B');
    ids_c = imageDatastore('Characters/C');    
    ids_d = imageDatastore('Characters/D');
    ids_e = imageDatastore('Characters/E');
    ids_f = imageDatastore('Characters/F');
    ids_g = imageDatastore('Characters/G');
    ids_h = imageDatastore('Characters/H');
    ids_i = imageDatastore('Characters/I');
    ids_j = imageDatastore('Characters/J');
    ids_k = imageDatastore('Characters/K');
    ids_l = imageDatastore('Characters/L');
    ids_m = imageDatastore('Characters/M');
    ids_n = imageDatastore('Characters/N');
    ids_o = imageDatastore('Characters/O');
    ids_p = imageDatastore('Characters/P');
    ids_q = imageDatastore('Characters/Q');
    ids_r = imageDatastore('Characters/R');
    ids_s = imageDatastore('Characters/S');
    ids_t = imageDatastore('Characters/T');
    ids_u = imageDatastore('Characters/U');
    ids_v = imageDatastore('Characters/V');
    ids_w = imageDatastore('Characters/W');
    ids_x = imageDatastore('Characters/X');
    ids_y = imageDatastore('Characters/Y');
    ids_z = imageDatastore('Characters/Z');
    

    ids_1 = imageDatastore('Characters/1');
    ids_2 = imageDatastore('Characters/2');
    ids_3 = imageDatastore('Characters/3');
    ids_4 = imageDatastore('Characters/4');
    ids_5 = imageDatastore('Characters/5');
    ids_6 = imageDatastore('Characters/6');
    ids_7 = imageDatastore('Characters/7');
    ids_8 = imageDatastore('Characters/8');
    ids_9 = imageDatastore('Characters/9');
    ids_0 = imageDatastore('Characters/0');
    

    wa = wczytaj_do_trenowania(ids_a);
    wb = wczytaj_do_trenowania(ids_b);
    wc = wczytaj_do_trenowania(ids_c);
    wd = wczytaj_do_trenowania(ids_d);
    we = wczytaj_do_trenowania(ids_e);
    wf = wczytaj_do_trenowania(ids_f);
    wg = wczytaj_do_trenowania(ids_g);
    wh = wczytaj_do_trenowania(ids_h);
    wi = wczytaj_do_trenowania(ids_i);
    wj = wczytaj_do_trenowania(ids_j);
    wk = wczytaj_do_trenowania(ids_k);
    wl = wczytaj_do_trenowania(ids_l);
    wm = wczytaj_do_trenowania(ids_m);
    wn = wczytaj_do_trenowania(ids_n);
    wo = wczytaj_do_trenowania(ids_o);
    wp = wczytaj_do_trenowania(ids_p);
    wq = wczytaj_do_trenowania(ids_q);
    wr = wczytaj_do_trenowania(ids_r);
    ws = wczytaj_do_trenowania(ids_s);
    wt = wczytaj_do_trenowania(ids_t);
    wu = wczytaj_do_trenowania(ids_u);
    wv = wczytaj_do_trenowania(ids_v);
    ww = wczytaj_do_trenowania(ids_w);
    wx = wczytaj_do_trenowania(ids_x);
    wy = wczytaj_do_trenowania(ids_y);
    wz = wczytaj_do_trenowania(ids_z);

    w1 = wczytaj_do_trenowania(ids_1);
    w2 = wczytaj_do_trenowania(ids_2);
    w3 = wczytaj_do_trenowania(ids_3);
    w4 = wczytaj_do_trenowania(ids_4);
    w5 = wczytaj_do_trenowania(ids_5);
    w6 = wczytaj_do_trenowania(ids_6);
    w7 = wczytaj_do_trenowania(ids_7);
    w8 = wczytaj_do_trenowania(ids_8);
    w9 = wczytaj_do_trenowania(ids_9);
    w0 = wczytaj_do_trenowania(ids_0);

    trenowansko = [wa;wb;wc;wd;we;wf;wg;wh;wi;wj;wk;wl;wm;wn;wo;wp;wq;wr;ws;wt;wu;wv;ww;wx;wy;wz;w1;w2;w3;w4;w5;w6;w7;w8;w9;w0;]';

    out = [
    repmat([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wa),1);
    repmat([0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wb),1);
    repmat([0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wc),1);
    repmat([0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wd),1);
    repmat([0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(we),1);
    repmat([0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wf),1);
    repmat([0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wg),1);
    repmat([0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wh),1);
    repmat([0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wi),1);
    repmat([0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wj),1);
    repmat([0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wk),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wl),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wm),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wn),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wo),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wp),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wq),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wr),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(ws),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wt),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wu),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(wv),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0], dl(ww),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0], dl(wx),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0], dl(wy),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0], dl(wz),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0], dl(w1),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0], dl(w2),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0], dl(w3),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0], dl(w4),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0], dl(w5),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0], dl(w6),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0], dl(w7),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0], dl(w8),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0], dl(w9),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], dl(w0),1)
    ]';
  
    nn = feedforwardnet([20,20,20]);
    nn.trainParam.max_fail = 10;
    nn = train(nn, trenowansko, out);

neural_net = nn;
save neural_net;
end