# Verification target: Distrib Mul Action Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c417e7e7a4e1c550458a3c880dd2b2588ac372e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/DistribMulActionNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/DistribMulActionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c417e7e7a4e1c550458a3c880dd2b2588ac372e`.

Source path: `GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.MulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DistribMulActionNamespaced.lean/declarations/instance.md) | 29 | `declaration-track:3fce664779043fdd9277b93dd5f5c36cb69441baa7b20e79aa6695487fdc6535` |
| 2 | `instance` | [distribMulAction](../../../../GroupTheoryAndGeneralizations/DistribMulActionNamespaced.lean/declarations/distribmulaction.md) | 34 | `declaration-track:6079085fabd121768e16e056023a176452624c30cc63b52d08e3656ddd695f48` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DistribMulActionNamespaced.lean/declarations/instance-source-edition-2.md) | 38 | `declaration-track:78a1a1bdeff3737cba2cfe767a1fbfac3e763c52902396b7b7c908a657aaaf8a` |
| 4 | `instance` | [mulDistribMulAction](../../../../GroupTheoryAndGeneralizations/DistribMulActionNamespaced.lean/declarations/muldistribmulaction.md) | 43 | `declaration-track:e6b0b1345eef235ba237c186d078da55bbff4f7f13e95a1e58217e49144ff8bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b580ce4949213a733afb2a6870985f0b33f49fa1294bbe599e6a6e723e95e0fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
