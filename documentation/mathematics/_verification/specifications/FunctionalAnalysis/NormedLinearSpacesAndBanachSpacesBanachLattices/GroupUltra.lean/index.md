# Verification target: Group Ultra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0836685939216f72a45578b8e2258ebbc3374ca1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0836685939216f72a45578b8e2258ebbc3374ca1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Ultra.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_mul_le_max](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-mul-le-max.md) | 43 | `result-track:e3bcff6b552730e01df0b671d2581308ae24113ba2c295b13194e5542d8c28c0` |
| 2 | `lemma` | [isUltrametricDist_of_forall_norm_mul_le_max_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isultrametricdist-of-forall-norm-mul-le-max-norm.md) | 49 | `result-track:df3d9b71d8529854efa92fbd9b0d8592cb04600331e9076d5240f0488ceed29f` |
| 3 | `lemma` | [isUltrametricDist_of_isNonarchimedean_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isultrametricdist-of-isnonarchimedean-norm.md) | 54 | `result-track:3c3a7af00962e1a72431ad4853e4532386b4d74535cf4f515823ab4bf6aaf620` |
| 4 | `lemma` | [isNonarchimedean_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isnonarchimedean-norm.md) | 58 | `result-track:c8bc4f6a1763596bf28cd213c61cd99f3ba5d0f017bd781bad5fb6ad2b3d9b58` |
| 5 | `lemma` | [isUltrametricDist_iff_isNonarchimedean_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isultrametricdist-iff-isnonarchimedean-norm.md) | 65 | `result-track:232b364325707090cbd9266b17d49c133e5f1a0fe45aee0d22ff241d4d5201e7` |
| 6 | `lemma` | [nnnorm_mul_le_max](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-mul-le-max.md) | 70 | `result-track:141d44e4974c9aa149bdbe881e2e9d221a8694992773a3b21703572f165d9e1c` |
| 7 | `lemma` | [isUltrametricDist_of_forall_nnnorm_mul_le_max_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isultrametricdist-of-forall-nnnorm-mul-le-max-nnnorm.md) | 75 | `result-track:a81a28187d7a6973f932e76c43a9a42d68dc5cb637347d495a24d669efb047d6` |
| 8 | `lemma` | [isUltrametricDist_of_isNonarchimedean_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isultrametricdist-of-isnonarchimedean-nnnorm.md) | 79 | `result-track:6b5e94b86ae7a942439b9685dbd719e35250ecaa75761e50f7c808fdb78adc86` |
| 9 | `lemma` | [isNonarchimedean_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isnonarchimedean-nnnorm.md) | 83 | `result-track:aa3f1d097fd5707a38583ecbf1bac45125e959eb2f8692edd8a0896dfb4aae49` |
| 10 | `lemma` | [isUltrametricDist_iff_isNonarchimedean_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/isultrametricdist-iff-isnonarchimedean-nnnorm.md) | 90 | `result-track:b9887a356dfd1e6db0a23807593ddb7898995621ff09e269c1fbbc34a9b6c618` |
| 11 | `lemma` | [norm_mul_eq_max_of_norm_ne_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-mul-eq-max-of-norm-ne-norm.md) | 96 | `result-track:ac876bdd46561cc0d389fbb9b6896cc9e38b54b32fc22b327864de1ae97ec530` |
| 12 | `lemma` | [norm_eq_of_mul_norm_lt_max](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-eq-of-mul-norm-lt-max.md) | 102 | `result-track:8b6110f89aba8a94b7f91169922f7e5a45a9c20d27a2ab2c40545e8758adb75a` |
| 13 | `lemma` | [nnnorm_mul_eq_max_of_nnnorm_ne_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-mul-eq-max-of-nnnorm-ne-nnnorm.md) | 108 | `result-track:d9c13332cb0cfe832ed8279c6eaaf3b2f2cce73f01b459e24d8651490fd92ff1` |
| 14 | `lemma` | [nnnorm_eq_of_mul_nnnorm_lt_max](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-eq-of-mul-nnnorm-lt-max.md) | 114 | `result-track:2dbf7a889356e734570863a68aca30b4eeed515a25f47e2f38654380cb009bc1` |
| 15 | `lemma` | [norm_div_eq_max_of_norm_div_ne_norm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-div-eq-max-of-norm-div-ne-norm-div.md) | 120 | `result-track:a9433e6b68fcf3862655487a38b8a8c1f45719854e504f50e05cc844249920c4` |
| 16 | `lemma` | [nnnorm_div_eq_max_of_nnnorm_div_ne_nnnorm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-div-eq-max-of-nnnorm-div-ne-nnnorm-div.md) | 126 | `result-track:25aca7e76ac128d27db92d7458e3e9ba7cce3b2c14ff66427ac9b687fb7a0c90` |
| 17 | `lemma` | [nnnorm_pow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-pow-le.md) | 132 | `result-track:a0d90f48c2debeeb9c304c34d7ddbae929fb2ab29155b155606172f7c0287370` |
| 18 | `lemma` | [norm_pow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-pow-le.md) | 139 | `result-track:cfcb717a5c245bd06e212effde39733d25a31968713d3be0665fd67620026c18` |
| 19 | `lemma` | [nnnorm_zpow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-zpow-le.md) | 144 | `result-track:3f4fd3f567490191ecd7b40cff9ba6b2cb6496b45c9553124ff54ac93db7da4e` |
| 20 | `lemma` | [norm_zpow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-zpow-le.md) | 150 | `result-track:4eb95059879386b3b519de4cfefa58b0651390edaa9b5b770e4a245c4fdfb329` |
| 21 | `def` | [ball_openSubgroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/ball-opensubgroup.md) | 162 | `declaration-track:bbba419fafb72501c0cf2b2ce6854efdbfe5c9941290336286bf8559463dba7e` |
| 22 | `def` | [closedBall_openSubgroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/closedball-opensubgroup.md) | 176 | `declaration-track:a758e3650306ae47d96859723b52195953deef2911308067c6a8b937c139dfee` |
| 23 | `instance` | [nonarchimedeanGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nonarchimedeangroup.md) | 197 | `declaration-track:966fe7eaba3f7b4df473673c42b96fae2413fabd335c63c2c86c0506906ec7ed` |
| 24 | `lemma` | [_root_.Finset.Nonempty.norm_prod_le_sup'_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/root-finset-nonempty-norm-prod-le-sup-norm.md) | 208 | `result-track:ac32088bbf58940dc19e447d31876cfaab5ce6251dccd7a253f7956d2dc9d77c` |
| 25 | `lemma` | [_root_.Finset.nnnorm_prod_le_sup_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/root-finset-nnnorm-prod-le-sup-nnnorm.md) | 224 | `result-track:54a5ab605b0ed630b062198c31906acb4e65566e14b7cbf74e6a0f27b55eb4f4` |
| 26 | `lemma` | [nnnorm_prod_le_of_forall_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-prod-le-of-forall-le.md) | 237 | `result-track:86ca93d7a757441cd3397ce57b89de2f777f9f639a7906b4e20744bb548fc713` |
| 27 | `lemma` | [norm_prod_le_of_forall_le_of_nonempty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-prod-le-of-forall-le-of-nonempty.md) | 247 | `result-track:3a07995398ce29d64b60e3fb48066e9e2e99ee57b7811cc962d9ea4ad1aadbcf` |
| 28 | `lemma` | [norm_prod_le_of_forall_le_of_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-prod-le-of-forall-le-of-nonneg.md) | 257 | `result-track:326da385809a1e4850b86c848d7cc4bf179e532767ab11f48db3fa96be4cd3b9` |
| 29 | `theorem` | [exists_norm_finset_prod_le_of_nonempty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/exists-norm-finset-prod-le-of-nonempty.md) | 268 | `result-track:74ec7d3a1eee57043a77914c70f7d519db0ea2f0e900a35fbd48cb7d5c0f1514` |
| 30 | `theorem` | [exists_norm_finset_prod_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/exists-norm-finset-prod-le.md) | 279 | `result-track:70469b11ab944a7024947cfa32f004d83bff4214227c6eff4e3cc3892c32bf5f` |
| 31 | `theorem` | [exists_norm_multiset_prod_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/exists-norm-multiset-prod-le.md) | 291 | `result-track:87b99f5123f690b8ee8dad09cf33692f2953301c8138967adcaa9d9f11cd57fb` |
| 32 | `lemma` | [norm_tprod_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-tprod-le.md) | 311 | `result-track:009e6df24b6b707a5107c4995317dd8e46305f174955baea11cc5c0a3dffae50` |
| 33 | `lemma` | [nnnorm_tprod_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-tprod-le.md) | 329 | `result-track:d67033583247b31f072b2680442899c3d07418e33fbc46d8c3ff5ff7efc69d8f` |
| 34 | `lemma` | [norm_tprod_le_of_forall_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-tprod-le-of-forall-le.md) | 333 | `result-track:0f6c04eb654ed43e297eef8fd72f75073a6b08206f93fb8e2bfe5714f412130d` |
| 35 | `lemma` | [norm_tprod_le_of_forall_le_of_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/norm-tprod-le-of-forall-le-of-nonneg.md) | 338 | `result-track:3307b3960eccf5a94cab7b32b40faa03093fbe3a9fadc1969f2b733bd301890e` |
| 36 | `lemma` | [nnnorm_tprod_le_of_forall_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUltra.lean/declarations/nnnorm-tprod-le-of-forall-le.md) | 345 | `result-track:53d8c3b5a26315e9bc65b061dfab9c7aec8e2d03cb18bdf2844c08a35ccc5ddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9421bdd25f5ef1c0f8c53483ef34aaed9191c20ff03957a871aa6e8300a0fe2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
