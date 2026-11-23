\\ Finite controls for AlpogeScalarSelmerBudget.md. Run with gp -q -f FILE.
\\ All checks after construction of proposed root intervals use exact arithmetic.

require_true(condition, message) = if(!condition, error(message));

interval_product(v, w) = {
  my(products = [v[1]*w[1], v[1]*w[2], v[2]*w[1], v[2]*w[2]]);
  [vecmin(products), vecmax(products)]
};

interval_absolute(v) = {
  if(v[1] > 0, return(v));
  if(v[2] < 0, return([-v[2], -v[1]]));
  [0, max(-v[1], v[2])]
};

interval_value(poly, v) = {
  my(result = [0, 0], coeff);
  forstep(k = poldegree(poly), 0, -1,
    coeff = polcoef(poly, k);
    result = interval_product(result, v) + [coeff, coeff]
  );
  result
};

\\ For 1 <= y <= 2, write log y = 2 atanh((y-1)/(y+1)).
\\ Bound the positive discarded terms by a geometric series.
log_unit_interval(y) = {
  my(z = (y-1)/(y+1), n = 24, partial, remainder);
  require_true(1 <= y && y <= 2, "log series argument outside [1,2]");
  partial = 2*sum(j = 0, n-1, z^(2*j+1)/(2*j+1));
  remainder = 2*z^(2*n+1)/((2*n+1)*(1-z^2));
  [partial, partial+remainder]
};

log_enclosure(y, log_two) = {
  my(exponent = 0, approximation, scale = 2^80);
  require_true(y > 0, "nonpositive logarithm argument");
  while(y < 1, y *= 2; exponent--);
  while(y >= 2, y /= 2; exponent++);
  approximation = log_unit_interval(y) + interval_product([exponent, exponent], log_two);
  [floor(scale*approximation[1])/scale, ceil(scale*approximation[2])/scale]
};

certified_roots(poly) = {
  my(centers = polrootsreal(poly), degree = poldegree(poly), scale = 2^64);
  my(boxes = vector(degree), k, v);
  require_true(#centers == degree, "expected a totally real field");
  for(i = 1, degree,
    k = floor(scale*centers[i]);
    v = [(k-1)/scale, (k+2)/scale];
    require_true(subst(poly, x, v[1])*subst(poly, x, v[2]) < 0, "root sign test failed");
    if(i > 1, require_true(boxes[i-1][2] < v[1], "root intervals overlap"));
    boxes[i] = v
  );
  boxes
};

\\ The regulator is the absolute determinant after deleting one embedding.
\\ The five disjoint sign-changing intervals certify all five embeddings.
quintic_regulator(b, poly, log_two) = {
  my(boxes = certified_roots(poly), units = b.fu, entries = matrix(4,4), v);
  my(det = [0,0], term, permutation, sign);
  require_true(#units == 4 && #boxes == 5, "unexpected unit rank or signature");
  for(i = 1, 4, for(j = 1, 4,
    v = interval_absolute(interval_value(lift(units[j]), boxes[i]));
    require_true(v[1] > 0, "embedding interval meets zero");
    entries[i,j] = [log_enclosure(v[1],log_two)[1], log_enclosure(v[2],log_two)[2]]
  ));
  for(k = 0, 23,
    permutation = numtoperm(4,k);
    sign = permsign(permutation);
    term = [sign,sign];
    for(i = 1, 4, term = interval_product(term, entries[i,permutation[i]]));
    det += term
  );
  interval_absolute(det)
};

certified_field(p, d, expected_group) = {
  my(poly = polsubcyclo(p,d), b = bnfinit(poly,1));
  require_true(isprime(p) && (p-1)%(2*d) == 0, "conductor or parity mismatch");
  require_true(poldegree(poly) == d && nfdisc(poly) == p^(d-1), "discriminant mismatch");
  require_true(bnfcertify(b) == 1, "unconditional field certification failed");
  require_true(Vec(b.cyc) == expected_group, "class group mismatch");
  print("p=",p," degree=",d," discriminant=",p^(d-1)," class group=",b.cyc);
  b
};

residual_order(p,m) = (p-1)/gcd(p-1,2*m);

check_quintic(p, expected_group, regulator_floor, log_two) = {
  my(b = certified_field(p,5,expected_group), reg, log_ratio, m);
  reg = quintic_regulator(b,polsubcyclo(p,5),log_two);
  require_true(regulator_floor < reg[1] && reg[2] < regulator_floor+1,
    "regulator outside the claimed integer interval");
  log_ratio = log_enclosure(p/32,log_two);
  \\ sqrt(5)>2, so the right side here dominates the manuscript's lower bound.
  require_true(reg[1] > 25*log_ratio[2]^4/2304, "quintic regulator lower bound failed");
  require_true(b.no < p^2 && valuation(b.no,p) == 0, "unexpected conductor-primary part");
  m = (p-1)/10;
  require_true(residual_order(p,m) == 5 && residual_order(p,p*m) == 5,
    "quintic residual order mismatch");
  print("  ",regulator_floor," < regulator < ",regulator_floor+1,
    "; class-number valuation=0; order-five weights m=",m," and ",p*m)
};

main() = {
  my(log_two = log_unit_interval(2), h2, h3, h6, h4);
  default(realprecision,75);
  h2 = certified_field(349,2,[]).no;
  h3 = certified_field(349,3,[2,2]).no;
  h6 = certified_field(349,6,[2,2,2,2]).no;
  require_true(h6 == 4*h2*h3 && residual_order(349,29) == 6, "sextic control failed");
  h2 = certified_field(457,2,[]).no;
  h4 = certified_field(457,4,[5]).no;
  require_true(h4 == 5*h2 && residual_order(457,57) == 4, "quartic control failed");
  check_quintic(191,[11],185,log_two);
  check_quintic(941,[2,2,2,2],580,log_two);
  require_true(81*5^4 < 200*4^4, "quintic cutoff coefficient exceeds one");
  print("PASS")
};

iferr(main(), err, print(err); quit(1));
