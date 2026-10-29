# Verification target: Cofinal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46475ea2fbbebd51bfd9cd173f3e99087435c8b6",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variant4f70dc7dc7b3b258d0e587e87caa5d6746064f9073e35cd3166e9d6b028f0c7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46475ea2fbbebd51bfd9cd173f3e99087435c8b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variant4f70dc7dc7b3b258d0e587e87caa5d6746064f9073e35cd3166e9d6b028f0c7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variant4f70dc7dc7b3b258d0e587e87caa5d6746064f9073e35cd3166e9d6b028f0c7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice.Indexed` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsCofinal.of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-of-isempty.md) | 47 | `result-track:a60495b0e4477c0ad7045a6d549ed7f10326381af395a8714a5aaf2471cb690c` |
| 2 | `theorem` | [isCofinal_empty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-empty-iff.md) | 50 | `result-track:da1c0fad8a0bfc9fab879c1fcd7a821ab17d3bfcd37c9e4ad12256e6ef4e8ba0` |
| 3 | `theorem` | [IsCofinal.nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-nonempty.md) | 54 | `result-track:325e0ac07db2e454de68c290c95999c3d6580843b87e3828c219689c4fa732d7` |
| 4 | `theorem` | [isCofinal_singleton_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-singleton-iff.md) | 59 | `result-track:d69695af4edeaa87494d44e519b885c3516a50bab697de3ab3cf17a1b16fc59d` |
| 5 | `theorem` | [IsCofinal.singleton_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-singleton-top.md) | 62 | `result-track:8ea45d4dc6c9b2436436151789aff64b2681bdfffe58c7ddee7f559d5e665bf0` |
| 6 | `theorem` | [IsCofinal.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-mono.md) | 65 | `result-track:f8fbbf0b176dac55c4467dfbadcceba03015ccd631de264a9d897ebfe863eb57` |
| 7 | `theorem` | [IsCofinal.univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-univ.md) | 76 | `result-track:0a7af48542786ffc1f9ecd06b1c257d725322501b1c76f7622c909276618305d` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/instance.md) | 79 | `declaration-track:a391fffbadbb5a08484850bf5bad00b6a62412f11abc66d728676043b9028080` |
| 9 | `theorem` | [IsCofinal.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-image.md) | 82 | `result-track:004d37e36dae22832d5ca6b391d2c2d1830521de867f01db8920fb4d219ecc3b` |
| 10 | `theorem` | [IsCofinal.trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-trans.md) | 90 | `result-track:163d806a11d5ec6c0cb37a3a136689c782bac1404d1c5999b772f4d6e36f9756` |
| 11 | `theorem` | [GaloisConnection.isCofinal_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/galoisconnection-iscofinal-range.md) | 94 | `result-track:2a5a0312f7ee9863e5812b671740eecf1f4cf42b8ad04d731b0ffaf9c67a9889` |
| 12 | `theorem` | [GaloisConnection.map_isCofinal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/galoisconnection-map-iscofinal.md) | 98 | `result-track:02585389471d84b5eccffd83745eb31e20c57e74a95bd559ee9ef6b057cbec9d` |
| 13 | `theorem` | [OrderIso.map_isCofinal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/orderiso-map-iscofinal.md) | 105 | `result-track:382bbd618ab1f8bfda5284c91e9db34e220d33b8425dfc2def55d8b815731b76` |
| 14 | `theorem` | [OrderIso.map_isCofinal_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/orderiso-map-iscofinal-iff.md) | 109 | `result-track:20ae66d28b3155f6387c6d2bf0270c41968f6c1537487d47e0d7cebb99c5826a` |
| 15 | `theorem` | [isCofinal_iff_iUnion_Iic_eq_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-iff-iunion-iic-eq-univ.md) | 115 | `result-track:24401c43a7855fbcf7528fc14e99c6832323631e6df73e1b7f7afaaf65b4a351` |
| 16 | `theorem` | [isCofinal_iff_iUnion_Iio_eq_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-iff-iunion-iio-eq-univ.md) | 119 | `result-track:42f4261e266a5b30c6b2ecd83f791d6a1072f9bef10b6b78d537a39730028538` |
| 17 | `theorem` | [IsCofinal.mem_of_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-mem-of-ismax.md) | 137 | `result-track:7aa28279dbf002aa8e029a0e1c03d2a9f8be3c0e93f5739cf20bb6a86fb65583` |
| 18 | `theorem` | [IsCofinal.top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-top-mem.md) | 141 | `result-track:7bea585c1e7fb2b1aaab25ecc84155a26a77844b42ff2cd941423b7e4e4fcbdc` |
| 19 | `theorem` | [isCofinal_iff_top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-iff-top-mem.md) | 145 | `result-track:9a89f60a81eccc420b497450d4616cf65c1e6f6526b3d6b69293c619262d24bf` |
| 20 | `theorem` | [not_isCofinal_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/not-iscofinal-iff.md) | 153 | `result-track:81fc0f53d5420cf3fa7710e75892f568b2aaa5be980f076b360e28712eb99794` |
| 21 | `theorem` | [BddAbove.of_not_isCofinal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/bddabove-of-not-iscofinal.md) | 156 | `result-track:166131ae0893031636e4414bb3f2ba7bddcaf5d5b4f6c2ecadf0217aec866183` |
| 22 | `theorem` | [IsCofinal.of_not_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-of-not-bddabove.md) | 161 | `result-track:edacdf223f726e73e6c27f4baa411eed7cbf5b5d6ea258904a6cc492393b080f` |
| 23 | `theorem` | [not_isCofinal_iff_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/not-iscofinal-iff-bddabove.md) | 166 | `result-track:08b17e92170036eee506f8b1fa39de71ee3fb128c4920163cdc7440bcb32281f` |
| 24 | `theorem` | [not_bddAbove_iff_isCofinal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/not-bddabove-iff-iscofinal.md) | 174 | `result-track:7e17dbf68da44ecdb07592736b34a6c669f22353102dcb9e940f49f8e7d18fc3` |
| 25 | `theorem` | [isCofinal_setOfPred_imp_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-setofpred-imp-lt.md) | 179 | `result-track:8e3b7f787e994d1ffef06a3652c3e5b3146f6cdc80d3a558d9215807ed4beee9` |
| 26 | `theorem` | [isCofinal_range_of_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CofinalNamespacedPublic.lean/declarations/iscofinal-range-of-strictmono.md) | 189 | `result-track:0df911379c20362e7971b76b5b250a30282b6de4ad13280b7392e2054a75a0d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7c41a465b76a8458e100b2f9f798a534e1f494ddda66454080eeefa7c5e18cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variant4f70dc7dc7b3b258d0e587e87caa5d6746064f9073e35cd3166e9d6b028f0c7e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variant4f70dc7dc7b3b258d0e587e87caa5d6746064f9073e35cd3166e9d6b028f0c7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
