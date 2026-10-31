# Exact Liouville cross-block Gram decomposition and a sufficient diagonal budget

Local attribution: grwtsk contributors.
Source: `LiouvilleCausalEnergyTarget.lean` at
`85f2dce95a1e287e5a06f29316adb61e3849c054`.
This is a mathematical derivation, not a Lean verification receipt.

## Source and regularity

Let F be the original-weight Liouville waveform and h=log 2. On every compact
recording interval its causal sum equals a finite sum of continuous responses:
a newly born response is zero at its birth. Thus F is continuous, all finite
products below are integrable, and F(0)=0 because the only inventory label is
1 and its response at zero is zero. No arithmetic cancellation is used.

Fix an integer J>=0, t_i=i*h and T=t_J. For 0<=i<J put

    Delta_i=F(t_(i+1))-F(t_i),
    B_i(u)=F(u)-F(t_i),  t_i<=u<=t_(i+1),
    m_i=integral_(t_i)^(t_(i+1)) B_i(u)du,
    beta_i=integral_(t_i)^(t_(i+1)) B_i(u)^2du.

Define the continuous causal block increment psi_i on [0,T] by

    psi_i(u)=0                         if u<=t_i,
             B_i(u)                   if t_i<=u<=t_(i+1),
             Delta_i                  if u>=t_(i+1).

The definitions agree at boundaries. If u is in block k, the finite telescope
sum_(i<k)Delta_i=F(t_k)-F(0) shows

    F(u)=sum_(i=0)^(J-1)psi_i(u).

This retains the actual Liouville coefficients and causal weights throughout;
there is no independent-increment or random-prime model.

## Every covariance, at every separation

Set G_ij=integral_0^T psi_i(u)psi_j(u)du. Directly partitioning the recording
interval at the two block boundaries gives

    G_ii=beta_i+(J-i-1)*h*Delta_i²,
    G_ij=Delta_i*(m_j+(J-j-1)*h*Delta_j),   i<j,
    G_ji=G_ij.

Before t_j, psi_j=0. Inside block j, psi_i=Delta_i. Afterwards both are frozen.
This proves the off-diagonal expression without a locality assumption.
Consequently, with H(T)=integral_0^T F(u)^2du,

    H(T)=D_J+2*C_J,
    D_J=sum_(i<J)[beta_i+(J-i-1)*h*Delta_i²],
    C_J=sum_(i<j<J)Delta_i*m_j
           +h*sum_(i<j<J)(J-j-1)*Delta_i*Delta_j.

The first covariance is with the actual within-block moment; the second
prices persistence of accumulated increments through EVERY later block.
Summing energy over disjoint time intervals has no direct cross terms.
The terms here arise from decomposing the waveform, not the recording domain.

## A useful correction: a strong diagonal budget CAN suffice

For every u, finite Cauchy--Schwarz gives

    (sum_(i<J)psi_i(u))²<=J*sum_(i<J)psi_i(u)².

Therefore, uniformly for all J>=1,

    0<=H(t_J)<=J*D_J,
    -D_J<=2*C_J<=(J-1)*D_J.

These estimates price ALL long-range covariance with only a polynomial loss
in the number of geometric-time blocks. Such a loss is absorbable in an
all-positive-rate target. Thus a separate new signed covariance theorem is
not logically necessary if one can first prove a sufficiently strong
all-positive-rate diagonal budget. Earlier statements that squared-increment
control could never suffice must be read with this qualification.

For a simpler sufficient supplier define

    E_J=sum_(i<J)beta_i+h*sum_(i<J)Delta_i².

Then D_J<=J*E_J and H(t_J)<=J²*E_J. In particular,

    [for every eta>0, E_J<=A_eta*2^(eta*J) for every J]
       implies
    [for every delta>0, H(t_J)<=C_delta*2^(delta*J) for every J].

Take eta=delta/2. Since exp(x)>=x²/2 for x>=0, one can take

    C_delta=8*A_(delta/2)/(delta*log 2)².

The case J=0 is zero. Nondecreasing cumulative energy extends the result
from dyadic times to all T>=0 by rounding up, multiplying the constant by
at most 2^delta. The existing delay operator then returns it to Möbius energy.
This sufficient E_J supplier is UNPROVED for actual Liouville; it may be
stronger than necessary. No equivalence with it is asserted.

If D_J is large, a signed estimate for C_J that cancels the excessive part
can instead supply the target. The exact identities expose that alternative
without asserting it or taking absolute values of arithmetic coefficients.

## What bare endpoint or adjacent-block estimates miss

Endpoint increments alone contain no information about beta_i. For a generic
continuous waveform, set B_i(u)=2^(i/2)*sin(pi*(u-t_i)/h) on every block.
All endpoints vanish, so every Delta_i is zero, but
beta_i=h*2^i/2 and cumulative energy grows exponentially in J. This is a
logical insufficiency example, NOT a claim about the actual Liouville source.

Likewise, controlling adjacent products alone does not control distant ones:
nonzero Delta_i on every third block makes every adjacent product zero while
leaving arbitrary distant accumulation possible. Once a genuine all-rate
budget for E_J or D_J is available, however, the Cauchy--Schwarz argument
above already handles those distant terms with an absorbable polynomial loss.

The existing trivial size bounds allow exponential growth of E_J in J.
A fixed finite prefix changes constants; it cannot supply a uniform all-scale
E_J estimate. The arithmetic frontier is now explicit: either establish the
strong diagonal-plus-within-block supplier, or control the complete signed
C_J against D_J. No initial-condition slogan or independent-coin heuristic
settles either alternative.

## Evidence boundary

This derivation assumes and explains compact continuity/integrability of the
original causal waveform and performs only finite partitions and sums.
Compilation, fresh kernel replay, expected-interface checking and transitive
axiom audit: NOT_RUN. No new RH theorem or arithmetic cancellation estimate
is proved. Prime-delay response scaling and finite reindexing remain separate
unpaid formal bridges. The new shared Git lock is preserved; this note is
not published by bypassing that lock.
