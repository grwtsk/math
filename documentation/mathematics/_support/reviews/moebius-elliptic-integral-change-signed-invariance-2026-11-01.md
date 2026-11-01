# Exact invariance of the original Möbius–elliptic signed endpoint under integral Weierstrass changes

Local mathematical attribution: grwtsk contributors. Date: 2026-11-01.

**Research classification:** Complete elementary source-bound finite argument with Lean source proof candidate and bounded exact diagnostics. Global RH, all-positive-rate energy, cofinal numerical zero certificates and BSD remain unproved. COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## 1. Source inspection and nonduplication

The initial source inspected was grwtsk/math main at `6c48421c4b2b739daa368071546886d4ab0cfbde`, Lean v4.34.1 and Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`. A concurrent source increment has **already** published `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueIntegralVariableChangePort.lean` (blob `cf01a4665bd1e33d2f18ef1c09372418f92b9d42`) at commit `a9dd140a6de74ee7dbf85b785bceec1c73d67e9c`, with passive target on main at `4f301ada41f23f55132240dda65c72402d901152`. It proves all integral `VariableChange ℤ` cases by translating `r,s,t` and using integer unit `u=±1`; it already constructs an affine-fiber equivalence, exact discriminant and count invariance, a target good-reduction certificate, and the original global `ChannelPort (fun _ => True)`. **No competing geometric source is published here.**

Original mathematical dependencies retain their exact forms:
- `EllipticFiniteEulerWindow.lean` blob `48e14ca731bd9b13f8373eea7521e746cb3eab93`: real source model, good point-count and Frobenius trace.
- `EllipticPrimeResidueFiberPorts.lean` blob `e7f5901f929bf999d15772f1b92cf3460023623d`: original `CurveFiber`, dependent `ChannelAt`, `ChannelPort`, prime, residue and exponent.
- `EllipticPrimeResidueFiberCounting.lean` blob `70c96ac0ebabe429e129ea549e151e575d30593d`: complete source-ordered trace kernel and original signed defect.
- `MoebiusEllipticFiberKernelComparison.lean` blob `df9ded979964790b92f3053efc3aedeb6e2dfa78`: original `GoodPrimeBank`, `firstSelectedDivisor`, `endpointIndex`, `pickupCross`, signed matched source-minus-elliptic defect, rough/mixed sectors and `fullSignedResidual`.
- `MoebiusEllipticRecordCertifiedBank.lean` blob `b33d580f9d62d3dbe6b43a98af988a95674fb885`: actual good prime certificates for original rank-32 *candidate* record model at 7 and 19, NOT a Mordell–Weil rank proof.

The new proof candidate `MoebiusEllipticIntegralChangeInvariance.lean` imports the already published integral-change module and the unchanged original Möbius–elliptic endpoint source. It does not import a surrogate Möbius coefficient or a newly chosen zero divisor.

## 2. Genuine good-prime bank transport, preserving every original integer occurrence

Fix an actual integral Weierstrass model W, an actual Mathlib `C : WeierstrassCurve.VariableChange ℤ`, and an existing certified `GoodPrimeBank B W`. Write W'=C•W. The source's good-prime bank consists of finite `PrimeIndex` set P, bound B, a genuine `GoodPointCountCertificate` at each selected p and a proof that each certificate models precisely W. The already proved source `integralVariableChangeCertificate` transports each true selected point count and discriminant to W'. Construct the new `GoodPrimeBank W'` from the SAME prime set P and SAME bound, with every certificate transported by that actual theorem. The transient residue/exponent chosen while asking the existing constructor for an individual certificate have no role in the resulting bank; the original integer's real source residue and exponent are constructed later by the preexisting `GoodPrimeBank.channel` from the original integer and its p-free cofactor. No arbitrary fitted trace or new prime source is postulated.

For every original integer m, the tag is literally `firstSelectedDivisor(P,m)`; P did not change, therefore the tagged prime and the matched/unmatched membership are exactly unchanged, including squareful integers, the unmatched index 1, and all original endpoints. A selected `PrimeIndex` is unique from its numerical value, even when its dependent primehood proof and noncomputable choice term differ. At that same p, the transported certified count is identical. Since the original source defines `trace=p+1-pointCount`, every assigned trace `t_m` is unchanged. Unmatched m have assigned trace exactly zero on both sides, by the original definition.

The signed pair readout `ellipticKernel(B,m,n)=t_m t_n` is thus invariant for **each pair of ORIGINAL integers**. No cancellation, positivity, or absolute-value estimate is used at this stage.

## 3. Exact full ordered signed result

For the unchanged source index `I_T=endpointIndex T`, define the ORIGINAL complete matched packet

```text
E_B(T) = sum_(m,n in I_T, m != n, both tagged) t_m*t_n
       = (sum_(m in I_T) t_m)^2 - sum_(m in I_T) t_m^2.
```

The second equality is the predecessor's actual rank-one trace identity, not a new premise. Since all original `t_m` are preserved, `E_{C B}(T)=E_B(T)` for every real T.

The matched signed defect is the literal ORIGINAL source-minus-substitute kernel, including BOTH pair orientations:

```text
D_B(T) = sum_(m,n in I_T, m != n, both tagged)
  [mu(m)*mu(n)*pickupResponseGram(T,m,n) - t_m*t_n].
```

The original Möbius coefficient and causal `pickupResponseGram` do not depend on which integral Weierstrass coordinates describe the selected elliptic curve. Since the tag and `t_m` are invariant, **each original ordered signed defect term is identical** after transporting the bank. Hence `D_{C B}(T)=D_B(T)`. The rough–rough sector and BOTH rough–matched orientations depend only on the same prime set and original signed Möbius data, so they too are invariant.

The original `fullSignedResidual(B,T)` is their COMPLETE sum. Therefore, separately and without concealed RH-strength assumptions,

```text
matchedEllipticPacket(C B,T) = matchedEllipticPacket(B,T),
matchedSignedDefect(C B,T) = matchedSignedDefect(B,T),
fullSignedResidual(C B,T) = fullSignedResidual(B,T).
```

The original source identity remains

```text
pickupCross(T) = matchedEllipticPacket(B,T) + fullSignedResidual(B,T).
```

The source's distinct `signedEndpointCorrection(T)=endpointSum(T)-pickupCross(T)` is also unchanged, together with its inherited quarter-unit bound for T>=0. This proves a *mechanism-specific obstruction*: an integral model reparametrization that preserves actual point counts and hence true traces cannot alter or reduce the old signed defect. The theorem is an **invariance result**, not an independent estimate making the original residual small. It does not rule out any new noninvariant but source-preserving observation whose mixed-sign error can actually be bounded.

## 4. Concrete actual-record hostile check and independent finite computation

The existing record curve is `y^2+xy=x^3-Ax+B`, with original source constants (in `Record4239Curve.lean`). Independent exact enumeration reproduces `#E(F7)=13`, `#E(F19)=27` and therefore source Frobenius traces -5 and -7. Applying six distinct complete integral variable changes `(u,r,s,t)` with u=+1 or -1 and nonzero shears/translations leaves the original discriminant and both finite counts unchanged.

For `I={1,...,49}`, the actual selected-tagged source indices are `7,14,19,21,28,35,38,42,49`. The trace sum is `-49`, the original diagonal-square sum is `273`, and the complete matched ordered packet is `(-49)^2-273=2128` for every transformed bank. At the squareful index 49, `mu(49)=0`; the matched certified elliptic readout at p=7 is -5. Thus for (49,7), the original signed pickup source is literally zero while the elliptic trace product is +25. The complete source-minus-target defect is **-25 in each orientation**, -50 together, and cannot be removed by changing the coordinates.

The original reference program `/mnt/data/elliptic_integral_variable_change_preflight.py` (SHA256 `140dda27cd2a7ac90926e3fd989a9708c16976543daf2722044a021e59e7e0ec`) verified 1,164,771 exact integer assertions across 270 source models, 16 genuine integral coordinate changes and eight primes, including 34,560 model-change-prime instances. A second source-specific program `/mnt/data/moebius_elliptic_bank_integral_change_preflight.py` (SHA256 `2541eb7ad2c0797fd06db1d3ca66d679beeaffd7d70ae3f46ce183811503294f`) passed 488 exact assertions on the actual source record model and selected bank, including the complete ordered trace matrix and hostile squareful signed defect. Both are BOUNDED finite diagnostics, not source-bound Lean kernel, full analytic or asymptotic certificates. No claim that `pickupCross(log 49)=2128` is made: it equals `2128+fullSignedResidual` exactly.

## 5. Mathematical and formal verification boundary

The supplied new Lean module exports `transportedGoodPrimeBank`, `transported_support`, `transported_tag`, `transported_matched`, `transported_unmatched`, `transported_selectedPrime`, `assignedTrace_transport`, `ellipticKernel_transport`, `matchedEllipticPacket_transport`, `signedDefect_transport`, `fullSignedResidual_transport`, and `signedEndpoint_decomposition_invariant`. Its source count certificates are built from the preexisting true original certificates; all transport differences are source-backed.

Mathematical finite proof: WRITTEN. Original-source coherence comparison: WRITTEN. New Lean proof: SOURCE_PROOF_CANDIDATE. Compilation: NOT_RUN. Expected declaration-type elaboration: NOT_RUN. Fresh kernel: NOT_RUN. Transitive axiom/unsafe/sorry audit: NOT_RUN. No native runner or CI/scheduler/verification workflow was dispatched. Direct-main publication and exact Git blob readback require an additional non-force guarded action and are not inferred from these preliminary source objects.

The current complete-integer-coordinate result is already supplied by the concurrent `EllipticPrimeResidueIntegralVariableChangePort.lean`. The next distinct geometric problem requires a general local DVR variable change with arbitrary unit and a proved minimal-model comparison, not another integer translation wrapper.

**Effect on terminal RH routes:** no improved zero-free real-part threshold; no improved Liouville weighted-prefix exponent; no newly certified cofinal zero height; no independent upper bound on the COMPLETE original Möbius endpoint. The next decisive supplier is an arithmetic theorem controlling `matchedEllipticPacket(B,T)+fullSignedResidual(B,T)` (equivalently the original signed `pickupCross`), or the independent cofinal strict two-unit complete count. Renaming/reparametrizing W cannot discharge it. Canonical RH and BSD remain OPEN.
