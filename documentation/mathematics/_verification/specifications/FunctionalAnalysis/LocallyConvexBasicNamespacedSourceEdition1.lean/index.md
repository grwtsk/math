# Verification target: Locally Convex Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2ed60f15d24dc8b62d341f03cd555c26f2c89a0",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2ed60f15d24dc8b62d341f03cd555c26f2c89a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Hull` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Absorbs](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs.md) | 66 | `declaration-track:f73968bc286bbe478e25d8a2e10d8a0f11f7d9c832619c1e147e8ce1cd794d3c` |
| 2 | `theorem` | [absorbs_empty](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-empty.md) | 73 | `result-track:aa7bc58ced2d01b1ac396dd8ccdb6c331cf9429e570d45c53b569051ad1a9560` |
| 3 | `theorem` | [Absorbs.mono](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-mono.md) | 77 | `result-track:64cfc70e6ae249442a3c7dd9fa9525da9bdbb4a301954bb1a8be3e508e30c16f` |
| 4 | `theorem` | [Absorbs.mono_left](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-mono-left.md) | 82 | `result-track:4309673ff13c171a72392ffa5f9ffb9433669d165fbddec69f38c5b79213e2ac` |
| 5 | `theorem` | [Absorbs.mono_right](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-mono-right.md) | 86 | `result-track:695473a040ca80639437641f39eb513ecd8d01e8e097e74979750678a5a0f4f5` |
| 6 | `theorem` | [Absorbs.union](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-union-source-edition-2.md) | 90 | `result-track:98fecfad8e081b6bf009a8e081f135dead4301adcd3bbd5715c953c556a5d3aa` |
| 7 | `theorem` | [absorbs_union](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-union.md) | 99 | `result-track:7495d671cc22043e0175dea9bd07424be84d5d5fd34ac50a24752ec796b27ea8` |
| 8 | `theorem` | [absorbs_iUnion_finset](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-iunion-finset.md) | 104 | `result-track:aafa6a8489b03b2bacdc2fe6df6db940201936ecfd36e70615ca6e9c8fe642c3` |
| 9 | `theorem` | [Set.Finite.absorbs_iUnion](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/set-finite-absorbs-iunion.md) | 119 | `result-track:16e1af68d331f2847be6eae1cc47525fe8e278c1def4a74c9819eba34406a758` |
| 10 | `def` | [Absorbent](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent.md) | 129 | `declaration-track:9fcdf07166c39bdb75630678ee30fe6e6a303392b29efde5940434fccbf2580f` |
| 11 | `theorem` | [Absorbent.subset](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-subset.md) | 135 | `result-track:fe076ff30f9b08067c078ce1fc2bc21887a6d5dfc4abc7d353dcb7b7ca03fa81` |
| 12 | `theorem` | [absorbent_iff_forall_absorbs_singleton](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-iff-forall-absorbs-singleton.md) | 140 | `result-track:073ae6aaf4dc0d8050e8937a94e984a9e01c94fff7f987d6df37bfed93ab0cb4` |
| 13 | `theorem` | [Absorbent.absorbs](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-absorbs.md) | 144 | `result-track:c44318185366e7709f797fd26f7c84b7fa2f3a9d532da3734f6dbf287f125af9` |
| 14 | `theorem` | [absorbent_iff_nonneg_lt](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-iff-nonneg-lt.md) | 148 | `result-track:53064c5f1a226934ebf50166acd260aa87a843a0716540e7c60b8b78cea929ca` |
| 15 | `theorem` | [Absorbent.absorbs_finite](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-absorbs-finite.md) | 156 | `result-track:4c537fe64ebd8faf7386a94a6908ce1e89f0c562b25c1749c02223b0ce4918bd` |
| 16 | `def` | [Balanced](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced.md) | 165 | `declaration-track:d350affac26bb4e6d79c8d9c3d334211ae01f3e3135ee484fc033790a6eaa1e1` |
| 17 | `theorem` | [balanced_iff_smul_mem](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-iff-smul-mem.md) | 171 | `result-track:1f07f308bd4f7707f622feb696f8ee1c8d718639cbe68b8350f8c666c743606d` |
| 18 | `theorem` | [balanced_empty](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-empty.md) | 179 | `result-track:dbcff3fb3d6e4c83e38de0a955e6480015db4e1aadd59a04bfdd63d5dc8c2c40` |
| 19 | `theorem` | [balanced_univ](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-univ.md) | 183 | `result-track:1b5e29bedc0a1d903c5b05958f4192b657a6c04786a0488c19266d176b0b3403` |
| 20 | `theorem` | [Balanced.union](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-union.md) | 186 | `result-track:3bdf06bc00d71c71ffe459c6d34c5e6adcea7f1651c43b4cecae502a0cfd0b54` |
| 21 | `theorem` | [Balanced.inter](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-inter.md) | 190 | `result-track:6c84b3c72651fa2ddf180af2af1c109669e953b1b475d60892a1ae5eb116ace9` |
| 22 | `theorem` | [balanced_iUnion](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-iunion.md) | 194 | `result-track:41d6b60b8d8e2da48cf61f0c335f1722d2795363d995ad6b74bf2fed3c50d039` |
| 23 | `theorem` | [balanced_iUnion₂](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-iunion-source-edition-2.md) | 198 | `result-track:967f7d06ae87ba465c17a7213e266180d4762d5f6f3ed151caec21f7eca2896e` |
| 24 | `theorem` | [balanced_iInter](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-iinter-source-edition-2.md) | 203 | `result-track:a0e04256a0e6cf313ed87668d59b062e32f28b08b03751a672a86cbc57b07671` |
| 25 | `theorem` | [balanced_iInter₂](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-iinter.md) | 207 | `result-track:243ef4bdadb32a4d5adc6be4e26e7d73736be75b38080bb059d3db2a29f060f5` |
| 26 | `theorem` | [Balanced.smul](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-smul.md) | 214 | `result-track:85d7fa1ca0e5e7d93b3499077c8efd15772613a1719e4e05408a45a84abf5abe` |
| 27 | `theorem` | [Absorbs.neg](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-neg.md) | 224 | `result-track:9ce5e62e7c8d029359e524bd06e2133f99f3551989a7430e6940e6c4ca13c37f` |
| 28 | `theorem` | [Balanced.neg](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-neg.md) | 229 | `result-track:7ff94ef01b1bf9a68e39bb8a6b981993b49b9617b5de24c032f8123268f3c38a` |
| 29 | `theorem` | [Absorbs.add](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-add.md) | 233 | `result-track:6408cf30c96e5b3b27e06164cc9af6ab408ba1cac3a8dd1333d89c02d36cd5c0` |
| 30 | `theorem` | [Balanced.add](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-add.md) | 240 | `result-track:7d61fdaa80a98dc080ac776d453af4e80e5f161a289e69bcf2358a812df67b34` |
| 31 | `theorem` | [Absorbs.sub](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-sub.md) | 244 | `result-track:00cd921720f48bf46e9c0c04ecaf2a3b4d2b4a832f2ab461b35da408a81afd61` |
| 32 | `theorem` | [Balanced.sub](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-sub.md) | 250 | `result-track:eb7d2f903c46a6ffa959d7ca58941ef67e8dd4292856baa4d7e6e2ca3888dff3` |
| 33 | `theorem` | [balanced_zero](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-zero.md) | 255 | `result-track:897ef027589aedfc3c983ec835a0d2b544858c1925fc140e22bd27fd877a0446` |
| 34 | `theorem` | [Balanced.smul_mono](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-smul-mono.md) | 268 | `result-track:03ec7336f00039141eee77e83f5970f7ba610394d864ad7496143782500ff417` |
| 35 | `theorem` | [Balanced.absorbs_self](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-absorbs-self.md) | 284 | `result-track:204359a28ecc159e84152194b9d4fd6fe5a2147d53539c333ae6c269527c3c04` |
| 36 | `theorem` | [Balanced.subset_smul](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-subset-smul.md) | 292 | `result-track:fb91a9bff2a01e80ce59d9079219c6fab413b631fc4a450a3bec9f5a0204f4c9` |
| 37 | `theorem` | [Balanced.smul_eq](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-smul-eq.md) | 301 | `result-track:12147221b6533403a7db5727836d60c2e27ab1642ad86ab42bd61b8def729387` |
| 38 | `theorem` | [Balanced.mem_smul_iff](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-mem-smul-iff.md) | 305 | `result-track:740a7bfdbd7d528ba95a3b749a12d7c10fe828d65d12d1b6b15a1b4a1962d9d7` |
| 39 | `theorem` | [Balanced.neg_mem_iff](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-neg-mem-iff.md) | 317 | `result-track:5c0131fec40595e0adbd6d9b2891ba792faaeb2cd7569a252c9995d6245e3153` |
| 40 | `theorem` | [Absorbs.inter](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-inter.md) | 322 | `result-track:8802197f5ec483be010917e8cf1926bf492fdf0a002e9e80197c374199567569` |
| 41 | `theorem` | [absorbs_inter](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-inter-source-edition-2.md) | 332 | `result-track:beee333169d088775dcea1176099b418698d03df1366117fd6b3a04f80e9d47b` |
| 42 | `theorem` | [absorbent_univ](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-univ.md) | 337 | `result-track:9540dfcaf6f7f38d5c9e9a9da4be1e3b9d1836dbd58cb6163dd977a27426f72e` |
| 43 | `theorem` | [absorbent_nhds_zero](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-nhds-zero.md) | 346 | `result-track:abc65f0b85069bfc4d1bb323181ff6500507efab6cbf5df70e58da47ae2b8fd6` |
| 44 | `theorem` | [balanced_zero_union_interior](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-zero-union-interior.md) | 363 | `result-track:35b3c18bd2d206c64d0a6ef21b4dbfcc5714fcb6fdd0d1473d2bfe6b7898575a` |
| 45 | `theorem` | [Balanced.interior](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-interior.md) | 379 | `result-track:647e11b5cc1ced9c6a2e8e86d2eb90937f63ceb67cba4a1365984de188fef25a` |
| 46 | `theorem` | [Balanced.closure](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-closure.md) | 385 | `result-track:1f5a3bf21c04b4e37b9c8066de8a9ed90b6dc8f34b788049e9e5eec216121ec1` |
| 47 | `theorem` | [absorbs_zero_iff](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbs-zero-iff.md) | 396 | `result-track:a110667797df48d5323e0e2e810fee89eff33d2faf7702258cd8ff695ec0fdad` |
| 48 | `theorem` | [Absorbent.zero_mem](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/absorbent-zero-mem.md) | 405 | `result-track:38848417b5e1a9eca4dc97fb49b44a6ebe8ad81e9e4f8975b736d0fec2cdc3fb` |
| 49 | `theorem` | [balanced_convexHull_of_balanced](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-convexhull-of-balanced.md) | 411 | `result-track:464659e8eddb9f4070d13d56c51b5eea848210bc4abcea5d6b0b95028777f508` |
| 50 | `theorem` | [balanced_iff_neg_mem](../../../../FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/declarations/balanced-iff-neg-mem.md) | 427 | `result-track:93212b7692ded993660b36468d3141b2b8b7325b7a321e7b6b602c968f7d545b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce11e43c08df7816efcfd31d3ebfd7f1a78b61a271f5e4f65467b817550ed427 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
