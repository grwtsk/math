# Verification target: Set Like Basic Delab Subtype Set Like

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b455dcaaf28d5075cc1544348565879d1481ec96",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variante10ec4b8abdd0b63caf50f1999a0b5cbb48c54055479a38cb16c7e6d2122d397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b455dcaaf28d5075cc1544348565879d1481ec96`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variante10ec4b8abdd0b63caf50f1999a0b5cbb48c54055479a38cb16c7e6d2122d397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variante10ec4b8abdd0b63caf50f1999a0b5cbb48c54055479a38cb16c7e6d2122d397.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Monotonicity.Attr` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SetLike` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SetLike](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/setlike.md) | 96 | `declaration-track:930f9a4c03667b5a6d8caa0493dc11c59b0d62ad4e19d20b31097b4ea7d35895` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/instance-source-edition-3.md) | 107 | `declaration-track:4d28a5d7989c4043b3a0dce43c52ef9ec870b55987a794bbe748822467ef0170` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:e3cb9282756545c197c6afaa818c3c99ae2741e93ec2a01e51b41dcecbb65c70` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:1d824829382ba001f00d04eef3d948aa7df1e2c11ce4914decbdf820e21b8699` |
| 5 | `def` | [delabSubtypeSetLike](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/delabsubtypesetlike.md) | 122 | `declaration-track:c0d02f3dda445bf11b54a6d5dd81e5d608addc9a98f79ca531d770b34bb27d8d` |
| 6 | `theorem` | [coe_sort_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-sort-coe.md) | 135 | `result-track:efe24d73907ea36846f1ddd718ecb08927fa94377bd0419b9a349e5412333b77` |
| 7 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/exists.md) | 140 | `result-track:9cb0af6dfb322ee8410502432e10b46609d41043d3571c8df8d48f77e82e851c` |
| 8 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/forall.md) | 143 | `result-track:bd83e5f8a0497a3aa2b020caae4aa0aef2651c838a4195c6d71cfc69061f9ff9` |
| 9 | `theorem` | [coe_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-injective.md) | 146 | `result-track:75ae9e0785c2d0c3bba2d55c6857fbfb5aa3d4aca59b68ee7e69cd6fde8da06d` |
| 10 | `theorem` | [coe_set_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-set-eq.md) | 150 | `result-track:22bf84e4098f8ff04ec0f7c9b8a8f0a0c9719bcb33640151108d9dc96570da7f` |
| 11 | `lemma` | [coe_ne_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-ne-coe.md) | 153 | `result-track:5ed6e6afd5f9ad4d8b3550bc02a1c5587a9d06978bb376fa673d8f1ae8cbddcf` |
| 12 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/ext-source-edition-2.md) | 155 | `result-track:d2916a7dc10ccfa616da81b05580eafe12a32faddf109904813b2ff6a0f4958f` |
| 13 | `theorem` | [ext'_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/ext-iff.md) | 158 | `result-track:515b4e5efce94a64658306df224927746ad0f4630fda734b6233f8bdca650930` |
| 14 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/ext.md) | 162 | `result-track:6a2b4eb7c5306c340acb76fa5289668564d73e17e158cce9059e2a0fe2b26942` |
| 15 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/ext-iff-source-edition-2.md) | 165 | `result-track:e3aa54d2efc55938e4e07b3b6f6bda1d8b839890adacffcd2c510647818f113b` |
| 16 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/mem-coe.md) | 169 | `result-track:b7ba46babb6cc5b8b6bd6ae22ba8cc20ac8511ff98a1bf28dd4364e4365b934e` |
| 17 | `theorem` | [coe_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-eq-coe.md) | 173 | `result-track:5eea8c16e1ac23a54fca858aa930d988e7b46f3382e0dbb598635e2004784f86` |
| 18 | `theorem` | [coe_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-mem.md) | 177 | `result-track:5fd7a2a28c322a7b59277a48cba2fa9b9d32078f7603850136621c4d795d94f7` |
| 19 | `lemma` | [mem_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/mem-of-subset.md) | 181 | `result-track:d6a11a54460716056b64a5bb4c46d16a3ce7e601976005af8a74670daea15a45` |
| 20 | `theorem` | [eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/eta.md) | 184 | `result-track:03f214d3a4e401460c885dc8aafdf9bae3f9eda9c845d552f886f4b34fed769c` |
| 21 | `lemma` | [setOf_mem_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/setof-mem-eq.md) | 186 | `result-track:74b9c3994811db2fd3753f076144dabcbf3bff38e230694071d80b695c3bc2ef` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/instance.md) | 188 | `declaration-track:1bf8999be36ee7d33013676665fb185965c78714ae77eb888f4bc4fc33216ae5` |
| 23 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/le-def.md) | 192 | `result-track:6ea15849f557564d7978d75a8c207778490523208155f7ebfb8a9e12626c37c1` |
| 24 | `lemma` | [coe_subset_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-subset-coe.md) | 195 | `result-track:c214133705ac443fa248ee28f8c9947002f06bce3d46cbcfecc7f73ef7e182bc` |
| 25 | `lemma` | [coe_ssubset_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-ssubset-coe.md) | 196 | `result-track:0f705fb1c816b6f588fcbfcdbf6799f2ff89a3a327b980df0206ccd347460a92` |
| 26 | `theorem` | [coe_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-mono.md) | 202 | `result-track:bbab656afe5c3f215f239b241aa7218e7baf57e5ab2260ece5bc520079907641` |
| 27 | `theorem` | [coe_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/coe-strictmono.md) | 205 | `result-track:35c9f685745ada0d581b41182b99f6eadca2ba399d4126cf7e8b513288a5dab8` |
| 28 | `theorem` | [not_le_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/not-le-iff-exists.md) | 207 | `result-track:befd550f572aba4a5e206c28fffe5c1651f3b25dadb320702b4e2b7cccef1ad0` |
| 29 | `theorem` | [exists_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/exists-of-lt.md) | 210 | `result-track:e576879b73be931a12a5fa33dc06c13dfd4ba827eba1df5625a64c9e5c9122be` |
| 30 | `theorem` | [lt_iff_le_and_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/lt-iff-le-and-exists.md) | 213 | `result-track:f948293e11240b8bfff0cd481362824f05e44df191dcbfb47d838843b49feb24` |
| 31 | `abbrev` | [instSubtypeSet](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/instsubtypeset.md) | 217 | `declaration-track:a722dac548ea5d8ee1c4214f1c9e25bad2ec3d49d8d8922fd14404c197ba52e9` |
| 32 | `abbrev` | [instSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/instsubtype.md) | 222 | `declaration-track:3ab1e3d164cc892febc6394d857d25c3103efa73d2b0008cb2da1aba43de1536` |
| 33 | `lemma` | [mem_mk_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/mem-mk-set.md) | 230 | `result-track:ed8be0dfdd456ef481b16b51a6a0b70219dbccd7602d4d67403db11fd334d50b` |
| 34 | `lemma` | [mem_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SetLikeBasicDelabSubtypeSetLike.lean/declarations/mem-mk.md) | 233 | `result-track:95a2910fbde96b490e58ba5e0e3da5943f38042fc8d90002906ab1011b14aef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d4e35871701f6218828bd05892f86042006375db12166230ccf0b308c6347db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variante10ec4b8abdd0b63caf50f1999a0b5cbb48c54055479a38cb16c7e6d2122d397.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variante10ec4b8abdd0b63caf50f1999a0b5cbb48c54055479a38cb16c7e6d2122d397.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
