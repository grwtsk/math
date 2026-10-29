# Verification target: Linear Algebra Matrix Hermitian Functional Calculus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "101d7073a58591399f144748468a4680342d9798",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `101d7073a58591399f144748468a4680342d9798`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Spectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Matrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Units` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_real_spectrum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/finite-real-spectrum.md) | 40 | `result-track:b618b24c9460cd9e2c1a48d76a33afbe328244371321e7c70e93be46d514c000` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/instance.md) | 44 | `declaration-track:3d4366753f64a90c1aa8edfdde2f0f5a36890dc4d0f1eb64ecbf16a86683e8a5` |
| 3 | `theorem` | [eigenvalues_eq_spectrum_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/eigenvalues-eq-spectrum-real.md) | 52 | `result-track:fcd38c8b136cf5f2176ce5ce05c48f1b1b51d9a032860ac8a16f487a2d6b8cf3` |
| 4 | `def` | [cfcAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/cfcaux.md) | 63 | `declaration-track:e2ef8d64865921ab38845571e691846c3db6eede42a1b5e8502157f7dbf8e6a2` |
| 5 | `lemma` | [isClosedEmbedding_cfcAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/isclosedembedding-cfcaux.md) | 92 | `result-track:7112132406b9c0f7024c7a76506f9d134ef9301284e6b42d45f09d2dcb1738c3` |
| 6 | `lemma` | [cfcAux_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/cfcaux-id.md) | 112 | `result-track:36b3ae15cba76082f4c2cddead39d68d02fd696388f3312f07f941e0876cf506` |
| 7 | `instance` | [instContinuousFunctionalCalculus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/instcontinuousfunctionalcalculus.md) | 118 | `declaration-track:ebc3bf7a278ae6a1a3ffa2830a7688ef1e99c6628ad61f64e91f8c48a7e95db0` |
| 8 | `def` | [cfc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/cfc.md) | 152 | `declaration-track:fde29e8f6d07f4a7fee30cebe716a4a02af41a6ff3a88672df3ab0c667948fe7` |
| 9 | `lemma` | [cfc_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixHermitianFunctionalCalculus.lean/declarations/cfc-eq.md) | 156 | `result-track:e870699be8d7c780f79470e6bf1fea85d5931aff773b57cf604f793c81c21ac6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfa9d556d03efd5be12a9f08c04538aa31a97909df3c5f64340b3f69bcb14778 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant6f35326a9fed0dc819df5becc9b5b421e9e8c45bb8875297451209013744d4b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
