# Verification target: Squarefree Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "134c9312d612a92d7ff35ff3d124e55204bd7904",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `134c9312d612a92d7ff35ff3d124e55204bd7904`.

Source path: `GRWTSK/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squarefree_iff_nodup_primeFactorsList](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-iff-nodup-primefactorslist.md) | 34 | `result-track:651053fad547cbd000082134d59cc3b49d46ff9f9581b7eba5bc7abd66f937ce` |
| 2 | `theorem` | [Squarefree.nodup_primeFactorsList](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-nodup-primefactorslist.md) | 41 | `result-track:8889f3159092e2f212510d73ad9ac48cc7702e9312f71cb3f6ebbf715c29d5ef` |
| 3 | `theorem` | [squarefree_iff_prime_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-iff-prime-squarefree.md) | 47 | `result-track:febdca53e9e451f1aeb711b3344905e779bfea9f143e33de943994cfd15f3e10` |
| 4 | `theorem` | [_root_.Squarefree.natFactorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/root-squarefree-natfactorization-le-one.md) | 50 | `result-track:d40f41cb797b9a4466cabee3345604e84b11c92eec1abb2355542456c8bdadd6` |
| 5 | `lemma` | [factorization_eq_one_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/factorization-eq-one-of-squarefree.md) | 63 | `result-track:35ed55b9b8fb0ff1025127c012326bfbbb40de93d81498961d714dc7e5634a9d` |
| 6 | `theorem` | [squarefree_of_factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-of-factorization-le-one.md) | 67 | `result-track:f7edfa63b4a45583eaee67dda6eef9f5695aca4a4d09b29091bb99fe1e30a9d9` |
| 7 | `theorem` | [squarefree_iff_factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-iff-factorization-le-one.md) | 74 | `result-track:c31ac633eb75e110a585771e790b058b9d2bf5304a4c8afb8d91899bbd08e092` |
| 8 | `theorem` | [Squarefree.ext_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-ext-iff.md) | 78 | `result-track:2a4645e2b9efed3303f07e7abe682607f9fe3953f0d9a5ffa826c4bfee04f049` |
| 9 | `theorem` | [squarefree_pow_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-pow-iff.md) | 90 | `result-track:8c700e8644caec69ee49fe3d04af6b9b4ab95bba4eecb62310aa55b67b5e0acd` |
| 10 | `theorem` | [squarefree_and_prime_pow_iff_prime](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-and-prime-pow-iff-prime.md) | 101 | `result-track:8bfde3510c9c27864eafae257c195d77945f134eb286f676338976c2f04145e1` |
| 11 | `def` | [minSqFacAux](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfacaux.md) | 110 | `declaration-track:3608c39b391606ad91927070f888320888c62810737379455c6ee78371c655d3` |
| 12 | `def` | [minSqFac](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfac.md) | 126 | `declaration-track:0de104e37eb65d2d6789a0d3314c50680af5d515e114aa3bfa1d2335be3d0b19` |
| 13 | `def` | [MinSqFacProp](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfacprop.md) | 135 | `declaration-track:4341398223d7962ccd473c72b12c8f4f09ef48d54bf4aa01f3cf54fc43cb9801` |
| 14 | `theorem` | [minSqFacProp_div](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfacprop-div.md) | 139 | `result-track:b67ec1262ceceec3071234aebeaba531ec5883b855db122b89867979ca123905` |
| 15 | `theorem` | [minSqFacAux_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfacaux-has-prop.md) | 154 | `result-track:cc9901f5d3df7697ae018cb4b401ffa658f8e35904a0de9ae2b5aa1305e32f19` |
| 16 | `theorem` | [minSqFac_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfac-has-prop.md) | 191 | `result-track:7e6dbe4f8fa473856ce56eeeda61310d16e9009c296b260456704692b2edf0f4` |
| 17 | `theorem` | [minSqFac_prime](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfac-prime.md) | 208 | `result-track:fd5afd73001013453cd04c1cdaa086b89e65b67cf66c941c0dc3398a045add69` |
| 18 | `theorem` | [minSqFac_dvd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfac-dvd.md) | 213 | `result-track:f97c9967ad7e082a43bb520dc1e5679709943ea2c07e0ab2c0820c01144ce3ed` |
| 19 | `theorem` | [minSqFac_le_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/minsqfac-le-of-dvd.md) | 218 | `result-track:c004e708834d633f7cbbb6aa19d4d7d8ff489634cbe4eddc5926a3797de5fc8d` |
| 20 | `theorem` | [squarefree_iff_minSqFac](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-iff-minsqfac.md) | 226 | `result-track:0fa8afd968e9b8bc602851be5989161ef8a3c1dd616b4f86ad784509a30c2a61` |
| 21 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/instance.md) | 235 | `declaration-track:905ae24e674dc0cf4ba83c83a1b9f892708e5afcfe81aa04d37ad1187c5c6d7d` |
| 22 | `theorem` | [squarefree_two](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-two.md) | 238 | `result-track:21093274c2b1b1a83cbec61f1e4a497c0325eb445faeaeaa550121cbe3ba293e` |
| 23 | `theorem` | [divisors_filter_squarefree_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/divisors-filter-squarefree-of-squarefree.md) | 241 | `result-track:d6777947826b960b17bc8b6ecaddecd84a0ef067de789a686d53b74244319628` |
| 24 | `theorem` | [divisors_filter_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/divisors-filter-squarefree.md) | 248 | `result-track:7ebfa771dcc8f75196966d09d71072800c907e7188267285541f84a712eda4a8` |
| 25 | `theorem` | [sum_divisors_filter_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/sum-divisors-filter-squarefree.md) | 298 | `result-track:74c90cf9ce30046b1c11e410c6d26394e91a963570558a0ff2e2dd330fb97ecf` |
| 26 | `theorem` | [sq_mul_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/sq-mul-squarefree.md) | 308 | `result-track:b49ddb5e2007cc71436382f4ad62350f4ae2c770f0406e1f2a0ce9765768824c` |
| 27 | `theorem` | [sq_mul_squarefree_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/sq-mul-squarefree-of-pos.md) | 312 | `result-track:9cbad60c8c96ba35f71f56266254e88a598fbfbaff7d2de85b58d1db04f15d3e` |
| 28 | `theorem` | [sq_mul_squarefree_of_pos'](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/sq-mul-squarefree-of-pos-source-edition-2.md) | 317 | `result-track:cd69c5c0d685023752febc304a6231b9a34bba1c3223e6e7626c84a329a7c635` |
| 29 | `theorem` | [squarefree_mul](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-mul.md) | 325 | `result-track:ff884fd30e13c392f4b01e211652e6b5206ff6200d4d314bf4f8b1ed7b03d210` |
| 30 | `theorem` | [coprime_of_squarefree_mul](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/coprime-of-squarefree-mul.md) | 329 | `result-track:b72bc04aae4801b94ae96ae39fb676adf0e4b047b9f981042baa54dfbb5f4c9f` |
| 31 | `theorem` | [squarefree_mul_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-mul-iff.md) | 332 | `result-track:57959e1f65ea289082a2d05ff888873a974afef1bada6233d4b864bda8dc6cba` |
| 32 | `lemma` | [coprime_div_gcd_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/coprime-div-gcd-of-squarefree.md) | 336 | `result-track:26a29b5c9fc50ffde8a02b12c0de116e2e90a8e7764891afb701cc600e944da6` |
| 33 | `lemma` | [prod_primeFactors_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/prod-primefactors-of-squarefree.md) | 342 | `result-track:6dbeb0d5d14ed555439a4224db806a5c82da7f65bc0dbd9ce8bbfabc85e3b1e8` |
| 34 | `theorem` | [squarefree_and_primeFactors_card_eq_two_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-and-primefactors-card-eq-two-iff.md) | 346 | `result-track:280db1e2f1e8bc778fb62d827ec5b5b90bfa7feb041d2f7425da8af439cc3f89` |
| 35 | `lemma` | [primeFactors_prod](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/primefactors-prod.md) | 360 | `result-track:1e8483736dfca0250a6e2ae1b9dd7ecac08d0c950ce520e5a9741b177a7d44de` |
| 36 | `theorem` | [primeFactors_prod_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/primefactors-prod-primefactors.md) | 368 | `result-track:a03d5ff89ab0c2513c504de05a79d350a084ba680cdbf5cc7b0200082d57631e` |
| 37 | `theorem` | [prod_primeFactors_dvd_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/prod-primefactors-dvd-iff.md) | 372 | `result-track:bd2f895906b5735a320cb93b94b6063e798c9498692d7c5f1f4603c7a82021f6` |
| 38 | `lemma` | [primeFactors_div_gcd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/primefactors-div-gcd.md) | 378 | `result-track:a4f6f54decd5e45f6618e9f912f1c9b93ff83715a00ca675c4ad4f23cc0b9718` |
| 39 | `lemma` | [prod_primeFactors_invOn_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/prod-primefactors-invon-squarefree.md) | 390 | `result-track:e0375b7b05ab340452e676c9f5de8c93b80917b8f16b9eac70708637e0d66700` |
| 40 | `theorem` | [prod_primeFactors_sdiff_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/prod-primefactors-sdiff-of-squarefree.md) | 395 | `result-track:30540364b6fef024f7d651756065016023526159d2d4bd9306e5e2fcc160646c` |
| 41 | `theorem` | [squarefree_iff_prime_sq_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreePublic.lean/declarations/squarefree-iff-prime-sq-not-dvd.md) | 409 | `result-track:5ef7a9e3a58373695b9f96e7dd6436dd1420422a7158609c1d75232166464998` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75ece8237db03f2aa48c88f74049e8f60053dabefd3da3aade57ad0e80bfc3da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
