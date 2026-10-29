# Verification target: Set Self Inv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdc199674ec2e7eb6aa7040204e8d5face34fe63",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdc199674ec2e7eb6aa7040204e8d5face34fe63`.

Source path: `GRWTSK/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean.json)

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
| 1 | `lemma` | [isSelfInv_iff_forall_inv_mem_iff](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-iff-forall-inv-mem-iff.md) | 30 | `result-track:b5d35bb253535628be74eb7333c14c47276858415757ef633fe52067ffaf4241` |
| 2 | `lemma` | [IsSelfInv.empty](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-empty.md) | 34 | `result-track:446f8513da91be986d0512600d19a3b3b4e3d69663ee49ee2388bff5e7167f1c` |
| 3 | `lemma` | [IsSelfInv.univ](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-univ.md) | 37 | `result-track:bc90876e4ebc1b0b9ce91ac4d4f3427e6286fa7237c60e132e44595746fb446a` |
| 4 | `lemma` | [IsSelfInv.inter](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-inter.md) | 40 | `result-track:392475a25806e6868172a3d3a83c006d90b6481ae481bdac0875dfecb1050226` |
| 5 | `lemma` | [IsSelfInv.union](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-union.md) | 45 | `result-track:6321036dec27188496e900ee19578ae9feab11644bb745fe927cf8db39614748` |
| 6 | `lemma` | [IsSelfInv.iUnion](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-iunion.md) | 50 | `result-track:014a6d276de16f3c08d47faafd7b6a97ddf16bbef17dd9ec96953d2a905ca94a` |
| 7 | `lemma` | [IsSelfInv.iInter](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-iinter.md) | 55 | `result-track:ec4cfb5c7d6d4633e7d612fe3f269e80021c466900fffc9d38dd83595796cdbd` |
| 8 | `lemma` | [IsSelfInv.sUnion](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-sunion.md) | 60 | `result-track:52c1bdc80e12762b64377089428ac0610cbac2d80ad607a79d53ae4e166a0322` |
| 9 | `lemma` | [IsSelfInv.sInter](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-sinter.md) | 65 | `result-track:2bf31068ae206950dbcccecbe3e14028a27662d9b54f72dab7bd43b8174bf3d9` |
| 10 | `lemma` | [IsSelfInv.prod](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-prod.md) | 70 | `result-track:4d07ab40061644bce8574a1ff5aa56a879c4f52f3201466a0c994c1bbe00b593` |
| 11 | `lemma` | [isSelfInv_compl_iff](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-compl-iff.md) | 75 | `result-track:bb07478b4ecb3775e94cf0e8ce3472d349cf522e3bdc3223d5a61b320548c8d4` |
| 12 | `lemma` | [isSelfInv_singleton_iff](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-singleton-iff.md) | 88 | `result-track:2ef6b18aaa268583ea9c052189d5cd0bd2927a20cc0069a13abf73dab0e1d179` |
| 13 | `lemma` | [isSelfInv_iff_subset_inv](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-iff-subset-inv.md) | 92 | `result-track:2d5010fb0d41546f3bf809ae7bbcdd3fd4cad04197024b56bc438e3e34a93049` |
| 14 | `lemma` | [isSelfInv_iff_inv_subset](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-iff-inv-subset.md) | 99 | `result-track:b66f395eeaf5ede9532e914f8d8e323c3ff91eb3f36407d77967915543873e0c` |
| 15 | `lemma` | [isSelfInv_iff_forall_inv_mem](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-iff-forall-inv-mem.md) | 106 | `result-track:519a58fb2930d15dcd8b253d2d27aad4ae203ecb9685164b77baed4d0c4e9f41` |
| 16 | `lemma` | [IsSelfInv.inv_mem](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-inv-mem.md) | 111 | `result-track:1690258fbc45a8b9e654f913472633f7312505790e17bb65cf2452ed13df5c5d` |
| 17 | `lemma` | [IsSelfInv.diff](../../../../GroupTheoryAndGeneralizations/SetSelfInvPublic.lean/declarations/isselfinv-diff.md) | 115 | `result-track:5510c8da506d4bf73620ad5781b91b00e9142b9d5984a41ccb13e5975dcd3b97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=350ce54ef9eeddf89e5df25a1dfee78df6859653c4ec195a9e2c3df33bfb7c1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
