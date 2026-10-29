# Verification target: Int Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a2dac8d741b691de9f788665a248b8a4d13abf0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd668f05e07b33fa7d09e2ae3fd57e2071137a390a4937242bfb020f5faf57bd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a2dac8d741b691de9f788665a248b8a4d13abf0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd668f05e07b33fa7d09e2ae3fd57e2071137a390a4937242bfb020f5faf57bd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd668f05e07b33fa7d09e2ae3fd57e2071137a390a4937242bfb020f5faf57bd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.OfNat` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNontrivial](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/instnontrivial.md) | 36 | `declaration-track:f5816db2ab474991ea4f087a09e35f53c4a5b6ca085364f5df0483b4436d52e4` |
| 2 | `lemma` | [ofNat_injective](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/ofnat-injective.md) | 38 | `result-track:595b8d6f75afc405f9d7dbad3caefef098ce2b86f6207228026c2e96142ebfac` |
| 3 | `lemma` | [inductionOn'_add_one](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/inductionon-add-one.md) | 47 | `result-track:6a77aba71369436f29bbcadcbae8a5c6f5750af418d4dd09dd0592f71b5019de` |
| 4 | `lemma` | [strongRec_of_ge](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/strongrec-of-ge.md) | 63 | `result-track:e3322b0c4fcd9da551644a4c972f9f68891389d566ea6156aa3fa18dba4a8a8f` |
| 5 | `lemma` | [natAbs_surjective](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/natabs-surjective.md) | 80 | `result-track:0c757487e4dec573261762127045cd26a33fc26e2076e5f07ae01bf143698c22` |
| 6 | `lemma` | [pow_right_injective](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/pow-right-injective.md) | 82 | `result-track:9fd73237755b1fb60912d78215bfc56c69007dc36ec5c3955d47e9956d619f48` |
| 7 | `lemma` | [natCast_dvd_natCast](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/natcast-dvd-natcast.md) | 89 | `result-track:2e61f971a957097785e9e6d830bba0da254defaaf905264ed2afdb5a288d428c` |
| 8 | `theorem` | [ofNat_dvd_natCast](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/ofnat-dvd-natcast.md) | 102 | `result-track:c256a06eeef9513e267889283176e9f9cb1fd7dcd0161df2ff5e6128d3412aa6` |
| 9 | `theorem` | [natCast_dvd_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/natcast-dvd-ofnat.md) | 105 | `result-track:2a1f306fe07498b96caf7da0b436f200ecab6cca897013755e913d7160779785` |
| 10 | `lemma` | [natCast_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/natcast-dvd.md) | 108 | `result-track:46aa12b391d018a7620c2a090f13a6af8cf0340d11947316460db24c698e26f6` |
| 11 | `lemma` | [dvd_natCast](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/dvd-natcast.md) | 111 | `result-track:447b2e67c93ad36702fbd50a241a19ee95b7a03eb70d64eda3d5991debd055e7` |
| 12 | `lemma` | [eq_zero_of_dvd_of_nonneg_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/eq-zero-of-dvd-of-nonneg-of-lt.md) | 114 | `result-track:bd190b496d8486bdff7f761a73f5698302f8bfcf8ce439c1a4a0b2898dbfef99` |
| 13 | `lemma` | [eq_of_mod_eq_of_natAbs_sub_lt_natAbs](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/eq-of-mod-eq-of-natabs-sub-lt-natabs.md) | 118 | `result-track:aa5d8766fa3344a97bcd9d67fed0c303dda16d45854d2f8d2ab80aadf82dfe84` |
| 14 | `lemma` | [natAbs_le_of_dvd_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition2.lean/declarations/natabs-le-of-dvd-ne-zero.md) | 122 | `result-track:1cab63caaac244e1645b978f09982c28f3423b99ebe98e4de79dfef222294833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aac9669ea1ae628cb4d9cd810435dbe86fe5476f10b5d588b7845453178967d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd668f05e07b33fa7d09e2ae3fd57e2071137a390a4937242bfb020f5faf57bd0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd668f05e07b33fa7d09e2ae3fd57e2071137a390a4937242bfb020f5faf57bd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
