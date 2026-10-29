# Verification target: Symmetric Algebra Basis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfd061db9d4354e3106b3d12f64ecd82b5e87899",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant57b3f771dbe7b1e3bcc3abb98b4164df6eb92afad1e5ad2b417754492974278e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfd061db9d4354e3106b3d12f64ecd82b5e87899`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant57b3f771dbe7b1e3bcc3abb98b4164df6eb92afad1e5ad2b417754492974278e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant57b3f771dbe7b1e3bcc3abb98b4164df6eb92afad1e5ad2b417754492974278e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.SymmetricAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivMvPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/equivmvpolynomial.md) | 42 | `declaration-track:1d60a5a65ab7736952fd4ebba7179106ad65b55cc38bcf07b021ef1244365249` |
| 2 | `lemma` | [equivMvPolynomial_ι_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/equivmvpolynomial-apply.md) | 51 | `result-track:374d6b590d5923916b44386b7abbb6d68dda0519a90c5b3508d21a403fc4849d` |
| 3 | `lemma` | [equivMvPolynomial_symm_X](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/equivmvpolynomial-symm-x.md) | 56 | `result-track:6f3ce59dd99c6f3f5a55196d24b01170cb4bb703666b3077d4a746f2aa3c7800` |
| 4 | `def` | [_root_.Basis.symmetricAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/root-basis-symmetricalgebra.md) | 62 | `declaration-track:5b058b1a18628d8055907d36562143b016719bd2c1f0afe39889c2a6d57a80ac` |
| 5 | `instance` | [instModuleFree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/instmodulefree.md) | 67 | `declaration-track:c4c31d3ac8db1f75368de9aceb82dadd363330d8584edea8f92997498b256e3d` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/instnozerodivisors.md) | 73 | `declaration-track:84652b6470747d1d398bd8d619463d8fe97572b19ce2473fe3d937ec823622c5` |
| 7 | `instance` | [instIsDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/instisdomain.md) | 84 | `declaration-track:dd5203e3a13b6b804873506f677435ebae55a49b63cfe38e71f1574505a607f6` |
| 8 | `lemma` | [rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasis.lean/declarations/rank-eq.md) | 90 | `result-track:fed79902cc430d5ae2c84908f115b372436cb2d6373fe767c04b619705cc88c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3823d1380bc58301974cf5eefd074204b0f6e94d92c0ac33f57a2b14be505a44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant57b3f771dbe7b1e3bcc3abb98b4164df6eb92afad1e5ad2b417754492974278e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variant57b3f771dbe7b1e3bcc3abb98b4164df6eb92afad1e5ad2b417754492974278e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
