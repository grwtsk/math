# Free Dirichlet eigenvalues and sine basis


The [free spectrum source](../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeDirichletSpectrum.lean) proves the entire finite eigenvalue list

$$\lambda_{k,N}=2\cos\left(\frac{\pi(k+1)}{N+1}\right),\qquad 0\le k<N.$$

Its sine vectors satisfy both zero boundary conditions and the actual matrix equation. Distinct eigenvalues give linear independence; the dimension equality makes the family a full basis. Diagonalization in that basis proves the characteristic polynomial and its root multiset, hence equality with the actual inclusive eigenvalue count. No sorted-eigenvalue formula is assumed.

The [free Dirichlet spectrum source](../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeDirichletSpectrum.lean) proves the sine eigenvectors with both boundary conditions, their linear independence and the dimension equality giving a complete basis. Diagonalization proves the characteristic polynomial and full eigenvalue multiset $2\cos(\pi(k+1)/(N+1))$ for $k<N$. Thus the actual inclusive free count, including multiplicities, equals the cosine-list count.


## Source and verification scope

[Source](../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeDirichletSpectrum.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Spectral/FreeDirichletSpectrum.lean`](../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeDirichletSpectrum.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 17 |
| Theorem/lemma commands | 13 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2be4b218bffa01da05c79532d1dce188fde149290bfa892cd7c2bc61584a518 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum.lean","GRWTSK/Spectral/FreeDirichletSpectrum.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
