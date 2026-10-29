# Verification target: Pretransitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0044ae81210976dda91488e7b2d101c13e9891c0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0044ae81210976dda91488e7b2d101c13e9891c0`.

Source path: `GRWTSK/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.TypeTags` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddAction.IsPretransitive](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/addaction-ispretransitive.md) | 49 | `declaration-track:6410eaf34f2f58084ab18928677871a4516f9edecd9a775b0499e9add0e4172f` |
| 2 | `class` | [MulAction.IsPretransitive](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/mulaction-ispretransitive.md) | 56 | `declaration-track:a268876ccc66731309a7ebae8561e82f0fa827ced2319ec792fa25f0260b3463` |
| 3 | `instance` | [MulAction.instIsPretransitiveOfSubsingleton](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/mulaction-instispretransitiveofsubsingleton.md) | 61 | `declaration-track:377d7bf1e8cff2b6d9e295dd9a4bec6b35dcd420c4538bd9c7b391e08a97a988` |
| 4 | `lemma` | [exists_smul_eq](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/exists-smul-eq.md) | 71 | `result-track:362479f306eb318a63dbdcc162774e95a8c1324c15a9cef64e5e2babc5feab96` |
| 5 | `lemma` | [surjective_smul](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/surjective-smul.md) | 74 | `result-track:cbadb511bb0e661ef3b2c1f8ef07482bb7f2699909126620ebe74ca815d2441b` |
| 6 | `instance` | [Regular.isPretransitive](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/regular-ispretransitive.md) | 78 | `declaration-track:5cee04324db5cd926691c9c3ef259f14b0b4df82381fb857ac272ae276195d14` |
| 7 | `instance` | [Regular.isPretransitive_mulOpposite](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/regular-ispretransitive-mulopposite.md) | 83 | `declaration-track:f5bdc19bec02b3cd2b3b27405c0db7cc2d6bca3d050a97d7e8eb3d01839f446f` |
| 8 | `lemma` | [IsPretransitive.of_smul_eq](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/ispretransitive-of-smul-eq.md) | 91 | `result-track:743608f9c5df3782f4d04f5176d4d3981fbf62505817e6ce11f9777832086956` |
| 9 | `lemma` | [MulAction.IsPretransitive.of_isScalarTower](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/mulaction-ispretransitive-of-isscalartower.md) | 100 | `result-track:ef29c554af8d11669481bd30a02cf4435b70a55cfe1b789b6c8498a3ff8287cb` |
| 10 | `instance` | [Additive.addAction_isPretransitive](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/additive-addaction-ispretransitive.md) | 112 | `declaration-track:daa775b0b9c978ed410f04bd0c8c7b9bb83574863028876bdbcdfe1f53898d0e` |
| 11 | `instance` | [Multiplicative.mulAction_isPretransitive](../../../../GroupTheoryAndGeneralizations/Pretransitive.lean/declarations/multiplicative-mulaction-ispretransitive.md) | 116 | `declaration-track:6362d70a4162c852d4a0f973cccd1b68daa0eef768a568996ee9fe70c75b23f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01acff6bc34eec6d1244b97cefd854fa259ec6c91998e21dcdd29d8eb3313da2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
