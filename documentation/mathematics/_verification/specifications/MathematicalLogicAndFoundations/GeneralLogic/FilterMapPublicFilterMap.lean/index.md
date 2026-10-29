# Verification target: Filter Map Public Filter Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aac50835fee9199d25bf9772470f748d0879e50",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aac50835fee9199d25bf9772470f748d0879e50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilterMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/filtermap.md) | 43 | `declaration-track:69a3e7e596f5ee6866d86549b2324427589030d71ef8815b363c16611a647f78` |
| 2 | `def` | [Map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/map.md) | 53 | `declaration-track:184f9b37026b2e4dc4ab241257e43adbbd615eebb68cfed350e2d250e597a1d2` |
| 3 | `def` | [IterM.InternalCombinators.filterMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-internalcombinators-filtermap.md) | 63 | `declaration-track:cec4d742c8bb6785f1ef94ab43ca513fd1029c54bb2d1560044fa3d5f20f2e91` |
| 4 | `def` | [IterM.InternalCombinators.map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-internalcombinators-map.md) | 70 | `declaration-track:9722f46494776006e41a6dca5561f3008fe5c7733ffc86aa3f989de31b3d1534` |
| 5 | `def` | [IterM.filterMapWithPostcondition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-filtermapwithpostcondition.md) | 123 | `declaration-track:4c4be6b66d8c17eb1efe01bbd982ae5a99181db7d20bca8a21bb15f58512a122` |
| 6 | `inductive` | [FilterMap.PlausibleStep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/filtermap-plausiblestep.md) | 135 | `declaration-track:9898484d440d2a14f97e661f47f947d07347031038e7d2b2faad7987a92faa0b` |
| 7 | `instance` | [FilterMap.instIterator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/filtermap-institerator.md) | 150 | `declaration-track:3fc345ed6b296722ea7670af69a95430b2b6894a5d51aaa1183b30e9f07128b1` |
| 8 | `instance` | [Map.instIterator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/map-institerator.md) | 166 | `declaration-track:bc9aeb54dbc1f20ab3b7df8efa0a66069c6fc8524cafae3670f31a93e27c699e` |
| 9 | `theorem` | [Map.instIterator_eq_filterMapInstIterator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/map-institerator-eq-filtermapinstiterator.md) | 171 | `result-track:7afa7e6542ec3ef0bd22bea000b8b4ec902d1d76becf7a1a228ef24f4189dbf8` |
| 10 | `def` | [FilterMap.instFinitenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/filtermap-instfinitenessrelation.md) | 178 | `declaration-track:3f9541a20844512c0f5d5caa90e6ecbc6845e656fdd8cee7de284dc747303c79` |
| 11 | `instance` | [FilterMap.instFinite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/filtermap-instfinite.md) | 199 | `declaration-track:184b90ebd14d3bd3d61e8edfa31e2461ff41bef8edbf1be25752e946cc26a35b` |
| 12 | `instance` | [Map.instFinite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/map-instfinite.md) | 204 | `declaration-track:d93a3f093cd025476bf457ffefc169ea2bf73cfec8fc9263c88dfb2f2072d306` |
| 13 | `def` | [Map.instProductivenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/map-instproductivenessrelation.md) | 209 | `declaration-track:ffa15828be2787a99da2a71b34d2f095a19bcda431b350d4706f629b82c9ba14` |
| 14 | `instance` | [Map.instProductive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/map-instproductive.md) | 222 | `declaration-track:6dd760e6c3e1800dc83241b546be0c5db1166197a72cbb404dcf040cf32754f5` |
| 15 | `instance` | [FilterMap.instIteratorLoop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/filtermap-institeratorloop.md) | 228 | `declaration-track:63530827c10c975aa5efddec1bc99c940cbbf58dac9c90083632d2a8c4d21799` |
| 16 | `instance` | [Map.instIteratorLoop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/map-institeratorloop.md) | 235 | `declaration-track:892439f2d4ad3a6edede9c6f111c3ae1c88c59753f37796a9be925d9f9f99b0d` |
| 17 | `def` | [IterM.mapWithPostcondition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-mapwithpostcondition.md) | 285 | `declaration-track:5d46f25b89be8199b467776291637eb0aaa101aaafb3090b40b4816dca2ae143` |
| 18 | `def` | [IterM.filterWithPostcondition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-filterwithpostcondition.md) | 332 | `declaration-track:7624257bdd3143821f36d27d55acc7332d78323151adb2590d53483a8da57a9a` |
| 19 | `def` | [IterM.filterMapM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-filtermapm.md) | 374 | `declaration-track:a4231e9d84146ca72b68b7370108cc5f4603e20892524397fb1bec70cccf6dd9` |
| 20 | `def` | [IterM.mapM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-mapm.md) | 412 | `declaration-track:edf76adc7dc04a77b715f83ee5128559f0e465b77a779323933fdeaeec1404a6` |
| 21 | `def` | [IterM.filterM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-filterm.md) | 449 | `declaration-track:75ca03e81d7276ec8ff8b94bc544443005c837d26287f3cecf2020783b5f24d0` |
| 22 | `def` | [IterM.filterMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-filtermap.md) | 486 | `declaration-track:d0240df2a09cacf66a5762bebb79d4bff940177f4b30567ef03300e8900306a2` |
| 23 | `def` | [IterM.map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-map.md) | 515 | `declaration-track:7ae362c681ff764ef5251d12f97db5a64c9b08f083060b7e0839e6e95ac0bf26` |
| 24 | `def` | [IterM.filter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FilterMapPublicFilterMap.lean/declarations/iterm-filter.md) | 550 | `declaration-track:ca9623205a040c2c742decdcd6811369fbc77b6c39031556ad461bb8175bac72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae6af8fc68069526650f4e196036bdafccef42e5387d55ac4d60c5c90dc1c00d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
