# Verification target: Data Finset Fin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce15ae8dd499141814892d68e79a8c5edcae30da",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant2a726f536ff894a76015d10aa666e57b458c1fc40e694799f7d6fa9f6bd06d2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce15ae8dd499141814892d68e79a8c5edcae30da`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant2a726f536ff894a76015d10aa666e57b458c1fc40e694799f7d6fa9f6bd06d2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fin/Variant2a726f536ff894a76015d10aa666e57b458c1fc40e694799f7d6fa9f6bd06d2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/attachfin.md) | 26 | `declaration-track:a31bd07af412ee889a063f30fc38b5f4a1650534ba9bb1c7260033995ef65a1d` |
| 2 | `theorem` | [mem_attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/mem-attachfin.md) | 30 | `result-track:9cf6621a480177914d0dfea8d29418d6fc05e22539841c9c675d932eda34ef0c` |
| 3 | `lemma` | [coe_attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/coe-attachfin.md) | 38 | `result-track:a53f59786298422c8caec00d81484c2f708165fe5be80cf68f4f8665c9338639` |
| 4 | `theorem` | [card_attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/card-attachfin.md) | 43 | `result-track:5f5d17103b8439a6b1e513b0c2b94508233188e4cbd2f3896b2e1b57cdf5959b` |
| 5 | `lemma` | [image_val_attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/image-val-attachfin.md) | 48 | `result-track:7f46858cef73765edb57f8d1bcdd67b52efc2a6d30dcab19cc0a03ed4d3574af` |
| 6 | `lemma` | [map_valEmbedding_attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/map-valembedding-attachfin.md) | 55 | `result-track:3708bb38980414507f563c93c2164214eebdab19f2cbe7411ade4c2d16a9c013` |
| 7 | `lemma` | [attachFin_subset_attachFin_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/attachfin-subset-attachfin-iff.md) | 60 | `result-track:3d354d0b1033c9f0e64b029a4d943a0462e1c38b6525fa73ac7d777ea20bf1f3` |
| 8 | `lemma` | [attachFin_subset_attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/attachfin-subset-attachfin.md) | 65 | `result-track:11aa4519d0404c56861704b0ca05ab53d79a7e1d423cf0e05016d1a05e4dc1b6` |
| 9 | `lemma` | [attachFin_ssubset_attachFin_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/attachfin-ssubset-attachfin-iff.md) | 69 | `result-track:9a5e43cb253f857d99bf60d5388bef92e42798e5bb7626c4bed1be3c1d592e5a` |
| 10 | `lemma` | [attachFin_ssubset_attachFin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/attachfin-ssubset-attachfin.md) | 74 | `result-track:c77ad32a8f97cf7e3e5c875ce0ed5382d92ba8198e0dfa1fb05ccbed93faf449` |
| 11 | `def` | [fin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/fin.md) | 85 | `declaration-track:dd3e81981d3c719a0fe0ca8746c89be2e4ac40fea61500c961c6ba2d193bb572` |
| 12 | `theorem` | [mem_fin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/mem-fin.md) | 91 | `result-track:f833bb9de903d97d5b4843d63983705b16509954770682fa2d7f01cf48bd5350` |
| 13 | `theorem` | [coe_fin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/coe-fin.md) | 95 | `result-track:2237a365e01656ec2c08201388edac165da077ccfe61dc7a26d9e13f8e99fed1` |
| 14 | `theorem` | [fin_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/fin-mono.md) | 98 | `result-track:6c476d77022cabab17258cba961e84369349300f497aa18d3f00cf632e9af4d1` |
| 15 | `theorem` | [fin_subset_fin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/fin-subset-fin.md) | 101 | `result-track:60743f81b69c4590823e1ea465f3f225e98b44325be0223b3b0ae20f3089922f` |
| 16 | `theorem` | [fin_map](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/fin-map.md) | 104 | `result-track:3cc6d1f0f5e7686307bfb6636be1cf2e793a2acb991d4932e07fd8c06e6ff90d` |
| 17 | `theorem` | [attachFin_eq_fin](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetFin.lean/declarations/attachfin-eq-fin.md) | 108 | `result-track:a6b39818fbad168d855390e354f10a10cb913cec6b46f7431f22efae0f7981e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70f068db914ec9b964c785521ae5a5bbaaf1c231d6d3971ba9c79b202162df92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant2a726f536ff894a76015d10aa666e57b458c1fc40e694799f7d6fa9f6bd06d2e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Fin/Variant2a726f536ff894a76015d10aa666e57b458c1fc40e694799f7d6fa9f6bd06d2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
