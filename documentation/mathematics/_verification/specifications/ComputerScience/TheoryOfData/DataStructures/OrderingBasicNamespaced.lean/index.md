# Verification target: Ordering Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec23e8c6a995b9ccec3b38563feb01950c082b4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3e3b1b2093f687f5429a0e65cf34b0db86ddc19681597858bfa01e5343a1d983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec23e8c6a995b9ccec3b38563feb01950c082b4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3e3b1b2093f687f5429a0e65cf34b0db86ddc19681597858bfa01e5343a1d983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3e3b1b2093f687f5429a0e65cf34b0db86ddc19681597858bfa01e5343a1d983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Compares](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/declarations/compares.md) | 32 | `declaration-track:d8521df15ebaf6622cdcf602072976b44e95465f9d0e73d1cda4110a10ab9815` |
| 2 | `lemma` | [compares_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/declarations/compares-lt.md) | 37 | `result-track:37ab72ba2526b2041e3d6ee30a7b2cd4efbc9c984c09f23fb783d94894408c73` |
| 3 | `lemma` | [compares_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/declarations/compares-eq.md) | 39 | `result-track:d7452a7b317764b5ea2ebacb9392d7404816234af84331a43096b878a2b505bd` |
| 4 | `lemma` | [compares_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/declarations/compares-gt.md) | 41 | `result-track:d2ea37e73e215ef2e21d958ad7312b923f69874ddf16c30940ed45ea532d3479` |
| 5 | `def` | [dthen](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/declarations/dthen.md) | 45 | `declaration-track:8d5ac7785391ae3546fcf53cafef7cfeb34d0329807c54e9409cedeb7992e667` |
| 6 | `def` | [cmpUsing](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/declarations/cmpusing.md) | 56 | `declaration-track:0b74bd34aaebca6b60dcc41b56beb03dacde1404ef4cd2e301d122435305e3c5` |
| 7 | `def` | [cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrderingBasicNamespaced.lean/declarations/cmp.md) | 63 | `declaration-track:e9ad12494353ed84f087f6a0c2d0f2a41773ad7681ead1edb3c673a69903cb3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=471a154d77792f28a3a28e4fe597c1e7051caad2e915835bebecfe0741846aa5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3e3b1b2093f687f5429a0e65cf34b0db86ddc19681597858bfa01e5343a1d983.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3e3b1b2093f687f5429a0e65cf34b0db86ddc19681597858bfa01e5343a1d983.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
