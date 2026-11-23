\\ Finite controls for AlpogeOcticSelmerBound.md. Run with gp -q -f FILE.
assert_octic(ok, message) = if(!ok, error(message));

octic_involution(b, poly) = {
  my(generator = Mod(x, poly), conjugates = nfgaloisconj(b), image);
  for(i=1, #conjugates,
    image = Mod(conjugates[i], poly);
    if(image != generator && subst(lift(image), x, image) == generator, return(image))
  );
  error("order-two automorphism missing")
};

octic_control(p, quartic_class_number, octic_class_number) = {
  my(P=polsubcyclo(p,8), Q=polsubcyclo(p,4), b=bnfinit(P,1), c=bnfinit(Q,1));
  my(tau=octic_involution(b,P), embedding=Mod(nfisincl(Q,P,1),P));
  my(basis=matrix(8,4,i,j,polcoef(lift(embedding^(j-1)),i-1)));
  my(norm_parities=matrix(3,7), w, conjugate, relative_unit, norm_value);
  my(coords, down, exponents, integral_norm, tested=0, unit_index, m=(p-1)/16);
  assert_octic(isprime(p) && (p-1)%16==0, "requires a totally real octic prime conductor");
  assert_octic(nfdisc(P)==p^7 && nfdisc(Q)==p^3, "incorrect discriminants");
  assert_octic(bnfcertify(b)==1 && bnfcertify(c)==1, "field certification failed");
  assert_octic(b.no==octic_class_number && c.no==quartic_class_number, "class number mismatch");
  assert_octic(b.no%c.no==0 && b.no/c.no<p^2 && c.no%p!=0, "relative class number failed");
  for(j=1,7,
    w=b.fu[j];
    conjugate=subst(lift(w),x,tau);
    norm_value=w*conjugate;
    coords=matinverseimage(basis,vector(8,i,polcoef(lift(norm_value),i-1))~);
    assert_octic(#coords==4, "relative norm did not descend to the quartic field");
    down=Mod(sum(k=1,4,coords[k]*x^(k-1)),Q);
    exponents=bnfisunit(c,down);
    assert_octic(#exponents==4, "expected a quartic unit");
    for(i=1,3,norm_parities[i,j]=exponents[i]);
    relative_unit=w/conjugate;
    if(relative_unit!=1 && relative_unit!=-1,
      assert_octic(relative_unit*subst(lift(relative_unit),x,tau)==1, "relative norm not one");
      integral_norm=norm(1-relative_unit);
      assert_octic(type(integral_norm)=="t_INT" && integral_norm!=0 && integral_norm%p==0,
        "nonzero integral norm not divisible by conductor");
      tested++
    )
  );
  unit_index=2^matrank(Mod(norm_parities,2));
  assert_octic(tested>0 && unit_index<=8, "relative unit index or norm sample failed");
  assert_octic((p-1)/gcd(2*m,p-1)==8 && (p-1)/gcd(2*p*m,p-1)==8, "weight mismatch");
  print("p=",p," quartic h=",c.no," octic h=",b.no," relative h=",b.no/c.no,
    " unit index=",unit_index," nontrivial norm tests=",tested," m=",m," or ",p*m)
};

run_octic_controls() = {
  octic_control(17,1,1);
  octic_control(401,5,45);
  assert_octic(61^4 < 4*44^4, "analytic cutoff constant failed");
  print("PASS")
};

iferr(run_octic_controls(),err,print(err);quit(1));
