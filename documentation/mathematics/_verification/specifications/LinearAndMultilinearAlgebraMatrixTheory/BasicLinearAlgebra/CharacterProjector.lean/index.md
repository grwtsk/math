# Verification target: Character Projector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "511b17f195107105c1a19dc9255032f944be442b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CharacterProjector/Variant200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `511b17f195107105c1a19dc9255032f944be442b`.

Source path: `GRWTSK/Analysis/CharacterProjector/Variant200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CharacterProjector/Variant200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CharacterIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterindex.md) | 26 | `declaration-track:e6c79b74527c6096a62d1052cdeec7cef585b0f2e41395aa26ceed46bc905e5b` |
| 2 | `instance` | [characterIndexFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterindexfintype.md) | 29 | `declaration-track:e7667f624cbd80b54753239d4d32d1cef6cf581f942c7e31218ce13a0d2f3da0` |
| 3 | `abbrev` | [CharacterHilbert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterhilbert.md) | 33 | `declaration-track:4fefa09b3ef98ac7bf836cbbe36fe32f32e4f3d8ad270d76162ae9e4aded585e` |
| 4 | `def` | [rightRegularMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/rightregularmatrix.md) | 38 | `declaration-track:36eed7e75369820588d2032b4065ecd1b994a4e3c0e0b4dfa55224825737a656` |
| 5 | `theorem` | [rightRegularMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/rightregularmatrix-apply.md) | 45 | `result-track:4b20c5f0f867727c9dd40d15968399ea0f5e2ca4b388535550e6c7ecc2135e85` |
| 6 | `def` | [characterRegularAverageMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterregularaveragematrix.md) | 53 | `declaration-track:8e73b3c803e95b6a4377958cd3549d003b56315420238e8dcfe166bdc2a972c7` |
| 7 | `def` | [characterNormalization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characternormalization.md) | 63 | `declaration-track:bab270f08b138a5dae8c1709ca5a30fb2f0a712697d251b985f8025fd5dfe84f` |
| 8 | `theorem` | [characterIndex_card_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterindex-card-pos.md) | 66 | `result-track:66caf31313cccf72006c465a8bb831300eab348212083440705de638dbc3300f` |
| 9 | `theorem` | [characterNormalization_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characternormalization-nonnegative.md) | 70 | `result-track:5cda0b653aeef888d603d2cb6f42758a67483dd9b34342e2d7fe500c8b9e7790` |
| 10 | `theorem` | [characterNormalization_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characternormalization-sq.md) | 75 | `result-track:a5276a48eaad8651322f9d529263f201d86f810fb30567d095b0e3ecee7a278c` |
| 11 | `def` | [characterVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/charactervector.md) | 85 | `declaration-track:3ed2d96aac6680ed9f8a4f59402eefcc8cd0087ac53b0e25289a70d6a7899903` |
| 12 | `theorem` | [characterVector_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/charactervector-apply.md) | 91 | `result-track:900e32f00e59feefeb36907da5a8c0aeb4484e92677fa596b82f713e0b7264ff` |
| 13 | `theorem` | [characterVector_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/charactervector-norm-sq.md) | 99 | `result-track:741992d443b29667e6b42fb275806972a7f10ee520685dfc565cfb7ef3108a00` |
| 14 | `theorem` | [characterVector_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/charactervector-norm.md) | 113 | `result-track:437f5abb153f99f9c7e8bcb685f64a2211a395d8b437064b78ae4f9333180f9f` |
| 15 | `theorem` | [conj_character_inv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/conj-character-inv-mul.md) | 120 | `result-track:8d985f361abc2ba1b873df73f7eb3dd65eaba5f3e7ec2acc51e16ea1f4d7c75d` |
| 16 | `theorem` | [characterRegularAverageMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterregularaveragematrix-apply.md) | 136 | `result-track:ea6c9f3fb8905e1a10eac29f903d82abaf9915150b2108bbd0f4f69dd7ee964f` |
| 17 | `theorem` | [characterRegularAverageMatrix_eq_outer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterregularaveragematrix-eq-outer.md) | 165 | `result-track:d71985ea59c8d5a3fa778b5f6fd0eef8e83553082d046005b0e0645273bdd17a` |
| 18 | `def` | [characterProjector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterprojector-source-edition-2.md) | 188 | `declaration-track:668899a2834fc1f0024a14bd1ec425e865e383858df8b125b733aaa6ba5bea54` |
| 19 | `theorem` | [characterProjector_eq_regularAverage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterprojector-eq-regularaverage.md) | 194 | `result-track:a88580b538e31cfb82fea60ef31ea1ff1344d87d50042c2d313b4e969411e392` |
| 20 | `theorem` | [characterProjector_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterprojector-idempotent.md) | 211 | `result-track:fd48487c8292cbfcc0ced1e6792ccbb9a394b153ef962190cb18783e4d5535c4` |
| 21 | `theorem` | [characterProjector_selfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterprojector-selfadjoint.md) | 216 | `result-track:783bc617b4426c6b3403418313584e9fd26ff14bca32ca4bcdf610fee7187021` |
| 22 | `theorem` | [characterProjector_orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterprojector-orthogonal.md) | 221 | `result-track:94912207d58dfefd70874f6e1993fe3b57c4a659ffd6e497716d4a6b9fbecfb5` |
| 23 | `structure` | [CharacterProjector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/characterprojector.md) | 228 | `declaration-track:42712cd99f12abf614f1aa1533608cbcf24d918d8344afb0f11d7732c20ac5df` |
| 24 | `def` | [canonicalCharacterProjector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacterProjector.lean/declarations/canonicalcharacterprojector.md) | 233 | `declaration-track:afb0b5a6e596f24723cc529de4ffb52e0659ae2eb13337ca18d25952060cbd10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3abb2b40a53e490cf31ec20cbc98ab9a4b51342caaaf78ee0461086938a31a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CharacterProjector/Variant200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461.lean","GRWTSK/_verification/specifications/Analysis/CharacterProjector/Variant200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
