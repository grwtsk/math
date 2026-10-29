# Verification target: Ring Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b72ebd539c468facc1c9ac030da8ae9d00747a21",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b72ebd539c468facc1c9ac030da8ae9d00747a21`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSquare.nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/issquare-nonneg.md) | 30 | `result-track:11ec93d4b72cd20620e4c8e727f5191cf3dc7602574ec85858b4b6e79df3f7b0` |
| 2 | `theorem` | [map_neg_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/map-neg-one.md) | 40 | `result-track:8f0b5946fc59502e8e727ddb99b95d5bf5c2434185205efb19bb58c850fea14e` |
| 3 | `theorem` | [map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/map-neg.md) | 44 | `result-track:5c5d88b4f4d97b85b8673e30a224f811942f8c8c849a5e48649b0a2c836adf61` |
| 4 | `theorem` | [map_sub_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/map-sub-swap.md) | 46 | `result-track:7a5405d9db2b37b982c3797183cf73feacf8ea2c0aa51f380a2b43e77b07c68c` |
| 5 | `theorem` | [pow_add_pow_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-add-pow-le.md) | 54 | `result-track:3ca9e485b5238dc9922950452368fd7672803d10ded35fa7540f0c9dfa2e329b` |
| 6 | `theorem` | [pow_le_pow_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-le-pow-left.md) | 76 | `result-track:1dc68f59e60cea200aa08461a9f577016984a9ac2a84bfc3851967d4b8b8baab` |
| 7 | `lemma` | [pow_add_pow_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-add-pow-le-source-edition-2.md) | 79 | `result-track:f6220fa99b8fbba1ee82e08e776079346c29b241fdc99e252eafec43a6eee658` |
| 8 | `theorem` | [pow_lt_pow_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-lt-pow-left.md) | 91 | `result-track:9ff03cd9051b0468bad167e8f91128b0fe58dec233c4560ce521d336ebb74ba1` |
| 9 | `lemma` | [pow_left_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-left-strictmonoon.md) | 95 | `result-track:d44bd1f26e4962d076991fd7cb65fb94023db0c7f0bf21b41e8fe272404489e0` |
| 10 | `lemma` | [pow_right_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-right-strictmono.md) | 99 | `result-track:86c6662a9e4e6c2ac578b9c52e81cfc279feb7340a0e5125179a71f43396f1d6` |
| 11 | `theorem` | [pow_lt_pow_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-lt-pow-right.md) | 103 | `result-track:99e905175c398ca2e4bb611b0ce729e9e55537b2ceaa1f62a648372621953391` |
| 12 | `lemma` | [pow_lt_pow_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-lt-pow-iff-right.md) | 107 | `result-track:42d623d6718dc526e9837f6b3236f228cf90261a6b58ac18e999e1b92e431ec7` |
| 13 | `lemma` | [pow_le_pow_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-le-pow-iff-right.md) | 110 | `result-track:d718ebe05bed3994c9ed3e36b24270fe736720733eb231b7815b14dee1dc5422` |
| 14 | `theorem` | [lt_self_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/lt-self-pow.md) | 113 | `result-track:35a57a2ad8b20b77e4a1a077e2ed0f8b4e1aebbed2f327e49f1a4785cc47ee16` |
| 15 | `theorem` | [pow_right_strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-right-strictanti.md) | 116 | `result-track:d4d240c3cb647e6a27aa1d8571f134286f70d22540a14d2edbbae6cab9d44666` |
| 16 | `theorem` | [pow_lt_pow_iff_right_of_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-lt-pow-iff-right-of-lt-one.md) | 120 | `result-track:197a6a32710a00871e935cf21325e43b2d1db15c9f47aabd473460501cecd810` |
| 17 | `theorem` | [pow_lt_pow_right_of_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-lt-pow-right-of-lt-one.md) | 124 | `result-track:9100eb155149d82aacbc1b038eced11c12664e6939143b7bb13e738e0a45272a` |
| 18 | `theorem` | [pow_lt_self_of_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-lt-self-of-lt-one.md) | 128 | `result-track:6a300c2e70b7783d29e658a3483eacf03e634fedeadf1249a4121906b41b6b4d` |
| 19 | `lemma` | [sq_pos_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/sq-pos-of-neg.md) | 136 | `result-track:825f31efa0a5d0bfc17f1f1ef6985679d15f756198e74883e233ff274c938f44` |
| 20 | `lemma` | [pow_le_pow_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-le-pow-iff-left.md) | 144 | `result-track:bcbebd09bc4896c9dc7f455f1e9bc056e47a01ae4afeab742acf6617cf45b88a` |
| 21 | `lemma` | [pow_lt_pow_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-lt-pow-iff-left.md) | 148 | `result-track:58c4d522abecf00855bd78caaa3dc354a41d145266cc57257fb6b26fe315f670` |
| 22 | `lemma` | [pow_right_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-right-injective.md) | 152 | `result-track:f04703f252cfaaaccbd865abfda1571c195cdd78903e36ecc159bcafbb27bcc9` |
| 23 | `lemma` | [pow_right_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-right-inj.md) | 156 | `result-track:c596a2628fceac196446c61fa630b6b9008288cfe68c7f6cd26cd4f84f3757e5` |
| 24 | `theorem` | [sq_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/sq-le-one-iff.md) | 159 | `result-track:9cace224636b3673cc2389125a16febc3c282937cc12adb54474ee4386146f0d` |
| 25 | `theorem` | [sq_lt_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/sq-lt-one-iff.md) | 162 | `result-track:21bd6b9415e77e35c24bac2f7b79add88e84b5bf73618337cad5a5dd9375aa1c` |
| 26 | `theorem` | [one_le_sq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/one-le-sq-iff.md) | 165 | `result-track:ca4e60fde9eee054429d78c48661bdf6d8ca5e0711dfbe593bec2c8e2ed804a3` |
| 27 | `theorem` | [one_lt_sq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/one-lt-sq-iff.md) | 168 | `result-track:8f7f63628590569b7000b1b0b4041181e6cbb5b4cd844a3935147909754486ec` |
| 28 | `theorem` | [lt_of_pow_lt_pow_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/lt-of-pow-lt-pow-left.md) | 171 | `result-track:d02e72923a25a2918b2ba9606d8f2c5bdbd5654c38e80dddbd2fd2e36dfb039c` |
| 29 | `theorem` | [le_of_pow_le_pow_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/le-of-pow-le-pow-left.md) | 175 | `result-track:9b83fbefed44c1d87e910e2e5d5035ac75238e0068529de6f0769481f464d514` |
| 30 | `theorem` | [sq_eq_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/sq-eq-sq.md) | 179 | `result-track:c925e969f876117e98bb76a8dced8980d570af8c684ba002bf3a665023f04b73` |
| 31 | `theorem` | [lt_of_mul_self_lt_mul_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/lt-of-mul-self-lt-mul-self.md) | 182 | `result-track:18531fed14d74a9a6a72945982174fe5473d7a6d4693cfbee59212ef072d96d6` |
| 32 | `def` | [IsNonarchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/isnonarchimedean.md) | 187 | `declaration-track:1de92e2ba21cbba716ded64dbe2e7b3084d4a39a0dbd39bd3d7c06ee2128e0ec` |
| 33 | `lemma` | [add_sq_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/add-sq-le.md) | 201 | `result-track:5f7ce7a1c416669e649cdf2e398014e34daa8e64eaf0cf9cf5f9f50f780e5040` |
| 34 | `lemma` | [add_pow_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/add-pow-le.md) | 212 | `result-track:2e569508fb63ac86b10ac0c561d917ba06d955e49588af2e518ba2e9295dae72` |
| 35 | `lemma` | [Even.add_pow_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/even-add-pow-le.md) | 230 | `result-track:deffaf09fe5365a08d38b74ec03181d9f7872c225f49493f1f2ef7eb764fbdd1` |
| 36 | `lemma` | [Even.pow_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/even-pow-nonneg.md) | 246 | `result-track:a3ac501fe98a0b023188eecd201546894be44d1ff1dfca8ec44633ccec2379ed` |
| 37 | `lemma` | [Even.pow_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/even-pow-pos.md) | 249 | `result-track:ecc5384251b0e90b8ce86db90d98656897104cdb91acf2e420056b03a682765d` |
| 38 | `lemma` | [Even.pow_pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/even-pow-pos-iff.md) | 252 | `result-track:e86bb7347b5baf72355c415e50effc0ed773c6ec527a71242ffdc40e5b683439` |
| 39 | `lemma` | [Odd.pow_neg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-neg-iff.md) | 255 | `result-track:f44857c377fdcf6a072bf06df2619450b57e2784abe272aace55d0f85dbe5270` |
| 40 | `lemma` | [Odd.pow_nonneg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-nonneg-iff.md) | 261 | `result-track:eeee2e4ccee3538b93429a88181bd13895ffe67908d40bd3708b5fa025995b0f` |
| 41 | `lemma` | [Odd.pow_nonpos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-nonpos-iff.md) | 264 | `result-track:acb1fbd3f6ab8a7b31dc6c5c9327d25905df7c803edd4dd3ef0bc6fb6dd45053` |
| 42 | `lemma` | [Odd.pow_pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-pos-iff.md) | 268 | `result-track:c8f25595e1a45d023a667b451db0792f27e314fd9db0789e63c09ba0156fb005` |
| 43 | `lemma` | [Odd.strictMono_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-strictmono-pow.md) | 273 | `result-track:5be110934b0cee80cfea013fead7807d5746d4c5a681e54dd55d3eb56594c087` |
| 44 | `lemma` | [Odd.pow_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-injective.md) | 293 | `result-track:81f10d30df247418a4cdb2d677c49d292ca04cfed2ed618e61b5f0318d4ab955` |
| 45 | `lemma` | [Odd.pow_lt_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-lt-pow.md) | 296 | `result-track:fd8f87267b1be9009ae99310d9de7e868ba836ae400b9512ff76475c96470421` |
| 46 | `lemma` | [Odd.pow_le_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-le-pow.md) | 299 | `result-track:1d2a05517af3ceef8dcc05304c7197a981b65c66c75d2f387380214a4414c0c2` |
| 47 | `lemma` | [Odd.pow_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/odd-pow-inj.md) | 302 | `result-track:d1b586086273882e81673ed417003149dbc9a6bdea41a91c6730e995616d9b07` |
| 48 | `lemma` | [sq_pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/sq-pos-iff.md) | 305 | `result-track:9040086da9667c686f2fc2c4598e030bdc269374940ff7c200042bf83baae1a7` |
| 49 | `lemma` | [pow_four_le_pow_two_of_pow_two_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingBasicNamespaced.lean/declarations/pow-four-le-pow-two-of-pow-two-le.md) | 310 | `result-track:19422ae6783eb80f08a3212858cfea3bcf1bba1de3e4180fc4af22d1da1859da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3eca60c85ce83d8e8da8c957ee4e9bdf8eec966bb45af0a8773bda497143d42e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Varianta8c7830f66bc0a1dfcf59ee0f15bd66183633133fcf45a10ae4f76142f3b219e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
