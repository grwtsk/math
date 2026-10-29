# Verification target: Semilinear Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4ca07f5b50bf0638608dadc8f25b73d981cf442",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4ca07f5b50bf0638608dadc8f25b73d981cf442`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Finset` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset.md) | 69 | `declaration-track:b541d9d4107b8c5d49d9b088ac7cb2eb3482ed954f4043ce70d0bf14deaf02f4` |
| 2 | `theorem` | [isLinearSet_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-iff.md) | 73 | `result-track:8f637bb50d6c27e670af46c9c7eb77308bffa6b046f66212c8e2ef5648013eb9` |
| 3 | `theorem` | [IsLinearSet.singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-singleton.md) | 78 | `result-track:b2cd9d518337abe6014e0a9199ba57f3892f10c3c8a55be2fbb201fb8c84f3a8` |
| 4 | `theorem` | [IsLinearSet.closure_finset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-closure-finset.md) | 81 | `result-track:7c431e181e184bc9f7c4fe69c16cf48e1fcf677c83fcb70be10182cdcb709bfe` |
| 5 | `theorem` | [IsLinearSet.closure_of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-closure-of-finite.md) | 84 | `result-track:f49d74018c079581840e1089b0ba27d838a6bc103d95940c4ae38a5bf555be55` |
| 6 | `theorem` | [isLinearSet_iff_exists_fg_eq_vadd](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-iff-exists-fg-eq-vadd.md) | 88 | `result-track:bd74a8bb81ab35ff3f77eb222d63b314cfa20ffaa8943e24a269c637945dba08` |
| 7 | `theorem` | [IsLinearSet.of_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-of-fg.md) | 93 | `result-track:0801d016aa235fcc0dae1cdc8d8df425db460723433facec0e0dec29416b4753` |
| 8 | `theorem` | [IsLinearSet.univ](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-univ.md) | 98 | `result-track:83bd125a57e62e95805d1862d3262bde43b67dca71411ed466b9175b5dc47e6a` |
| 9 | `theorem` | [IsLinearSet.vadd](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-vadd.md) | 101 | `result-track:840530ee1c3408aa41d5bd737617897f58a922aa6c91a10903201b166613615d` |
| 10 | `theorem` | [IsLinearSet.add](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-add.md) | 105 | `result-track:75d555b20b27e796080732200475831a46dc9c49937a47eddaadb2dba5a09f78` |
| 11 | `theorem` | [IsLinearSet.image](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-image.md) | 110 | `result-track:aff0788988003a50d9e88152f0336eabb88e615b1f53fe0771a6a8f8eec80205` |
| 12 | `def` | [IsSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset.md) | 116 | `declaration-track:3b79e44452305e5f3181e4329f73b6b6c5cf8df03393db100a54130e5c41438d` |
| 13 | `theorem` | [isSemilinearSet_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-iff.md) | 120 | `result-track:8e8944b74e7d25e7c451deaeb9235e6f1526c1c2f48c878186faaee1c6872cf5` |
| 14 | `theorem` | [IsLinearSet.isSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-issemilinearset.md) | 124 | `result-track:d1574db8d61d96045162e05b92e860a64fc47d1005386b3d2be26baa6b07498e` |
| 15 | `theorem` | [IsSemilinearSet.empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-empty.md) | 128 | `result-track:9569d9d0fe8885501d98413b51a054c02f6ef6d168240c5e47df8eed70a780c8` |
| 16 | `theorem` | [IsSemilinearSet.singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-singleton.md) | 132 | `result-track:2a5c25c008a3d8c6647a7515d39f220f8afad2cd0caf4f3212e9326318f97277` |
| 17 | `theorem` | [IsSemilinearSet.closure_finset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-closure-finset.md) | 135 | `result-track:afac69a72abfe48f9f7fe2236e0932a4c29ea62a0e82bb0406e682a2dcf4b56d` |
| 18 | `theorem` | [IsSemilinearSet.closure_of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-closure-of-finite.md) | 139 | `result-track:84f70ff3fc7f2fdeed1dec9275ae74a56b4d61426b2e3e191c40e15b52b47ed9` |
| 19 | `theorem` | [IsSemilinearSet.of_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-of-fg.md) | 143 | `result-track:ce7eeb754678028f2bff075c7b6e66ece1cefd2f99dd5240a246e3b21fcf2dd4` |
| 20 | `theorem` | [IsSemilinearSet.univ](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-univ.md) | 148 | `result-track:340b13c2e675025f53c73672cbf7ee6b014e91748bcca8c02108e6c31fb1a5b5` |
| 21 | `theorem` | [IsSemilinearSet.union](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-union.md) | 152 | `result-track:a670c4aa3fd60347e6c83306756ba834e5734bb2746fb9bb83b69fb276b02b58` |
| 22 | `theorem` | [IsSemilinearSet.sUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-sunion.md) | 161 | `result-track:a9eb6aa7ac25c8e55e3836a0b507cbb23ac940e5ced886ab733056d83a81ddf5` |
| 23 | `theorem` | [IsSemilinearSet.iUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-iunion.md) | 169 | `result-track:b1ace94a74eb84e088105895c7f2d6cd6225ff873745630b75e0d5f57b603c2b` |
| 24 | `theorem` | [IsSemilinearSet.biUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-biunion.md) | 175 | `result-track:2e9e64b86fffa9eac1c1d03753d4f81a5b542136553c1de394834b8ed64ef837` |
| 25 | `theorem` | [IsSemilinearSet.biUnion_finset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-biunion-finset.md) | 181 | `result-track:d7256ca584e47161024e6ecd334a5433d7810b36eef15b5cf0a776cb62d5bcee` |
| 26 | `theorem` | [IsSemilinearSet.of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-of-finite.md) | 185 | `result-track:dbe6fa65d3260e251da83366d70b65834e0a781ee190d4587a2c135f6dfbc670` |
| 27 | `theorem` | [IsSemilinearSet.vadd](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-vadd.md) | 190 | `result-track:c9b3e78503a2d615f9258e4e902072f12d259364ece6fddf3244140f131afefc` |
| 28 | `theorem` | [IsSemilinearSet.add](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-add.md) | 196 | `result-track:76538fdaa94fae5ca44c0f8b5c0807f19786bf852310445ec2f82749be982ecf` |
| 29 | `theorem` | [IsSemilinearSet.image](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-image.md) | 205 | `result-track:35aac334ae4f79b5e9b31158de8037887d69f14ada7c389fb589749f2368b8bb` |
| 30 | `theorem` | [isSemilinearSet_image_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-image-iff.md) | 210 | `result-track:db75ee1d8fb5b549719f99ec897f7ba4ccdba3d967d63a3e4bde174c01f25b3c` |
| 31 | `theorem` | [IsSemilinearSet.proj](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-proj-source-edition-2.md) | 219 | `result-track:f49695548109c99a0f447db3c9c4625bce7ffa21dcd4959576e26f78a7af0869` |
| 32 | `theorem` | [IsSemilinearSet.proj'](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-proj.md) | 231 | `result-track:54a04de02344cefb7cef7b755ce73d032d5b8c2baf1c907abd3ca3be31fab471` |
| 33 | `lemma` | [IsLinearSet.closure](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-closure.md) | 235 | `result-track:a1587840812ea090a4d7a1e49c0ec3a6bf0e8ff2cea6419ffc980267c4916f7a` |
| 34 | `theorem` | [IsSemilinearSet.closure](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-closure.md) | 265 | `result-track:ff4e6e0b195bd4e4ed54ef54dc0d49283a7708c1a29373bbb56c53d09716de01` |
| 35 | `def` | [IsProperLinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/isproperlinearset.md) | 275 | `declaration-track:7099c9c757e864f38fac78ea226246d5a90345574cc7cb58edc32d84be5fb581` |
| 36 | `theorem` | [isProperLinearSet_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/isproperlinearset-iff.md) | 279 | `result-track:b726ae2b9fc6a4aecfa2487d30609e723052352dc6f97cd75096b906a722cdef` |
| 37 | `theorem` | [IsProperLinearSet.isLinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/isproperlinearset-islinearset.md) | 285 | `result-track:d62742817bd43d2c115efcd064dfbfbd28d592430efdcf673c4b67f6f7b09cb7` |
| 38 | `theorem` | [IsProperLinearSet.singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/isproperlinearset-singleton.md) | 290 | `result-track:300de86d16405c33627d6371356e930a8a30246d5e04a80fc872fafd00543bad` |
| 39 | `def` | [IsProperSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset.md) | 294 | `declaration-track:6f29849307515e690ae215b6b61137aa38d0fac8499104be18323c64000c7967` |
| 40 | `theorem` | [isProperSemilinearSet_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset-iff.md) | 299 | `result-track:80c3d1a4edac8b11f2ea5bff79b459d738b7c9826a0bc3011dbe6df8613dc020` |
| 41 | `theorem` | [IsProperSemilinearSet.isSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset-issemilinearset.md) | 303 | `result-track:5bad24eda1d0ab529230d0c18c15159408f77b086fa6f90709f8390b7dc0080c` |
| 42 | `theorem` | [IsProperLinearSet.isProperSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/isproperlinearset-ispropersemilinearset.md) | 308 | `result-track:500298c68c0a459538fce7ad9c23a09d17c33f662835240663d95dd532552561` |
| 43 | `theorem` | [IsProperSemilinearSet.empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset-empty.md) | 313 | `result-track:3e73d3b9236dcd90bcc5c3fc6a8aece592b87409f8cb55f111c2ad80e75689b5` |
| 44 | `theorem` | [IsProperSemilinearSet.union](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset-union.md) | 316 | `result-track:5d49505105149cd1d780c2af88a38033ccc91dc3d1bf855094acd7b85b5687ee` |
| 45 | `theorem` | [IsProperSemilinearSet.sUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset-sunion.md) | 325 | `result-track:5727bd0a44be30863e02386924dfad36cfc9d55670509b35412692480e1c1030` |
| 46 | `theorem` | [IsProperSemilinearSet.biUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset-biunion.md) | 333 | `result-track:c087d03b142f5e90eb02b0153ccfa6c76e9c4dc694256fc788dc0dd2d9bdee71` |
| 47 | `theorem` | [IsProperSemilinearSet.biUnion_finset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/ispropersemilinearset-biunion-finset.md) | 339 | `result-track:0f55a0c44b6778842dfb88fd3090013d3a9725e7f2fa13415228673ecf1c319a` |
| 48 | `lemma` | [IsLinearSet.isProperSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/islinearset-ispropersemilinearset.md) | 343 | `result-track:18e28e666a761774ae7afce6568cd74b9b30a14ae325c19c7ed8aa9afa55d9f6` |
| 49 | `theorem` | [IsSemilinearSet.isProperSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/issemilinearset-ispropersemilinearset.md) | 392 | `result-track:b2aec82f76e074847601954c5115a061fefeed73937ee196015a45f9254c3dc3` |
| 50 | `theorem` | [Nat.isSemilinearSet_iff_ultimately_periodic](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemilinearDefsNamespacedPublic.lean/declarations/nat-issemilinearset-iff-ultimately-periodic.md) | 402 | `result-track:8a6eae5185c6ae9dd8718ef8dc7fba3ab97b092599b8a48db3fabc3e0ddd9948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea64bfbd58c06204c3c435d8afe64deb2d0d8ffca369512c2369ada1ba5a14cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
