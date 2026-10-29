# Verification target: Unbundled Rat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bf25cf9a14d901c7036251fe8946741cd79461f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bf25cf9a14d901c7036251fe8946741cd79461f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Rat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [divInt_nonneg_iff_of_pos_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/divint-nonneg-iff-of-pos-right.md) | 30 | `result-track:07d67ab8a6cc211a16d61883cdf3af05a332dbf97230041f633f2e9611d5790f` |
| 2 | `lemma` | [divInt_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/divint-nonneg.md) | 36 | `result-track:842084c6be7da52152cd073e42f6dffd460eb3da2f2599b2cafdfb6eabfc99d5` |
| 3 | `lemma` | [mkRat_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/mkrat-nonneg.md) | 42 | `result-track:935c3707ca8c7b551d2781b9e64efd5b9657e81156587190f65ff1596c2335a9` |
| 4 | `theorem` | [ofScientific_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/ofscientific-nonneg.md) | 45 | `result-track:524ba408106532fe70a46763fa99d5690e507291715c7c6dc31a3b64d9a74c74` |
| 5 | `instance` | [_root_.NNRatCast.toOfScientific](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/root-nnratcast-toofscientific.md) | 56 | `declaration-track:5c8a76c476bbda7e9b903af29c6b87d728eb4786644c0a3e2d8701174f591426` |
| 6 | `theorem` | [_root_.NNRat.cast_ofScientific](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/root-nnrat-cast-ofscientific.md) | 62 | `result-track:aabc70ffc548dc0077ba3a5893a25a57d42315791df07456dec7668302efeee1` |
| 7 | `lemma` | [add_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/add-nonneg.md) | 66 | `result-track:c5c3c8dadbb8042c9b6ba56b69e42ddaeb0baf3b4f8eb18d73afaf8c5693fc3a` |
| 8 | `lemma` | [mul_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/mul-nonneg.md) | 75 | `result-track:8f1a9b94d49ab8d96d233eb760448828ab1641dc2979ed1dbe74341df33c3b05` |
| 9 | `theorem` | [not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/not-le.md) | 84 | `result-track:df83fa0ebe1f69ad84592bb6fc2a447671fdd2c385a24d376453e243b6a71175` |
| 10 | `theorem` | [not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/not-lt.md) | 86 | `result-track:2dbf0b7cd7e78d4a04a8d4a08e045f02f720ba827ef5338af212a722f8801b21` |
| 11 | `theorem` | [lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/lt-iff.md) | 89 | `result-track:7b883c79a80284d9efde8f540c348116e131b738c968b3d0da5e52738bb64c29` |
| 12 | `theorem` | [le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/le-iff.md) | 110 | `result-track:eb9872ce5ed5889a642d3e8b7d6c9d0f7f69c40577616f6c6c5fe0eea97a3eeb` |
| 13 | `theorem` | [le_iff_sub_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/le-iff-sub-nonneg.md) | 113 | `result-track:513365b395cc4abbf0507aec3283a073d9d0a4e49d2e12bdda461d05d997371a` |
| 14 | `lemma` | [divInt_le_divInt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/divint-le-divint.md) | 124 | `result-track:0b813e99ad120298b460faeaff8818718dad0a5df40ee17238b4fc745e713ecf` |
| 15 | `lemma` | [le_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/le-total.md) | 129 | `result-track:c58e8b749b6ee8e1745f99d6d2ff6efaab58a44b4b614f456c68b404e6a59d41` |
| 16 | `instance` | [linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/linearorder.md) | 132 | `declaration-track:7798f55e2d795b23779125776888b033b5f24def5a6055eede7e39757f426954` |
| 17 | `instance` | [instDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instdistriblattice.md) | 159 | `declaration-track:264b40742c2ff1975bdb7af0831044988c531f55c842509bcec4b99a22d7dcc6` |
| 18 | `instance` | [instLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instlattice.md) | 160 | `declaration-track:e4526b4efc5a769377e850aaba9856254e3b5d8a737f90ca8513541ab0fbe53a` |
| 19 | `instance` | [instSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instsemilatticeinf.md) | 161 | `declaration-track:7fc89f6ff5075d947ab38ce8d989bf8f0ce9e2cdfd86b485dd5087dc8142b059` |
| 20 | `instance` | [instSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instsemilatticesup.md) | 162 | `declaration-track:3a5ff87170c3348ce29340da77ae296ca7f3f46f8f00dc3fd5774900165415d0` |
| 21 | `instance` | [instInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instinf.md) | 163 | `declaration-track:672243fcb3d9856b97a51ca111eaa28ea0352d15a9f4c1b57b59cab550f4ab91` |
| 22 | `instance` | [instSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instsup.md) | 164 | `declaration-track:ede99ebeba92fda51e3b718e06fc2c1010ef3b28a8acf97b4f54596ca0a0f70b` |
| 23 | `instance` | [instPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instpartialorder.md) | 165 | `declaration-track:c3a6641c22902739bcdad1605296e772130e6156a39a02562c6b00e03052b941` |
| 24 | `instance` | [instPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instpreorder.md) | 166 | `declaration-track:1c97cafe370df2ba81590aa34807ea1ef7e3c5f81582c4e8cb25d9ffe57c76cc` |
| 25 | `lemma` | [le_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/le-def.md) | 170 | `result-track:0133ea0315acb1e59b97cf5899f7585c37aadc66e8172e2f8b36a129014020ae` |
| 26 | `lemma` | [lt_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/lt-def.md) | 175 | `result-track:1c6af729536da7707bfe22d44b86e1d81ad3c0df9546ecab3d56f16105969467` |
| 27 | `theorem` | [add_le_add_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/add-le-add-left.md) | 184 | `result-track:4a98f062e87f30d6b4e8f2b3b0b5cb3b7b10166d2b729e07cd054b90705bb0fc` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/instance.md) | 187 | `declaration-track:b980cfae283a62bd4f7402a542e12d095b33958ea4aefdbed9c4677aab612c91` |
| 29 | `lemma` | [num_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/num-nonpos.md) | 190 | `result-track:e591e33599ccf3bb686c7e57a5625e6029014c31bd59c61ff188d21cd836d224` |
| 30 | `lemma` | [num_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/num-pos.md) | 192 | `result-track:105291533b89ccd4f68b327ebeae83193279f363afac27e33a01ff3bf5354f24` |
| 31 | `lemma` | [num_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/num-neg.md) | 193 | `result-track:ed74c675fee73c729f6ac6385fa15b9648bccba53be2e7257e79d630b71f593b` |
| 32 | `theorem` | [div_lt_div_iff_mul_lt_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/div-lt-div-iff-mul-lt-mul.md) | 195 | `result-track:a6c06ef6fb1c70a2b33d0cb48c4f362cd9308c5eb940b9648513fd333da35250` |
| 33 | `theorem` | [lt_one_iff_num_lt_denom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/lt-one-iff-num-lt-denom.md) | 203 | `result-track:308feb4b20a3f06197f40c93df9ad111d2c04a9cb6aa496dd62f855b2b9b9c5c` |
| 34 | `theorem` | [abs_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/declarations/abs-def.md) | 205 | `result-track:05202729d39d87986364d988aaad95363073c4decf3d1dbccd90934d0e88d61a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a74452d014b97006a767b319279eabe583600121c2e6f168b132a7f1ff23edf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Rat/Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Rat/Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
