# Verification target: Small Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d9c974e1159dba2c39863e8868e989315245776",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7ff15e265e63b13e91ee309aeaa6b766a0bf4a6c4bf60f7673b80bab403ff045.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d9c974e1159dba2c39863e8868e989315245776`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7ff15e265e63b13e91ee309aeaa6b766a0bf4a6c4bf60f7673b80bab403ff045.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7ff15e265e63b13e91ee309aeaa6b766a0bf4a6c4bf60f7673b80bab403ff045.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Small](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small.md) | 37 | `declaration-track:b190699122303f5444f0320f61695424cde3b386a956bbf38fe0f4199750177c` |
| 2 | `theorem` | [Small.mk'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-mk.md) | 43 | `result-track:dd939f36211fc7bf333f639b8215ddbeae741ca509e999c39d61ecd208fa9a81` |
| 3 | `def` | [Shrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/shrink.md) | 49 | `declaration-track:86f6053ab26561ed4c943b765d10ec75d381b393c86f61c0123ccb62285bf8b2` |
| 4 | `def` | [equivShrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/equivshrink.md) | 54 | `declaration-track:5a019865fbd7496d5084465f608d94d394300ed8025b330f74378ca711dc618d` |
| 5 | `theorem` | [Shrink.ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/shrink-ext.md) | 58 | `result-track:82842d2eb188ec59f0273c1402f4196323dcfca098b5417f43958dc436792ba5` |
| 6 | `def` | [Shrink.rec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/shrink-rec.md) | 66 | `declaration-track:cdc271083547d7e7e3c3bd3e050e44637ead84779d7fa6e67c7c4c92a25ca06a` |
| 7 | `lemma` | [Shrink.rec_equivShrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/shrink-rec-equivshrink.md) | 71 | `result-track:9f0925154fd1d55835d12bf04194226f2f817681f7a3bc87a2ef15e83e5d0b0d` |
| 8 | `instance` | [small_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-self.md) | 76 | `declaration-track:7197f4ddf9c62a9069a1e5d81831249e33fc316ba2151367e231ed495e17ca5b` |
| 9 | `theorem` | [small_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-map.md) | 79 | `result-track:522f08a9444639eaec6d0f00696f2336f421cb52a9b067514bba589ec5314983` |
| 10 | `theorem` | [small_lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-lift.md) | 83 | `result-track:433733f3ce3fb3ed40a9600c19e2aa3e846ccce398c6542060aab0ad65916277` |
| 11 | `lemma` | [small_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-max.md) | 90 | `result-track:432a4621fea34e9d183840029bcd6314d5a1aa6df8eaf1e3a3e072ce6e535e79` |
| 12 | `instance` | [small_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-zero.md) | 93 | `declaration-track:b233c5def9b250e55beca7f09cfe214573ab5191a48d251f14a8ccf49e6bd20d` |
| 13 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/instance.md) | 95 | `declaration-track:857fe00f46d3d623cd3be2df10aa6ddddbf6f46da20500479f1f3a6d56170014` |
| 14 | `instance` | [small_ulift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-ulift.md) | 98 | `declaration-track:7b1c50044fdbeca4a7966906fc69b34a5f079cc4bde78b4d509c8fea0994b215` |
| 15 | `theorem` | [small_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-type.md) | 101 | `result-track:37577fcd47c2033a69bb2da7adc3eb04e09e8213ebe1d8660c9ea446c42c0816` |
| 16 | `theorem` | [small_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-congr.md) | 106 | `result-track:e546f23e1c4cd18f622e203a2bb91e94bbe1c6a0501b9a2882e1eeb83d125684` |
| 17 | `instance` | [small_sigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/small-sigma.md) | 109 | `declaration-track:9e309c2df85efc18b29fd7a835c66ba6f7a33ce24fc76cd07291b0a4aea1e968` |
| 18 | `theorem` | [not_small_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespaced.lean/declarations/not-small-type.md) | 114 | `result-track:99f589c8b78391ca9d733f428f536db3cbc2101fb0e11d349e362ad626de3ef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13a191a7a49bcfad6c62c0fa514108ffc23ed1e21ccc2dfb7ef827163766bb3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7ff15e265e63b13e91ee309aeaa6b766a0bf4a6c4bf60f7673b80bab403ff045.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7ff15e265e63b13e91ee309aeaa6b766a0bf4a6c4bf60f7673b80bab403ff045.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
