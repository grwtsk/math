# Verification target: Char Zero Defs Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3d9817acac840bd97f9b5581524dc0c31dc09d9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd5705eac29cf7096da5d8a6e6efeede9311a70b5f32ba6b6e2175b28c29a5dee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3d9817acac840bd97f9b5581524dc0c31dc09d9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd5705eac29cf7096da5d8a6e6efeede9311a70b5f32ba6b6e2175b28c29a5dee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd5705eac29cf7096da5d8a6e6efeede9311a70b5f32ba6b6e2175b28c29a5dee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CharZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/charzero-source-edition-2.md) | 50 | `declaration-track:b9f7b3a9c00adf95aa83f55e65faedc095618c079db36c680db8413a151debc1` |
| 2 | `theorem` | [charZero_of_inj_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/charzero-of-inj-zero.md) | 56 | `result-track:b7f21ba00e3a02aa49b459f0e27274fa1e5dd9f9e521980028a74d9ead5601de` |
| 3 | `theorem` | [cast_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/cast-injective.md) | 75 | `result-track:682e50f256189722bd3d5e46847f26ea114c84c53e6acaba9577a80c67112527` |
| 4 | `theorem` | [cast_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/cast-inj.md) | 80 | `result-track:f68ca6b8da5e717400c843b795d1f19a41fa8e883b0d3c0d5861ff330f4b371e` |
| 5 | `theorem` | [cast_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/cast-eq-zero.md) | 85 | `result-track:cd981d2db77b395cc20ec7a7bc18edbf6997ae748fb6653c0b0b15d57656e101` |
| 6 | `theorem` | [cast_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/cast-ne-zero.md) | 89 | `result-track:4544eb52ea1a05ada93f523648a35789e44df14820842bf74a69583d67b70bd2` |
| 7 | `theorem` | [cast_add_one_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/cast-add-one-ne-zero.md) | 93 | `result-track:7e8da931c3026a1c47a04f8e7820256fd0e8b37a32c98854fd9b7efc60e43df8` |
| 8 | `theorem` | [cast_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/cast-eq-one.md) | 100 | `result-track:43e1311a98f7eb1e0bcc877132c6a4f0a4caf895d7ddb29b0d83dec0cc7564a3` |
| 9 | `theorem` | [cast_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/cast-ne-one.md) | 104 | `result-track:a772591c36bba8ab3466b0b52ec09c23fcbced420befa67e9e7b07fcdba85dd0` |
| 10 | `lemma` | [ofNat_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/ofnat-ne-zero.md) | 114 | `result-track:27d6ecccde647565de5193c3373a500f73a1b5c95044f2e751947e405a8f0e53` |
| 11 | `lemma` | [zero_ne_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/zero-ne-ofnat.md) | 117 | `result-track:2aa1ab66dfa60163de2728c6af484115b707b6504efa9deabf83d55b81847812` |
| 12 | `lemma` | [ofNat_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/ofnat-ne-one.md) | 120 | `result-track:c530ab4309bb0898e49a8d87701cc53305ad7d18e141026a972554e4991551a7` |
| 13 | `lemma` | [one_ne_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/one-ne-ofnat.md) | 124 | `result-track:c7cbdf83e9ff347e7e5c8b134f178ab351ca4f26dee873022b8658d98f9a980e` |
| 14 | `lemma` | [ofNat_eq_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/ofnat-eq-ofnat.md) | 127 | `result-track:03391c52a5eaa4cb86420942ce9adf4813dab32b93c80d4105cf94e8d5c0f86c` |
| 15 | `instance` | [charZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/charzero.md) | 135 | `declaration-track:821f78c22387f101e2ec7edbb2c503daaf18c873beb98f4a322de3197cf7d52a` |
| 16 | `instance` | [charZero_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsNamespacedSourceEdition1.lean/declarations/charzero-ofnat.md) | 139 | `declaration-track:07885cc95c30feced42a98e02231a5a769b9d8968a08cabc67365b434413e96c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32bd4626c76fb9a761abca72d3ae44cb25919feeeaf1dc659adebba665ef4fd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd5705eac29cf7096da5d8a6e6efeede9311a70b5f32ba6b6e2175b28c29a5dee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd5705eac29cf7096da5d8a6e6efeede9311a70b5f32ba6b6e2175b28c29a5dee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
