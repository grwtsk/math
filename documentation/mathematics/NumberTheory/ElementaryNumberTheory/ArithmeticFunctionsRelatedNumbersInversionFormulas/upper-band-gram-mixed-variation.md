# Mixed variation of the complete upper-band Gram

By grwtsk contributors. Written finite mathematics; no new Lean declarations.
Compilation, fresh kernel replay and transitive axiom auditing: **NOT_RUN**.

Source conversation:
https://chatgpt.com/g/g-p-6a9ce8907e348191a3f884d45ab4ad48-noeaaeue/c/6ae172dd-a538-83e8-8008-ebad9b4c2295,
assistant `e99457b4-2bcc-4f72-aec4-e035cebbd226`, rendered-final SHA256
`c800793306a508db2bcf8ef4f69edf41e5477bb4858f340c5e0afe1b1d28f4f5`.
This extracts the kernel and finite summation argument only. No external
analytic cancellation theorem is imported or proved in this note.

## Exact normalized kernel

For t in [1/2,1] and x>0 set rho_t(x)=max(x^(-1/2)-t^(-1/2),0).
For ell in {1,2,3}, put

    K_ell(x,y)=4 integral_(1/2)^1 rho_t(ell*x) rho_t(y) dt/t,
    K=K_1-K_2-K_3.

On the frozen upper rectangle x in (1/4,1/2], y in (1/2,W/N],
this is the normalization N G_N(Nx,Ny) when the original first response
is r_m-r_(2m)-r_(3m) and the second is r_n. Indeed
r_(Nx)(log N+log t)=2 N^(-1/2) rho_t(x), including its zero birth value.
The integration horizon is 1, even when W/N<1. If ell*x>1 its response
vanishes. This kernel statement is confined to that upper rectangle.

Each K_ell is nonnegative and decreasing in both coordinates. For x<x'
and y<y', its mixed difference is

    4 integral [rho_t(ell*x)-rho_t(ell*x')]
               [rho_t(y)-rho_t(y')] dt/t >= 0.

Thus no branch partition at 2m=n, 3m=n or 3m=N is needed for variation.

## Complete finite coefficient norm

Take increasing finite grids x_1,...,x_p and y_1,...,y_q in the rectangle.
For an array L, define its coefficient norm as the sum of absolute values
of: L_(p,q); the differences L_(i,q)-L_(i+1,q); the differences
L_(p,j)-L_(p,j+1); and all mixed differences
L_(i,j)-L_(i+1,j)-L_(i,j+1)+L_(i+1,j+1).
Empty edge and mixed sums are zero.

For L=K_ell every listed coefficient is nonnegative. Summing first over
one index and then the other telescopes the complete norm to
K_ell(x_1,y_1). For K the triangle inequality therefore bounds the norm by
sum_(ell=1)^3 K_ell(x_1,y_1). Since
rho_t(ell*x)<=2/sqrt(ell) and rho_t(y)<=sqrt(2)-1, this is at most

    C_K=8(1+1/sqrt(2)+1/sqrt(3))(sqrt(2)-1) log(2).

For any real sequences alpha_i,beta_j, write A_i=sum_(h<=i)alpha_h,
B_j=sum_(h<=j)beta_h, anchored at zero immediately before the grids.
Two finite summations by parts express sum alpha_i beta_j K_(i,j) as
A_p B_q times the corner, plus B_q times the first edge weighted by A_i,
plus A_p times the second edge weighted by B_j, plus the mixed differences
weighted by A_i B_j. All three terminal compensators are retained. Hence

    |sum alpha_i beta_j K_(i,j)|
      <= C_K max_i|A_i| max_j|B_j|.

For the unnormalized Gram the right side is divided by N. This is an
actual bound on the original complete three-term kernel, not a positivity
claim for K and not a bound on either arithmetic prefix.

## Consumer and unresolved arithmetic

After an exact coprimality expansion with r=e*u, s=e*v, this bound can
multiply two proved anchored prefix allowances on each actual rectangular
e-grid; both endpoints of each prefix are required. It must be applied to
the complete rectangle, or a new norm for any additional mask must be proved.
A strict-gap deletion requires its own source correction. Taking the
absolute inclusion-exclusion tail also requires its full coefficient cost.
No bound for those prefixes, their signed e-aggregate, the outside band,
or the full RH-facing source is established here. Two classical subpower
prefix allowances do not become a fixed-power estimate by this lemma.
