# Verification target: Group Self Inv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ba10a376483b5a4ac9e01717bbc3bf80f5bd67d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelfInv/Variantcd43de4b2950ecaff2ef3835b8f576ecaf4021e6a2b34097afa7e0ecad85fabe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ba10a376483b5a4ac9e01717bbc3bf80f5bd67d`.

Source path: `GRWTSK/Algebra/GroupTheory/SelfInv/Variantcd43de4b2950ecaff2ef3835b8f576ecaf4021e6a2b34097afa7e0ecad85fabe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelfInv/Variantcd43de4b2950ecaff2ef3835b8f576ecaf4021e6a2b34097afa7e0ecad85fabe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSelfInv](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv.md) | 40 | `declaration-track:3bb0fb6aed6b35fb6c6ab5e74b7752db0e0b92816e60c88417b8f592136cd304` |
| 2 | `lemma` | [isSelfInv_iff](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-iff.md) | 43 | `result-track:05cb637abc095b95a3625a005a47b1317164d751c6a8e302c25369c22fa4d24c` |
| 3 | `lemma` | [IsSelfInv.eq_inv](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-eq-inv.md) | 49 | `result-track:e481aa518e2b98bcd4c4082a425845729c1f8eebe4b366e4146a97f711aa107b` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/instance.md) | 52 | `declaration-track:4f9952a9d89f21aec8d64a6f89f2e2d0d234bde1003232e823fcd42753729f4c` |
| 5 | `lemma` | [IsSelfInv.one](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-one.md) | 57 | `result-track:b8b2badfcd1dd85f02e19c07630cede5cd32e4d36d41f4db4152b621d1c91982` |
| 6 | `lemma` | [isSelfInv_inv](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-inv.md) | 60 | `result-track:9e0beddfdf5c623542c24d9c17cb8336f83bf5709e5dd2cc8fc5a3a226bbc2ca` |
| 7 | `lemma` | [IsSelfInv.conj](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-conj.md) | 67 | `result-track:c069156a62bed3f8725141e5f606c7b9c90042a90f5f633296d6e342f1df2100` |
| 8 | `lemma` | [isSelfInv_conj_iff](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-conj-iff.md) | 72 | `result-track:efbb16a52555eb17cf152a8763bd06745964db50f932510d3feb939fd8b2f8f9` |
| 9 | `lemma` | [IsSelfInv.pow](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-pow.md) | 76 | `result-track:47594049fe1e213ab4ccd7d8c5fe00f146cd9cf1cf3ea24cb7d80c0be78aec64` |
| 10 | `lemma` | [IsSelfInv.zpow](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-zpow.md) | 81 | `result-track:eb8493186cfbfd26ab86ad001e8d99d3b4f41950956378605c3369a938ba5c62` |
| 11 | `lemma` | [isSelfInv_iff_sq_eq_one](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-iff-sq-eq-one.md) | 86 | `result-track:f2e9121dd8c886b29f10b2c53c1e4f380ae9e7a5055deb754aa787640e3a51cf` |
| 12 | `lemma` | [IsSelfInv.mul](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-mul.md) | 94 | `result-track:4bc145429f82bea197d80f5052e63e572b3e44ff70ab82eef520344c2a32cdd7` |
| 13 | `lemma` | [IsSelfInv.div](../../../../GroupTheoryAndGeneralizations/GroupSelfInvNamespacedPublic.lean/declarations/isselfinv-div.md) | 98 | `result-track:9aea42ee8f98b4f4b5cf221b7503edfe9180b6e8a2586ccabc9fba0b50d54957` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f0e89cb62adb57a64a162851074efa617697e4c48a63b8e63b2898e12c93ff7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SelfInv/Variantcd43de4b2950ecaff2ef3835b8f576ecaf4021e6a2b34097afa7e0ecad85fabe.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SelfInv/Variantcd43de4b2950ecaff2ef3835b8f576ecaf4021e6a2b34097afa7e0ecad85fabe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
