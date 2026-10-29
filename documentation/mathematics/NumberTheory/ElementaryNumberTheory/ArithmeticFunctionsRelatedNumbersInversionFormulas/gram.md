# Ordered response Gram and diagonal energy

Let $H_T(m,n)=\int_0^T h_m(u)h_n(u)\,du$. The full ordered signed sum satisfies

$$
\mathcal E(T)=\int_0^T W(u)^2\,du
=\mathcal D(T)+\mathcal X(T),
$$

where $\mathcal D(T)=\sum_n\mu(n)^2H_T(n,n)$ and $\mathcal X(T)=\sum_{m\ne n}\mu(m)\mu(n)H_T(m,n)$. This response Gram is distinct from the original source-vector correlation Gram.

The nonsingular comparison is constant below one and proves

$$
0\le\mathcal D(T)\le2T^2-8T+16(1-e^{-T/2})\le2T^2.
$$

It never integrates the singular inverse-square-root expression below one. These identities and inequalities cover every nonnegative real time, including zero and noninteger cutoffs.

The original native pickup uses the full closed Möbius inventory and exact
moving reset. Its energy splits into the independently defined diagonal and
every ordered signed cross term. The native diagonal has a proved polynomial
allowance; native Gram positivity supplies the cross lower bound. Direct literal
native H_T/prescribed correlation G_A equality is refuted by the admitted
touching label-eight example. A transformed or renormalized comparison requires
its own theorem.


## Source and verification scope

[Source](../../../../../GRWTSK/MeasureAndIntegration/GramDiagonalBound.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean`](../../../../../GRWTSK/MeasureAndIntegration/GramDiagonalBound.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 21 |
| Theorem/lemma commands | 20 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../../../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e4aef88a0e3698ccc7b98d62ef65ae85740a34feadac449591f6e471463dcb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
