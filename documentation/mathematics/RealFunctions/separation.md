# Smooth compact tests separate continuous residuals

The [separation module](../../../GRWTSK/MeasureAndIntegration/Separation.lean)
and [even-test module](../../../GRWTSK/MeasureAndIntegration/EvenSeparation.lean)
are complemented by the
[pole-variation module](../../../GRWTSK/MeasureAndIntegration/ExponentialMomentVariation.lean).
Together they prove eleven theorems and define the point spike and differential
variation. Their complete stored family has seventeen declarations, including
generated equations and proof helpers. The independent checker compiles these
sources at trust zero and audits the full stored family against `propext`,
`Classical.choice` and `Quot.sound`.

If a continuous real residual is nonzero at a point of an open set, there is a
smooth compactly supported test whose topological support lies inside that set
and whose Lebesgue pairing with the residual is strictly positive. The proof
chooses a neighborhood where the residual has the same sign as its value at the
point, uses a nonnegative smooth bump, and retains integrability of the product.
The residual itself need not have compact support or a globally finite integral.

Consequently, a continuous residual vanishing against every such test is zero
pointwise on the open set. Failure of interior C² supplies a nonzero point and
therefore a smooth separator. Continuity is essential: the checked point spike
is one at zero and zero elsewhere, so it is nonzero while every Lebesgue test
pairing vanishes.

For an even residual on a reflection-invariant open set, replacing a separating
test `g(t)` by `g(t) + g(-t)` keeps its smoothness and compact interior support.
Its pairing is twice the original positive pairing. Thus even smooth tests
already determine an even continuous residual pointwise. The reflection change
of variables uses Lebesgue measure and retains product integrability.


## Source and verification scope

[Source](../../../GRWTSK/MeasureAndIntegration/Separation.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/TestFunctions/Separation.lean`](../../../GRWTSK/MeasureAndIntegration/Separation.lean).

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c51d23b388f144d66eabf30c1816386e8775c127035e37eeeac0c1e4c62ff5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/TestFunctions/EvenSeparation.lean","GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean","GRWTSK/Analysis/TestFunctions/Separation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
