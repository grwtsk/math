# Verification target: Succ Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f0880599e7dbde1061ee55a512071749dceed02",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccOrder/Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f0880599e7dbde1061ee55a512071749dceed02`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccOrder/Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccOrder/Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [succ_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/succ-natcast.md) | 23 | `result-track:a707d3a5f765fbc7b2ddc51a167ec9ea3076a63cbd0ce2aa176f39fedae798b9` |
| 2 | `theorem` | [succ_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/succ-top.md) | 27 | `result-track:766f3f009ab7e4a2153d9662486233f77a8f6e6a6f55d49573df9f4c2e993df3` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/instance.md) | 29 | `declaration-track:b78f0bc3f1c7ef6ded6dfcc63bf2138fee5bb05c8c21e4d192eb03678faba3b8` |
| 4 | `theorem` | [succ_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/succ-def.md) | 33 | `result-track:def6c726af1b0eaa4d867ee6c78a11a6958bc1343b58894d8d180fc0fb8609d3` |
| 5 | `theorem` | [add_one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/add-one-le-iff-source-edition-3.md) | 36 | `result-track:a9d531341fdb680f7bc154899b020c24f61f5ba59e3ce5451d38f57f0085ea35` |
| 6 | `theorem` | [add_one_le_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/add-one-le-iff-source-edition-2.md) | 39 | `result-track:9c5325533f80211d79066e5a7a398ed1e3d75d357dd3bac60bec3c0d16adbe85` |
| 7 | `theorem` | [natCast_add_one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/natcast-add-one-le-iff.md) | 42 | `result-track:fab411561dfeaeefcf1eef77535c05fd22e12087a1cb8d028a1025a5e86472b5` |
| 8 | `theorem` | [add_one_le_natCast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/add-one-le-natcast-iff-source-edition-2.md) | 47 | `result-track:3966e77bf08938e4a0c245f6928bd28ab169c80bf20f3d69a049bca53bc03a86` |
| 9 | `theorem` | [one_le_iff_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/one-le-iff-ne-zero.md) | 53 | `result-track:c6b02f278e1d27a806d4f893e87be1653d9265a0499fcba1d105536f16b74cd3` |
| 10 | `lemma` | [lt_one_iff_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/lt-one-iff-eq-zero.md) | 57 | `result-track:f488370b4b05d64593988f8bdf9d1a4ac2e033ec5c7566ea673f110078417c63` |
| 11 | `lemma` | [le_one_iff_eq_zero_or_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/le-one-iff-eq-zero-or-eq-one.md) | 61 | `result-track:3af15072b6e1a037a68b49ad4552cb77dbb63013875552899280fd5dc4b621c3` |
| 12 | `theorem` | [lt_add_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/lt-add-one-iff-source-edition-3.md) | 64 | `result-track:b48db645ecb9252688d9f1c52d2065972be4f44e6ab26e540ceabbe878401947` |
| 13 | `theorem` | [lt_add_one_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/lt-add-one-iff.md) | 67 | `result-track:3b78ed36eb48df9c8e518dec795896b56249008061c1abab79dee2ac23dc7d2a` |
| 14 | `theorem` | [lt_two_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/lt-two-iff.md) | 71 | `result-track:3487433a02082dd084ad609e529d1c1704bd63047840f720fd48df5230ee146b` |
| 15 | `theorem` | [lt_natCast_add_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/lt-natcast-add-one-iff.md) | 74 | `result-track:cc34f4f9aa92d9989614bc9cdc31597b99a1f167eabff743fbd3ac80940349ca` |
| 16 | `theorem` | [natCast_lt_add_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/natcast-lt-add-one-iff.md) | 79 | `result-track:ad1e3d9719afa88e8fe5be39a3b9a51e5a64027a205e5424b82595fdf3de3de9` |
| 17 | `lemma` | [le_sub_one_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/le-sub-one-of-lt.md) | 84 | `result-track:d24b54312dd8462971e9d9932ffd9521609087383807f1522c0ab4680f23ebec` |
| 18 | `lemma` | [lt_add_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/lt-add-one-iff-source-edition-2.md) | 92 | `result-track:b18f2cb98a5e46351dc731da6cf7c99b68b5804ad39f301cd47c77f65d1b74c6` |
| 19 | `lemma` | [add_one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/add-one-le-iff.md) | 100 | `result-track:81984c47e65ec418a8d9a86d25978eb7710874d40cc154e282a734e51d056888` |
| 20 | `lemma` | [add_one_le_natCast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/add-one-le-natcast-iff.md) | 107 | `result-track:2b8e6b42211f9e037932455ed9fdcf942861f103799cc9ae1b77c882278a80ce` |
| 21 | `lemma` | [add_one_le_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SuccOrderPublic.lean/declarations/add-one-le-zero-iff.md) | 115 | `result-track:8b2dbc1130370d7d932bf80e70cf869ae5236bece261231761cc4f7e84534d68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=441d2fe40fb21a712abd72f00151eca552fcc013f512e8b2db9aec6b43b9f7c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccOrder/Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccOrder/Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
