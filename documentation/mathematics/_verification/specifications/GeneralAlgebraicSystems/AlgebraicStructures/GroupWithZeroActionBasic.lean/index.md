# Verification target: Group With Zero Action Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e95136dff714295d5209d69871312fb8f2a98281",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e95136dff714295d5209d69871312fb8f2a98281`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Prod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MulAction.bijective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/mulaction-bijective.md) | 56 | `result-track:2c6e85951365bb28a103c3742c8b3d39ce544861f3992edb2ad260662561894b` |
| 2 | `lemma` | [MulAction.injective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/mulaction-injective.md) | 59 | `result-track:bf189547d1e63cdf5ae7f8574b07a567c6e30745351f5ec242c6201b53601278` |
| 3 | `lemma` | [MulAction.surjective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/mulaction-surjective.md) | 62 | `result-track:e6e096a7dbc54e5b8ec3d5600acc27b97d0b16657d0a5e3a6d37c2f444a55921` |
| 4 | `def` | [DistribMulAction.toAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/distribmulaction-toaddequiv.md) | 75 | `declaration-track:86121713e16aac8bb66bde9a42aba35ae9ee89b4fa49971cb1a387ca6d11ed33` |
| 5 | `def` | [DistribMulAction.toAddAut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/distribmulaction-toaddaut.md) | 85 | `declaration-track:a4146a5b019720ac64d5056b878e93d60f763f6d9e32cebb3e5e321174770a9e` |
| 6 | `def` | [smulMonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/smulmonoidwithzerohom.md) | 94 | `declaration-track:a665328258b85966d680ac6884055d7ac84c45b0b5ba1b70bb614f62881901d7` |
| 7 | `instance` | [applyDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/applydistribmulaction.md) | 103 | `declaration-track:fa8234552ed2095066c5c161dca0b5c99e02585a6125f135a4eb2a8ec5f0b795` |
| 8 | `lemma` | [IsUnit.smul_sub_iff_sub_inv_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionBasic.lean/declarations/isunit-smul-sub-iff-sub-inv-smul.md) | 112 | `result-track:6bb55fef76041569b8c47263ec8b94a86123d2103809adf91c9d38e2d221669b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3519446362c96c81ff635d07e97b341a2f13163e7d718e2e3c28d61c5a0ecc76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
