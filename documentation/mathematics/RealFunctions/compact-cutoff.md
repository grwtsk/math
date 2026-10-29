# Compact smooth Schwartz cutoffs on a real interval

For a real radius $T\ge0$, define the actual complex-valued function
\[
\phi_T(s)=\theta(T+1-s)\theta(T+1+s),
\]
where $\theta$ is Mathlib's real smooth transition, embedded in $\mathbb C$.
The function is smooth, equals one for $|s|\le T$, and has support within
$[-T-1,T+1]$. Compact support and smoothness construct an actual Schwartz map.
The cutoff at $T=0$ still equals one at zero.

## Support boxes and active products

For a finite family of functions $W_i:\mathbb R\to\mathbb C$, real coefficients
$a_i$, and nonnegative support radii $M_i$, suppose $W_i(y)\ne0$ implies
$|y|\le M_i$. Set $T=\sum_i |a_i|M_i$. A nonzero product of the window
values implies $|\sum_i a_i y_i|\le T$, so this actual cutoff is one there.
This pointwise support argument requires neither smoothness nor integrability
of the functions $W_i$.

## Verification and limits

The [source](../../../GRWTSK/RealFunctions/CompactCutoff.lean),
[joint positive controls](../../../GRWTSK/MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean),
joint native receipt (artifact:gitblob:e441245ed821fcd9d4711747c6d207e98a9c5e6e)
and integration record (artifact:gitblob:fb51031e146f7d7409e02fab8c4a9331ca3f94cf)
bind the actual reusable construction. This calculus module imports no Gaussian
module. The [Gaussian separation application](../IntegralTransformsOperationalCalculus/gaussian-coupled-separation.md)
uses this construction and is checked in the same analytic closure; that census
must be counted once.

Pinned Lean 4.33.0 checks trust zero, fatal warnings and every owned declaration
and transitive axiom, allowing only `propext`, `Classical.choice` and `Quot.sound`.
Clean pinned dependency objects are reused and fingerprinted; their sources
and the whole umbrella are not rebuilt. The construction adapts the cutoff
idea in OpenAI's pinned `LogProfiles` using the actual pinned Mathlib
`Real.smoothTransition` API. OpenAI project credit, Sébastien Gouëzel and
Yury Kudryashov's smooth-transition credit, and Apache-2.0 terms remain retained.
Human direction: grwtsk contributors; adaptation/formalization/checking: OpenAI Codex.
Correlated review is not independent validation. No operational cache or RH
acceptance follows from this cutoff.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Calculus/CompactCutoff.lean`](../../../GRWTSK/RealFunctions/CompactCutoff.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | Unavailable |
| Theorem/lemma commands | Unavailable |

Source-command totals are unavailable for this primary source.

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19324ea12f720ef6bde10f9b0e154e1906ec4e81967601997092c474ede9f19d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/CompactCutoff.lean","GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean","GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
