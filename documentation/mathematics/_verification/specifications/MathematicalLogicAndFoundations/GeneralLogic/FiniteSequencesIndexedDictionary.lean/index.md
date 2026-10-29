# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecf0105e1883c7074d68264248ef1cea613e480c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecf0105e1883c7074d68264248ef1cea613e480c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Dedup` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Packed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/packed.md) | 30 | `declaration-track:289163286b86438279a214f3a18eebbbe556578bf6059f65966c102e0925b4a3` |
| 2 | `def` | [decodeReference](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/decodereference.md) | 35 | `declaration-track:885d644db81f1c0306fd3e53873cc465b04983c96aeffae1794ec7f6abd4a251` |
| 3 | `def` | [unpack](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/unpack.md) | 40 | `declaration-track:dbec8045079437049f47bf481313bc9003f9501caf72e83f86fbcab0add7adaf` |
| 4 | `def` | [Valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/valid.md) | 44 | `declaration-track:ad7cdcceb9d5d55c8c66b84eda855387fb50a503a6824e32c62069cb1d82ef32` |
| 5 | `def` | [pack](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/pack.md) | 51 | `declaration-track:64db18ae6b70ef05aa05e3c02e41fdb9da362ee531b151c2f1a7fc96d54f6d62` |
| 6 | `theorem` | [payload_mem_dictionary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/payload-mem-dictionary.md) | 56 | `result-track:703e8412cc99afc7df0a48d071f7cbdfafabac51b9b56f05294a398e2684c83b` |
| 7 | `theorem` | [pack_dictionary_nodup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/pack-dictionary-nodup.md) | 62 | `result-track:928404300fe84904f57e7258ef6e4d9c6ba59aaf16d85afa9479b1a5f64bbd4c` |
| 8 | `theorem` | [pack_reference_bound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/pack-reference-bound.md) | 67 | `result-track:806930a4d695082165a7bdd46915e47fe9d586b97076705f4d287eff1c47de67` |
| 9 | `theorem` | [pack_valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/pack-valid.md) | 74 | `result-track:2de097e07e3a5c3e610af587568f6b6045961f246d9b19522069931918c42407` |
| 10 | `theorem` | [pack_references_keys](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/pack-references-keys.md) | 78 | `result-track:ba725fc201c38654ea4f7899b5a262a9b9a1c537411b49fca3e21590d367c9fb` |
| 11 | `theorem` | [pack_references_length](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/pack-references-length.md) | 83 | `result-track:13fddc550af693ab0d933314231e448e490d2e69b256dbe401399039dff69e5d` |
| 12 | `theorem` | [decodeReference_index_of_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/decodereference-index-of-mem.md) | 88 | `result-track:ed624e500fcc5546bc3b0fb5291a6907a426c6553aeab98aa95c3fd855e2f038` |
| 13 | `theorem` | [unpack_map_indices](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/unpack-map-indices.md) | 94 | `result-track:14229349fc3304a03b32bdf6bfabb0eb6c569df32c63080569560aeaa8064d02` |
| 14 | `theorem` | [unpack_pack](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/unpack-pack.md) | 109 | `result-track:83363334b198c8e0b1c248b6a0572c13fced328338e590af4fdef4eb324a2cee` |
| 15 | `theorem` | [pack_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/pack-injective.md) | 115 | `result-track:b577acdaa4162dc72db02f6122106b16a94cab236dd9c684858c28b505ca5403` |
| 16 | `theorem` | [unpack_pack_position](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/declarations/unpack-pack-position.md) | 121 | `result-track:5df975aa2801b2f9988c960e1b3fc236003804f3952b4f8b9d13de53c7714750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=832a7614d47a6de639efb9df9719258ee4a72f31bbf610f0e70c677e9ebbac90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence0b76c73035a9807242a57307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
