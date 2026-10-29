# Verification target: Field Basic Namespaced Enorm Inv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6307c27cbd0c61b1ba19aafbd4c69cdc1a5a660",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant9bf406490630aecec9ed32fd839534e0c1ca86cf08dc975342218cef11c843df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6307c27cbd0c61b1ba19aafbd4c69cdc1a5a660`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant9bf406490630aecec9ed32fd839534e0c1ca86cf08dc975342218cef11c843df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant9bf406490630aecec9ed32fd839534e0c1ca86cf08dc975342218cef11c843df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Subfield.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedDivisionRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/normeddivisionring.md) | 44 | `declaration-track:d8e73b1b6ad09804af5592a1f4bc12497c36748e0f2a875fdb9879c7e65edc0a` |
| 2 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/instance-source-edition-5.md) | 52 | `declaration-track:cbb085b8e0c1f73a29db59fdf318a2585a2da115c1bc0976477004d7c8684ff3` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/instance-source-edition-3.md) | 58 | `declaration-track:7d533bb6fa327b0db20b1d1cdd30a8e3c04c1eec93e7de0ff5328995886aa490` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/instance-source-edition-6.md) | 66 | `declaration-track:d592e942c1a1731f683d8d92d10333ad426aee327f2192a396bdb79071b80918` |
| 5 | `theorem` | [norm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/norm-div.md) | 70 | `result-track:90cfafb9f41d75ded00e9dacfe1d99ac2c6390d7dcbcb9b312c78600b54ebaff` |
| 6 | `theorem` | [nnnorm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nnnorm-div.md) | 74 | `result-track:cd42c0463c2592a3b58422a8b233b002393e7f140e5b31ee9b9982528945c33e` |
| 7 | `theorem` | [norm_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/norm-inv.md) | 78 | `result-track:365b63a10f010a0f2b98e412897015d07cbc440fb852461c38e49f102f448933` |
| 8 | `theorem` | [nnnorm_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nnnorm-inv.md) | 82 | `result-track:dd83c93698849baf59deb3b21b774d23536ffe40863e85f3289ce1ac90027dc8` |
| 9 | `lemma` | [enorm_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/enorm-inv.md) | 86 | `result-track:8baaffee626fa00038c363f171b5a8e29f78301770f3e2766ac06537f5af46ff` |
| 10 | `theorem` | [norm_zpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/norm-zpow.md) | 89 | `result-track:9dfcd2f3b9f9e25b8b48e0da6c7b9a731eea7c4eeffcc4d48d3fc7a318bac0d1` |
| 11 | `theorem` | [nnnorm_zpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nnnorm-zpow.md) | 93 | `result-track:38e7e8e301e72bef65059a188733c6c55c61c1b37d1ef9e4a0dceabe77b8d997` |
| 12 | `theorem` | [dist_inv_inv₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/dist-inv-inv.md) | 96 | `result-track:022043e162ad57d560f46996a30b32217c5e9c040402691617aff1a688360030` |
| 13 | `theorem` | [nndist_inv_inv₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nndist-inv-inv.md) | 101 | `result-track:4171951b92f5d6e24697f7d5883729414c9a5f252cb3bc1366c2a406747cc3d8` |
| 14 | `lemma` | [norm_commutator_sub_one_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/norm-commutator-sub-one-le.md) | 105 | `result-track:1b4a554f4681b94efe07d12f8a0fb0d5cc3ff57697cb5626ec10e1d7ecd832b3` |
| 15 | `lemma` | [nnnorm_commutator_sub_one_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nnnorm-commutator-sub-one-le.md) | 109 | `result-track:7325c6cd97959ab7ef46854c0615f26d168f0f0e74d0bb093d2fc3f89c70bf11` |
| 16 | `lemma` | [norm_eq_one_iff_ne_zero_of_discrete](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/norm-eq-one-iff-ne-zero-of-discrete.md) | 119 | `result-track:4ca0676ab4de20441213eb2acbaab34d5e800e9b19bf605bbade9930d5b7c42a` |
| 17 | `lemma` | [norm_le_one_of_discrete](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/norm-le-one-of-discrete.md) | 139 | `result-track:f89fa86c519c28fed2dd01b1a41b438aff726de4725df232b6d33c99b5158992` |
| 18 | `lemma` | [unitClosedBall_eq_univ_of_discrete](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/unitclosedball-eq-univ-of-discrete.md) | 145 | `result-track:005471573499f32cb4bcb9bd163f06075e65663e027b3f3332bf3ae94bcb36d5` |
| 19 | `class` | [NormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/normedfield.md) | 159 | `declaration-track:6e3bd4cc8eb5bd4605f42a47836759f27ad46405d3c7dcd6799bf92e0ac8671e` |
| 20 | `class` | [NontriviallyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nontriviallynormedfield.md) | 168 | `declaration-track:3bf029fdbc8c36de7120aa1904fec27bada61331e5268365edd38e92f21d4283` |
| 21 | `class` | [DenselyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/denselynormedfield.md) | 175 | `declaration-track:0792c9841faef826fa72fdda08fa1528d3935ecfe7379b864972355f29c471dd` |
| 22 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/instance-source-edition-4.md) | 183 | `declaration-track:cb9420fceda0926b8a19cea0cb6a137535cafba376c9f239717722ebb1098a54` |
| 23 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/instance-source-edition-2.md) | 192 | `declaration-track:37b3090020f43cd4aad44d5d0e66e292c6d7536694e3c8920b40657dbc1eb4df` |
| 24 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/instance.md) | 196 | `declaration-track:1556d8538af81bbeca7ce70b2dbd0a6a94c5869c217132642bf254faa6c3a707` |
| 25 | `theorem` | [exists_one_lt_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-one-lt-norm.md) | 207 | `result-track:84c922599e506f34bb580e2f20795e0c3590bd4d9c1d7136d4f8cbe8cf150916` |
| 26 | `theorem` | [exists_one_lt_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-one-lt-nnnorm.md) | 210 | `result-track:689e3b2f6b48e31fb29118bee0fd5ef051e35d51d97dd1686c36c6d2f0cfa086` |
| 27 | `theorem` | [exists_one_lt_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-one-lt-enorm.md) | 212 | `result-track:4e0e2ee42ffb7759b5dbd48907fc828538e5fefbac45ba702a5ba7539ba544b8` |
| 28 | `theorem` | [exists_lt_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-lt-norm.md) | 215 | `result-track:665df82257cde1e0e6e3143e3205cad27df346420262cd55c15e5c4b9a2b1214` |
| 29 | `theorem` | [exists_lt_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-lt-nnnorm.md) | 220 | `result-track:99e82faa9e82279b2ff8822acb6cdf3aef42f74fd8a5db56950918a1949de50a` |
| 30 | `theorem` | [exists_lt_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-lt-enorm.md) | 222 | `result-track:3e801a8df52b6fd38b883178822d8afc03d61a19d504199375c8196ffad785bf` |
| 31 | `theorem` | [exists_norm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-norm-lt.md) | 226 | `result-track:7a1ec13e07cdb639afe231f011df183f170d5465e6fb6f89e6749e5f7bc27cd2` |
| 32 | `theorem` | [exists_nnnorm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-nnnorm-lt.md) | 230 | `result-track:d10ff097be0ef65ea0b01ea419a7a849f5d6496d4b18ce1099f9c53e958cfc0b` |
| 33 | `theorem` | [exists_enorm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-enorm-lt.md) | 234 | `result-track:10ef04d972aaae999d02c3e1eedcee2755452f05be98c824607b9d20264e5fcd` |
| 34 | `theorem` | [exists_norm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-norm-lt-one.md) | 240 | `result-track:0e13ac181ffb92a697465f935be782afdc869b4cd7c742acf954f5a21752937a` |
| 35 | `theorem` | [exists_nnnorm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-nnnorm-lt-one.md) | 243 | `result-track:810df7316f16fdd0aa1abbfe454e6fef3045ab0a864b7006edf7f8075d746317` |
| 36 | `theorem` | [exists_enorm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-enorm-lt-one.md) | 245 | `result-track:0bf90cb2b7f647b3f4fc047041cf645f686b7fa87520209b3a25a4084d73384b` |
| 37 | `theorem` | [nhdsNE_neBot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nhdsne-nebot.md) | 250 | `result-track:c2ea41fe459c4cceadbae13b96b23f8ba306718935be1b7790153f591081b9af` |
| 38 | `theorem` | [nhdsWithin_isUnit_neBot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nhdswithin-isunit-nebot.md) | 261 | `result-track:da72e4c0b123b7ad0038b4f4ddde0bd0b9f65ae7c0a667f214a249d89fecfd0b` |
| 39 | `theorem` | [exists_lt_norm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-lt-norm-lt.md) | 270 | `result-track:0a29905f96b2e280eff43c47f49ab19df602c99e802a1ca11af423e9e6665b61` |
| 40 | `theorem` | [exists_lt_nnnorm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/exists-lt-nnnorm-lt.md) | 273 | `result-track:36f34e8e09e4b93d3a48ac625f76e63db1b5a724680ab56352562f94ce2d5135` |
| 41 | `instance` | [denselyOrdered_range_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/denselyordered-range-norm.md) | 276 | `declaration-track:e31c945b833a2a4483c904f58937f286010ef7a8e7ee3662466137d4289f7e63` |
| 42 | `instance` | [denselyOrdered_range_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/denselyordered-range-nnnorm.md) | 282 | `declaration-track:6f5d9d9ce86291b39a399f9db8ccba45d2dbdbaf28ae099ccc461133dec50d22` |
| 43 | `def` | [NontriviallyNormedField.ofNormNeOne](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nontriviallynormedfield-ofnormneone.md) | 294 | `declaration-track:c4a3fa53a8e0e8a943b6d632a0a8e0e567b5d0900b0716c5935bc5612d683921` |
| 44 | `instance` | [Real.normedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/real-normedfield.md) | 305 | `declaration-track:91ec393662ab81ddbf0f8b966d279b12499d2c63325bb56aa59b035c597fd7e4` |
| 45 | `instance` | [Real.denselyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/real-denselynormedfield.md) | 309 | `declaration-track:d6fe14d5c10d45de2240e2074cb97b63df2729e732d7c319b465bab13903ff17` |
| 46 | `theorem` | [toNNReal_mul_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/tonnreal-mul-nnnorm.md) | 316 | `result-track:0922cd73846b624139b7f8f8b5a8e7c5d6fd74ac34ab344fa97f3e348e476f47` |
| 47 | `theorem` | [nnnorm_mul_toNNReal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/nnnorm-mul-tonnreal.md) | 321 | `result-track:7c94a6c006edf6e75b6673ca7ee93d08d7310948a0c5ec196182590e020ec0c3` |
| 48 | `abbrev` | [NormedDivisionRing.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/normeddivisionring-induced.md) | 336 | `declaration-track:2295b09332c3df0f2be2d6488521b7af67e489191a600504a82e3ae5655bebdd` |
| 49 | `abbrev` | [NormedField.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/normedfield-induced.md) | 345 | `declaration-track:e9dd620c220d78a0b72d9ab58a0bddb4c97c8538b70f417d4cf8081340602c66` |
| 50 | `instance` | [toNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/tonormedfield.md) | 360 | `declaration-track:8a4506364e84ff0e94ca4217890fb8bd4585a8d0dd6135dd6852e66e763d1f90` |
| 51 | `def` | [toNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNamespacedEnormInv.lean/declarations/tonormedfield-source-edition-2.md) | 368 | `declaration-track:b247e46a9bf29857cd8f829040579684533eb89bd6e7cd590edbc123a1f97c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32504d0a128e8fbc6153e43b74c9981d6efb5f677d0a743144a5960969d4284c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant9bf406490630aecec9ed32fd839534e0c1ca86cf08dc975342218cef11c843df.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant9bf406490630aecec9ed32fd839534e0c1ca86cf08dc975342218cef11c843df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
