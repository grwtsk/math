\\ Exact prime-conductor subfields, twisted quartic fields and unramified genus fields.
\\ Run with gp -fq scripts/verify_alpoge_quartic_twists.gp.

check_field(D, p, genusD=0, allowTorsion=0) = {
  my(f=abs(D),eff=f, expectedSign=if(p%8==1,1,-1));
  if(sign(D)!=expectedSign || !isprime(p) || p%4!=1,error("wrong parity",[D,p]));
  if(f%p==0,eff=f/p);
  if(eff<3,error("fixture expects a nonconstant host after tame reduction"));
  my(polys=polsubcyclo(eff*p,4), hits=0);
  if(type(polys)=="t_POL",polys=[polys]);
  my(P2=polsubcyclo(p,2), B2=bnfinit(P2,1));
  if(bnfcertify(B2)!=1 || B2.disc!=p,error("quadratic base certificate"));
  foreach(polys,P,
    if(polsturm(P)!=4 || nfdisc(P)!=eff^2*p^3,next());
    hits++;
    my(B=bnfinit(P,1));
    if(bnfcertify(B)!=1 || B.no%B2.no,error("quartic certificate"));
    my(H=B.no/B2.no);
    if(4*H>=eff*p || B2.no%p==0,error("general class bound"));
    if((H%p==0)!=allowTorsion,error("conductor-primary disposition",[D,p,H]));
    if(genusD,
      my(M=polcompositum(P,x^2-genusD)[1]);
      if(poldegree(M)!=8 || polsturm(M)!=8 || nfdisc(M)!=B.disc^2 ||
          H%2,error("real unramified quadratic extension",[D,p,H]));
    );
    print([D,p,eff,B2.no,B.no,H,genusD]);
  );
  if(hits!=1,error("quartic residual field not unique",[D,p,hits]));
}

{
  my(negative=[-3,-4,-7,-8,-11,-15,-19,-20,-24,-35,-39]);
  my(positive=[5,8,12,24,28]);
  print("columns: host D, p, effective conductor, h2, h4, h4/h2, real genus radicand");
  for(i=1,#negative,
    my(D=negative[i],g=if(D==-35||D==-20,5,if(D==-39,13,if(D==-24,8,0))));
    check_field(D,53,g);check_field(D,229,g);
  );
  for(i=1,#positive,check_field(positive[i],89,positive[i]);check_field(positive[i],257,positive[i]));
  check_field(-15,5);check_field(-20,5);check_field(-35,5);check_field(-39,13);
  check_field(-479,5,0,1);
  print("PASS");
}
