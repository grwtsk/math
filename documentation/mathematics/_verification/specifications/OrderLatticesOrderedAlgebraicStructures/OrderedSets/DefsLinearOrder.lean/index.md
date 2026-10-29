# Verification target: Defs Linear Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2ffb07d2b10df78e51fccfdad07ae34a439c5b4",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant1f03f28a7c50ae7f3e3fd110ba05647d0414e3d7d1b5377167bde7d59b46bb7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2ffb07d2b10df78e51fccfdad07ae34a439c5b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant1f03f28a7c50ae7f3e3fd110ba05647d0414e3d7d1b5377167bde7d59b46bb7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant1f03f28a7c50ae7f3e3fd110ba05647d0414e3d7d1b5377167bde7d59b46bb7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Classes.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Trans` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Ordering.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtendDoc` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/maxdefault.md) | 30 | `declaration-track:36b46fb13cb1e999af3686660c0dc1d14599231c3627ff729b2ac9a4b3241dbe` |
| 2 | `def` | [minDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/mindefault.md) | 34 | `declaration-track:4a04ad5d9d2996402d65a765b54baa0d26512d007075041b4b152cb98c2d9e56` |
| 3 | `macro` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/macro.md) | 46 | `declaration-track:66c2a4dd1c805e2d07821f54d094725d743bdefcdafeebcf5323c07fedf5a858` |
| 4 | `class` | [LinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/linearorder.md) | 53 | `declaration-track:331d65735ac2b9ebe3eaf94fdc30e38631d4640242263bfe59776a2a4f1be668` |
| 5 | `lemma` | [le_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-total.md) | 79 | `result-track:ba27b53f3d7dd95aa1bf5436bdb7a77a0233bfbd115b26d96e713dbdbef6f150` |
| 6 | `lemma` | [le_of_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-of-not-ge.md) | 81 | `result-track:1509e90d64c341c72311856310e547e7852839810847871381e74ebd7d03bd9a` |
| 7 | `lemma` | [le_of_not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-of-not-le.md) | 82 | `result-track:0d6476b30b8ebefe99b125c63a57b7f009b7131c761dcfa14f0fa3d217a2bb76` |
| 8 | `lemma` | [lt_of_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/lt-of-not-ge.md) | 83 | `result-track:338ceb2f7b1e973ef980accdde5995022510ff38accfc4eb346fea6599c1c1e9` |
| 9 | `lemma` | [lt_trichotomy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/lt-trichotomy.md) | 85 | `result-track:8c1bd65b0985c53ede48b48f48433738d7826cdba52b5affbfad7cccf63528ff` |
| 10 | `lemma` | [le_of_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-of-not-lt.md) | 94 | `result-track:c0fd917536544e870de94d2bdf8c820b4705f66c3ab80224f31e33b364f86c3b` |
| 11 | `lemma` | [le_of_not_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-of-not-gt.md) | 100 | `result-track:1682e4908b071cfd51b2632eca3b8cdac4ef7ecabf392c2b3a5461879e195e4a` |
| 12 | `lemma` | [lt_or_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/lt-or-le.md) | 102 | `result-track:2733a9bbc6bdee4e7ddf7dbe0af045d4fb655f932bd3c392f02057bc75f561df` |
| 13 | `lemma` | [le_or_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-or-lt.md) | 105 | `result-track:6a90af5acbd7e05425b5f255c35f45a349cbb5835339cf5ceac7e06aab55181d` |
| 14 | `lemma` | [lt_or_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/lt-or-ge.md) | 106 | `result-track:8ade9fc90d2c434fbf38faa6baaa82c9d3007aa28a56868a7ecd8ed22bbdd7de` |
| 15 | `lemma` | [le_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-or-gt.md) | 107 | `result-track:45c68cb7d232151b34cb55b939ca994725dde523c0a53b30be8a3c1da97c918f` |
| 16 | `lemma` | [lt_or_gt_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/lt-or-gt-of-ne.md) | 109 | `result-track:4034eaf1c65642be7695b53001cf47bb9a97c3c6e6a953f52997565453cdee81` |
| 17 | `lemma` | [ne_iff_lt_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/ne-iff-lt-or-gt.md) | 111 | `result-track:7b1035cd29a31cc545825e2261c9a54dd0351b3eb8f7b27a05fd7f14224953b5` |
| 18 | `lemma` | [lt_iff_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/lt-iff-not-ge.md) | 113 | `result-track:60783df80933a13f33680626e44244a081f5eed121b43d24bab637d45e4cc92e` |
| 19 | `lemma` | [not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/not-lt.md) | 115 | `result-track:51950dcaee67f77bcc85c817658aae348a4a678ff3064665349fc048839b07d3` |
| 20 | `lemma` | [not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/not-le.md) | 116 | `result-track:4c92b3da5e1556bba9ebabea0b8aaae6cb8ef69e2df16277350e3b34889bda71` |
| 21 | `lemma` | [eq_or_lt_of_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/eq-or-lt-of-not-lt.md) | 118 | `result-track:7ad04606a535232bb9a666d5d88eae91405ff54bd97da250205b0cd5968856f4` |
| 22 | `def` | [ltByCases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/ltbycases.md) | 122 | `declaration-track:badb4015cd563ef2fed0751327fd71893ba55aac3d78e01897ee52606c792454` |
| 23 | `theorem` | [le_imp_le_of_lt_imp_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-imp-le-of-lt-imp-lt.md) | 126 | `result-track:105fc36242cf8e173e877e8794e44b8a5ec70caa3072355fe844dc89f5b7f3d0` |
| 24 | `lemma` | [min_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-def.md) | 130 | `result-track:0521e83a92fbade4ba8b557cdecd854fbf98f3aca1ec5f578f8c18cc2239660a` |
| 25 | `lemma` | [max_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-def.md) | 131 | `result-track:938ebe825e38b51a153a06af7715bf6cfc26c8b65f23fd088cf8e00daf7ff649` |
| 26 | `lemma` | [min_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-le-left.md) | 133 | `result-track:974bf2aab401c704be50f927308204f14189cfb614b30c9eb33fd6f090905b9f` |
| 27 | `lemma` | [min_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-le-right.md) | 138 | `result-track:3b2a4c03513a24004cff815ccf24e0aa4bdd4723bdb9badbdef29c65b729f9de` |
| 28 | `lemma` | [le_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-min.md) | 143 | `result-track:5b79217b5d37e702d9f3c7bdb9b8ae7fa44b2e406a6f42caa5ae145148d4673d` |
| 29 | `lemma` | [le_max_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-max-left.md) | 148 | `result-track:213544348598dab984f82cf68e4f3adb99d5c2ac9c21d50773719b21b0be13ba` |
| 30 | `lemma` | [le_max_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/le-max-right.md) | 153 | `result-track:42654ff271e011f0e06dffd63daa3ba3a70a85590dcb9c4adbfbe374aa39b574` |
| 31 | `lemma` | [max_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-le.md) | 158 | `result-track:9b878b6eae9a2d9c9889775c1b400ead134a6a11ef103a04409414030994ab85` |
| 32 | `lemma` | [eq_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/eq-min.md) | 163 | `result-track:b6e9fd05285f7529f360ba9755ba08fad8b309c87385c8e73aa8ca3b8590f179` |
| 33 | `lemma` | [min_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-comm.md) | 166 | `result-track:49210aac0535b2a11d2412cd8f3fccec5b8ec2533c1516afbe448eeefcb925a3` |
| 34 | `lemma` | [min_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-assoc.md) | 169 | `result-track:1fdac00e70fd4d3201b02abd8fe022bd2240a60276fa9599cac906e0aad2b8e6` |
| 35 | `lemma` | [min_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-left-comm.md) | 179 | `result-track:91bff276027d1792fea988a62c2cc010dbc7609f191c37363c9ae6f512830ee8` |
| 36 | `lemma` | [min_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-self.md) | 182 | `result-track:5ead3013efbf36ea2bf8531a9b45ca291a5e65c2187f972fc588e5eeef76607a` |
| 37 | `lemma` | [min_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-eq-left.md) | 184 | `result-track:20884930b9ac56a238b2d56618032073a094e6246a8b549075c6b3868cdd5512` |
| 38 | `lemma` | [min_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-eq-right.md) | 187 | `result-track:346192badfa404f1fe2cac276b563d9c29b46d8315d3c4dea27dacdbe882dad5` |
| 39 | `lemma` | [eq_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/eq-max.md) | 189 | `result-track:4bdef1aff823dc84232c1e4b4597f27c7d548ad5dbb24ed38f46dbcf8f17d955` |
| 40 | `lemma` | [max_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-comm.md) | 193 | `result-track:dd0c0812f41c315e1e7e085861bca7ed4a4f0add60fb687a91226eff4715d0bd` |
| 41 | `lemma` | [max_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-assoc.md) | 196 | `result-track:b6c23e037f75781b013912e1b572e00055f9f4ce20c989d1aa5367193a254519` |
| 42 | `lemma` | [max_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-left-comm.md) | 206 | `result-track:60ea08496bf3a932199266ab3521966d4f79fb716d2b69e3892ddb5a6685f476` |
| 43 | `lemma` | [max_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-self.md) | 209 | `result-track:3f519d130b9b6d346b20ad6a4d303f898f3ca1143e787276300b41b723fd19b2` |
| 44 | `lemma` | [max_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-eq-left.md) | 211 | `result-track:686c3cd0767a4842075516f0fee15997b63ff903b92a8d48d69786780937901e` |
| 45 | `lemma` | [max_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-eq-right.md) | 214 | `result-track:d2994960b0615b8aa63d9f35822b5842d5c315458c9628ae5795ae003442b500` |
| 46 | `lemma` | [min_eq_left_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-eq-left-of-lt.md) | 216 | `result-track:a294c9fbc12eabcb11dd8f8f4753e562ec84cafc3c0c3f716b09357fa1211dad` |
| 47 | `lemma` | [min_eq_right_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/min-eq-right-of-lt.md) | 217 | `result-track:b0eff1ab9ab6a2d952745fb18e97f0e25f73c332dedbf5cac0887ebade5aa696` |
| 48 | `lemma` | [max_eq_left_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-eq-left-of-lt.md) | 218 | `result-track:70599e9786520a32e8e78fba15450f1d58109823d7267b7396345de0542b0985` |
| 49 | `lemma` | [max_eq_right_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-eq-right-of-lt.md) | 219 | `result-track:e9d05e0630b840199bf5a5e5b212eae1fd684eccb8c07726d7477c3e136d7f22` |
| 50 | `lemma` | [lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/lt-min.md) | 221 | `result-track:ff78a6fd21b6f883dd0ef29466d8059465def772f2a48734371c491d770207dc` |
| 51 | `lemma` | [max_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/max-lt.md) | 224 | `result-track:1a2c8317b18cabc3adcec8229e75e8bb89f2f97ceafe8e8121a179a9da1fb5f6` |
| 52 | `lemma` | [compare_lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/compare-lt-iff-lt.md) | 229 | `result-track:267917f7b162140b97b6033b0c8d9b75ea7ec3ec14be8d0c462a8b9addad45ad` |
| 53 | `lemma` | [compare_gt_iff_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/compare-gt-iff-gt.md) | 233 | `result-track:496fcaa352a872955e092587d8bb15619d04b1226fa1772b0d8b5c991663617d` |
| 54 | `lemma` | [compare_eq_iff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/compare-eq-iff-eq.md) | 240 | `result-track:4b8168a90dfd1d6e005b1ee002ba11d9d80eaf0808e1037a579ecec7e62d6dbd` |
| 55 | `lemma` | [compare_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/compare-le-iff-le.md) | 247 | `result-track:3fa684e293057c0d336e91c6050b96ca041c321329e741d1acdaded43f19ba80` |
| 56 | `lemma` | [compare_ge_iff_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/compare-ge-iff-ge.md) | 253 | `result-track:68f96739108137a076765583c415ffd06cad47bf4468ace866ae21fa50aa95e9` |
| 57 | `lemma` | [compare_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/compare-iff.md) | 259 | `result-track:86ea95eceeb3cd18063c5535135ae21f9a35a5faa68263d86fe1275c2db0f652` |
| 58 | `theorem` | [cmp_eq_compare](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/cmp-eq-compare.md) | 265 | `result-track:9652a821bd49c64ee5e40d3d2d84db4f4bdedd50535945f9a153b3ee259913b4` |
| 59 | `theorem` | [cmp_eq_compareOfLessAndEq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/cmp-eq-compareoflessandeq.md) | 272 | `result-track:9741a6670691e4331d238a6ae635a0af6029b474771a38f5cc2d4194f88eeaa5` |
| 60 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrder.lean/declarations/instance.md) | 275 | `declaration-track:0a8d3dca3a8cf98566e502b9996cbc7c098e894a1fe1f85d15b25b186a1f21ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1f79ab00454e137d030698cdfc720c081e9d70dea5712240644030a269575fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant1f03f28a7c50ae7f3e3fd110ba05647d0414e3d7d1b5377167bde7d59b46bb7b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant1f03f28a7c50ae7f3e3fd110ba05647d0414e3d7d1b5377167bde7d59b46bb7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
