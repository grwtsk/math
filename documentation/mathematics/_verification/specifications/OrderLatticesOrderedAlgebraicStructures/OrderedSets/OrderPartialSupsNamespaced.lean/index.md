# Verification target: Order Partial Sups Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d36474a07a4894bbc1103f7859af1a561420f05",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d36474a07a4894bbc1103f7859af1a561420f05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialSups](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups.md) | 58 | `declaration-track:302f34827a483892f095155acb6bb6de064a5bb74f335919c00c93959e0953e0` |
| 2 | `lemma` | [partialSups_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-apply.md) | 62 | `result-track:fa80f7a845e6ddf60bc8870450e92a456957023c0751126aaa1768f624514ba6` |
| 3 | `lemma` | [partialSups_iff_forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-iff-forall.md) | 66 | `result-track:876cb42bd79ec09861da0d155580cb57ec2532902e68fb21783d81ecc788f318` |
| 4 | `lemma` | [partialSups_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-le-iff.md) | 78 | `result-track:6a420c692ce9e7fae33d13d566c8eea55d37bd080bfe391bba475fedcf59b8c8` |
| 5 | `theorem` | [le_partialSups_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/le-partialsups-of-le.md) | 82 | `result-track:df1dc867c80de5ae8f2a968ce5c89f4ba4f65de5599974a00adaaa5d0fc1d8ad` |
| 6 | `theorem` | [le_partialSups](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/le-partialsups.md) | 86 | `result-track:4f7dc64da1a23e0fabaabb131317b2d15c6035d62d4e8d8f4e18b31eb2f798c9` |
| 7 | `theorem` | [partialSups_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-le.md) | 90 | `result-track:5660d3c51518f1154342c52431480f8f4a4a54db74dd7664f6a1f7d9ea47f234` |
| 8 | `lemma` | [upperBounds_range_partialSups](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/upperbounds-range-partialsups.md) | 95 | `result-track:f755f3a30aacdf076ae8041045b913fd0e60985e154646b90ff79628f8926424` |
| 9 | `theorem` | [bddAbove_range_partialSups](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/bddabove-range-partialsups.md) | 102 | `result-track:f7c1a2e0e068032ffe2f46224d86c9b24ed245d767f6b8923ec2d3fc08cbffd1` |
| 10 | `theorem` | [Monotone.partialSups_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/monotone-partialsups-eq.md) | 106 | `result-track:eafc58df2112be43d8cd33a67ed985ebfd10fe5b2e33c9b815ac67234945858c` |
| 11 | `theorem` | [partialSups_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-mono.md) | 110 | `result-track:fa61b3e8957a27b08b2c8127e7c75a782bbf65bd45bf5c0fb4eaa87588907e9d` |
| 12 | `lemma` | [partialSups_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-monotone.md) | 114 | `result-track:c286ed506867f420805a99e17378c0da26c1c752bd47b6ff9a5b2d5eba5f69e9` |
| 13 | `def` | [partialSups.gi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-gi.md) | 120 | `declaration-track:9b118688234dd32dc907eb3c544d95bfa2c2ea146cd28a60caf1b8692e009606` |
| 14 | `lemma` | [Pi.partialSups_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/pi-partialsups-apply.md) | 131 | `result-track:ea7e1a4092f6b622daebed89df419b11f6033481dc8e9ac071c7aa8fc8d9e2c0` |
| 15 | `theorem` | [partialSups_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-succ.md) | 139 | `result-track:3bb3ff96a8ce4acd6a9f237ac68c7a772099eceff9c99991df2481e591c1bde1` |
| 16 | `theorem` | [partialSups_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-bot.md) | 151 | `result-track:49106fb0ddddd5ecc42a3d2cb9a99d7b8877b1b913fca613907d66bf7fdf5740` |
| 17 | `theorem` | [partialSups_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-zero.md) | 163 | `result-track:5bcb9e63c02445e86dd8f8ceb9c0c3564667f46cb72e9ccb5e094b6994bd9220` |
| 18 | `theorem` | [partialSups_eq_sup'_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-eq-sup-range-source-edition-2.md) | 166 | `result-track:90097ae888c49d9e7f103ace308c3fb47a9a9a2a6814b4ec92979ca93765298d` |
| 19 | `theorem` | [partialSups_eq_sup_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-eq-sup-range.md) | 170 | `result-track:12fdd08b4845d8f00dc45b1afcc6f710a1620b8a74bce8876cd3f76f6cf4d29e` |
| 20 | `lemma` | [disjoint_partialSups_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/disjoint-partialsups-left.md) | 188 | `result-track:1ec88863d41a6914361ec65d92b9b98d2cb9ad0bbae95a832d4b67757af32438` |
| 21 | `lemma` | [disjoint_partialSups_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/disjoint-partialsups-right.md) | 193 | `result-track:e0082b7366cc78f3852c8d1ebad0be6366b82aa74ff3202eab2e85d13dfbd3f1` |
| 22 | `theorem` | [partialSups_disjoint_of_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-disjoint-of-disjoint.md) | 200 | `result-track:f0d883f5ca209822b5b003160d7a67be683313616c435f69020d6025dbe88b82` |
| 23 | `theorem` | [partialSups_eq_ciSup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-eq-cisup-iic.md) | 216 | `result-track:3ab7b05e7869180b3bda107aa4117895e0be19b8ccdcff83868c1b3407fc3977` |
| 24 | `theorem` | [ciSup_partialSups_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/cisup-partialsups-eq.md) | 225 | `result-track:15005fa64e18e77aed1ca9a3230972be4f78e0762f5a80e93ed54674e913237b` |
| 25 | `theorem` | [ciSup_partialSups_eq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/cisup-partialsups-eq-source-edition-2.md) | 237 | `result-track:83c8eb360965f7e9b73a2946b6e42004908eae4c2e2fe1bc740327232d8abbb0` |
| 26 | `theorem` | [iSup_partialSups_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/isup-partialsups-eq.md) | 253 | `result-track:98b8846e183b240811d0cb78e2552bf177fdc2425147017fd8f1ba1294ace838` |
| 27 | `theorem` | [partialSups_eq_biSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-eq-bisup.md) | 257 | `result-track:284d36aa5a487dd2a359440fd743094d8e3b9dbc5ddbdf2adcec2838ee5b9b36` |
| 28 | `theorem` | [iSup_le_iSup_of_partialSups_le_partialSups](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/isup-le-isup-of-partialsups-le-partialsups.md) | 261 | `result-track:902f217aa306deb80f3b6ebce306a12d27bbe722b2ccb3a6504a89b290a5d07b` |
| 29 | `theorem` | [iSup_eq_iSup_of_partialSups_eq_partialSups](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/isup-eq-isup-of-partialsups-eq-partialsups.md) | 266 | `result-track:2eb4e0df697de6acbb5ab5f53f23c5d4b0289d8116ec3fd399cddbbd079b7cc7` |
| 30 | `lemma` | [partialSups_eq_sUnion_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-eq-sunion-image.md) | 277 | `result-track:6264a30018f48ee9a9707ad4f0627d3e228a6e3ce9fc3dea5ea79f0d1d3d1385` |
| 31 | `lemma` | [partialSups_eq_biUnion_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartialSupsNamespaced.lean/declarations/partialsups-eq-biunion-range.md) | 281 | `result-track:8d819dfc74bbe73187d35e064bb8ecd7650239dcd9b1e2d931dea3c6656a67aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94596749f601ecbc78a191dd4b287ec85b41b8ec0834178715f809afbaebf31f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
