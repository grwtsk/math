\\ Exact floor sums, conductor sieves, and an irregular mirror with trivial real class group.
\\ Run with gp -fq scripts/verify_alpoge_scalar_prime_weights.gp.

floor_value(p, k, b) = {
  my(s=Mod(0,p));
  for(j=1,p-1, s += (b*j\p)*Mod(j,p)^(k-1));
  s;
}

check_multipliers(p) = {
  my(count=0);
  forstep(k=2,p-3,2,
    for(b=1,p-1,
      if(k*Mod(b,p)^(k-1)*floor_value(p,k,b) !=
          (Mod(b,p)^k-1)*bernfrac(k), error("floor-sum identity", [p,k,b]));
      count++;
    );
  );
  count;
}

check_sieve(m, R) = {
  my(limit=2*R*m+1, others=List(), trivial=List());
  forprime(p=3,limit,
    my(h=(p-1)/2, r=h/gcd(h,m));
    if(r<=R,
      if(r==1, listput(trivial,p),
        if(p!=2*r+1 || ((m-1)%r && (m+1)%r), error("sieve", [m,p,r]));
        listput(others,p)
      );
    );
  );
  print("m=",m," R=",R," ceiling=",limit," nontrivial-order primes=",Vec(others),
        " order-one primes=",Vec(trivial));
}

{
  my(total=0, ps=[5,7,11,17,29,37,59,67,101]);
  for(i=1,#ps,total+=check_multipliers(ps[i]));
  print("general multiplier identities=",total);
  if(floor_value(17,8,2)!=0 || floor_value(17,8,3)==0, error("primitive control"));
  if(numerator(bernfrac(32))%37, error("irregular index"));
  for(b=1,36, if(floor_value(37,32,b)!=0, error("mirror at 37",b)));
  my(C=bnfinit(polsubcyclo(37,9),1));
  if(C.no!=1 || bnfcertify(C)!=1, error("nonic real class number"));
  print("p=17 k=8 u2=",floor_value(17,8,2)," u3=",floor_value(17,8,3));
  print("p=37 k=32 all multipliers zero; real degree-nine field h=1 certified");
  for(R=2,5,
    my(L=lcm([j|j<-[1..2*R+1]]),m=L-1);
    while(!isprime(m),m+=L);
    check_sieve(m,R);
  );
  \\ All prime divisors are signs modulo 60. The second check has both signs.
  check_sieve(59^2,2);
  check_sieve(59*61,2);
  if(!isprime(24504479) || (24504479+1)%lcm([j|j<-[1..17]]),error("octic weight"));
  check_sieve(24504479,8);
  print("PASS");
}
