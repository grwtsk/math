# Verification target: Affine Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75e2e9160ebd6820908289ec31ccbc450862c613",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75e2e9160ebd6820908289ec31ccbc450862c613`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Polynomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/affinespace.md) | 42 | `declaration-track:6af62b581ada380f89aba5a8744ff44f25e8b4ab9a23a171bb504c9b198ea2fa` |
| 2 | `lemma` | [of_mvPolynomial_int_ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/of-mvpolynomial-int-ext.md) | 51 | `result-track:023b8a7378249b856a15527a3cfefc6d6fa8030182bf91adc91e130826321de1` |
| 3 | `instance` | [over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/over.md) | 64 | `declaration-track:553ae15e9f89602e9e3ae9a6adecfa1cdb48fcd4ba6e4b2ff88656cf44228725` |
| 4 | `def` | [toSpecMvPoly](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/tospecmvpoly.md) | 68 | `declaration-track:9462929e80479101d4653355bcd2062d2a0acd0d4bf73d63a564b6debd8a32eb` |
| 5 | `def` | [toSpecMvPolyIntEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/tospecmvpolyintequiv.md) | 77 | `declaration-track:ba2f2eb49f6b61e5077591b8c435857d40bf53e1074471006198cc398c6c79e8` |
| 6 | `lemma` | [toSpecMvPolyIntEquiv_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/tospecmvpolyintequiv-comp.md) | 104 | `result-track:a019a26287b0c9a998959a0b22d371e51d899b96307e830067616ab67092fbf4` |
| 7 | `def` | [coord](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/coord.md) | 109 | `declaration-track:133117d84aa7d6f51bd3fe6638d0bb35db2458533d914a6014fc7a04fb324aa4` |
| 8 | `def` | [homOfVector](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/homofvector.md) | 116 | `declaration-track:cc5c9b0ca2dbdb52159e888106a054da21ee6900d229a720218a8a64de5ba50f` |
| 9 | `lemma` | [homOfVector_over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/homofvector-over.md) | 122 | `result-track:7b0b4cf94c0a5a5c193214c503f7c13cb31244baea42d454f36295a8f38442ed` |
| 10 | `lemma` | [homOfVector_toSpecMvPoly](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/homofvector-tospecmvpoly.md) | 126 | `result-track:f76a45fb3c2b7a8fc1c1dfcbc1515a105bab795c8030e45d90d1102e34484827` |
| 11 | `lemma` | [homOfVector_appTop_coord](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/homofvector-apptop-coord.md) | 131 | `result-track:ec37c8b8b736fb16814b6bea06cf1db5f177ea4e13f4e5708a71086d0bbc3486` |
| 12 | `lemma` | [hom_ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/hom-ext.md) | 137 | `result-track:ab742a3413dac38540eecf2f883ae850ba6e27771307f4ad4b8e10544ebce4c8` |
| 13 | `lemma` | [comp_homOfVector](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/comp-homofvector.md) | 148 | `result-track:f1cae54e800f74516325d7a637bfde7da8b4121ee2d16f0038055a2cf5049bcf` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/instance-source-edition-5.md) | 158 | `declaration-track:9d678981910e5d0fe4ba162d95d1e8ee9bf36d919a6ddff536ce68458375b126` |
| 15 | `def` | [homOverEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/homoverequiv.md) | 162 | `declaration-track:e4038ff28dc6314dc306e1c71beb24b37f314576346ed4793ca687ee996de176` |
| 16 | `def` | [isoOfIsAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/isoofisaffine.md) | 177 | `declaration-track:c2c2055e21f73e7f8b472ad7706a8276dcbf05753d0832488915ec514fe80c3b` |
| 17 | `lemma` | [isoOfIsAffine_hom_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/isoofisaffine-hom-apptop.md) | 220 | `result-track:acad712e947b1f6bcfbc5c4898864db1ce18e0593158aea4bcf48a05fc684cdb` |
| 18 | `lemma` | [isoOfIsAffine_inv_appTop_coord](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/isoofisaffine-inv-apptop-coord.md) | 227 | `result-track:cf5ba393c0de32f10d7edae361e099b9081febaf0169c0655643e490caa9126d` |
| 19 | `lemma` | [isoOfIsAffine_inv_over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/isoofisaffine-inv-over.md) | 232 | `result-track:20f003a7fbe49a6fcbad170068674d6669ba379257ca41ea1e09533bec96b2b6` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/instance-source-edition-2.md) | 236 | `declaration-track:46e54d9d38f57b9999568f5e9e631f7c4ab1f66e5227a17b63e5dd114e17e22b` |
| 21 | `def` | [SpecIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/speciso.md) | 240 | `declaration-track:599918fb0d7331fd4f3bde4becde35b07e7cd3e6b20c069a04b5903c982c576e` |
| 22 | `lemma` | [SpecIso_hom_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/speciso-hom-apptop.md) | 246 | `result-track:d74196e0bf57ac1d24a638642907081dafea8b45ce181767f406fdec11404a75` |
| 23 | `lemma` | [SpecIso_inv_appTop_coord](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/speciso-inv-apptop-coord.md) | 261 | `result-track:44c2b1d78bca530bcb14c821bbb93735019cafdb4d7ada45cb1145bbbc7578de` |
| 24 | `lemma` | [SpecIso_inv_over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/speciso-inv-over.md) | 273 | `result-track:eb0ecf4a64d0404119e6c8393c403b1c3caa48e3c026c3faddd258aa5fa741c7` |
| 25 | `def` | [map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map.md) | 287 | `declaration-track:791254a019c7cea6a8c50b10754a798a357dd447f46782e7bcdb90ab2b3b72b4` |
| 26 | `lemma` | [map_over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map-over.md) | 291 | `result-track:e589d546c5533e63d0f087b57ea139edb993a974ac73191dc439e05223f9a264` |
| 27 | `lemma` | [map_appTop_coord](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map-apptop-coord.md) | 295 | `result-track:78800ee0e72e2dd89cbb9192e88c5c913da0ec7b95b0ddbfe346ef71a70a9000` |
| 28 | `lemma` | [map_toSpecMvPoly](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map-tospecmvpoly.md) | 300 | `result-track:0e909dfb0b451ebbab2b750be21c1fdd595e53cb6e59962d901ab93601c16032` |
| 29 | `lemma` | [map_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map-id.md) | 307 | `result-track:d6269d5fba5a4fb3d3939afbe398ae65c0c8d2df06976751cca4ebe0fa941731` |
| 30 | `lemma` | [map_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map-comp.md) | 311 | `result-track:5d8e24f33f30261ffcdea763525d605129e61877c93f721cedb584c5b4f30aba` |
| 31 | `lemma` | [map_Spec_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map-spec-map.md) | 317 | `result-track:861f05d25140ef668ae6583e306132a3043a751da86994fdf9062a392967dff4` |
| 32 | `def` | [mapSpecMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/mapspecmap.md) | 335 | `declaration-track:45dfe043334e88fe8c8c401d765efb589f564ec2b9c80ecd1755c8190b320e3f` |
| 33 | `lemma` | [isPullback_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/ispullback-map.md) | 340 | `result-track:3418838f260572252d3c65600772399471a2688f1700b83ec87070a6d05e5612` |
| 34 | `def` | [reindex](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/reindex.md) | 348 | `declaration-track:f72f9ed177e9b0603c5641dbdfecbeffcadec761c3ec6e9befbd3b39ba4d4f9f` |
| 35 | `lemma` | [reindex_over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/reindex-over.md) | 352 | `result-track:1143e9543a87d8609bfc3f0be3de62f367b6709302803b22d36e492518dab7e7` |
| 36 | `lemma` | [reindex_appTop_coord](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/reindex-apptop-coord.md) | 357 | `result-track:360837e1d875e884d016128013b01e19e906c7d2864fca096fbf44d1e658789a` |
| 37 | `lemma` | [reindex_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/reindex-id.md) | 362 | `result-track:617efb28f433890e86fd7c79faf72c4bb563982dbd3f93322b4e747d1fc82943` |
| 38 | `lemma` | [reindex_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/reindex-comp.md) | 366 | `result-track:2fe6753c10b59a0ac4fdd2537f5f091a54fae618c76b779157a46b13206249c6` |
| 39 | `lemma` | [map_reindex](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/map-reindex.md) | 376 | `result-track:b575082b046d1658fc7531d7a537b902e67179f4a2e90f9d3a8d7ea60b3a17f1` |
| 40 | `def` | [functor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/functor.md) | 382 | `declaration-track:0833f0228efaf61fb52b660b5d39637596b6f045fb807172e9a48be4505089ea` |
| 41 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/instance-source-edition-6.md) | 391 | `declaration-track:d4ae34f52e4558c8d95e1b10ddb22faa47d853cd33a379989fe106bb3d48b77f` |
| 42 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/instance.md) | 393 | `declaration-track:1c8081a465df57d8ac9ba82347064792d0b3b1c3ad61f2bc9451bfb1b4028f6c` |
| 43 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/instance-source-edition-3.md) | 399 | `declaration-track:48b1e508fbbc4e4a316f688881b8c12d5b7fd162520d647c60d58eca923170ae` |
| 44 | `lemma` | [isOpenMap_over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/isopenmap-over.md) | 408 | `result-track:bbb8cd3656e4a18f0779e8442fffe221cbbf506cc6fa3ad25881243f060c12c7` |
| 45 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/instance-source-edition-4.md) | 422 | `declaration-track:4e95183cb20fc3f1adaec425d79d7885d9823d6d7fb9325b3cc12ff7bfd860e1` |
| 46 | `lemma` | [isIntegralHom_over_iff_isEmpty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/isintegralhom-over-iff-isempty.md) | 432 | `result-track:453a428a1509a28f155e56114e3e2e69912fb23664007da366d055ed06fce19c` |
| 47 | `lemma` | [not_isIntegralHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSpace.lean/declarations/not-isintegralhom.md) | 461 | `result-track:220d3a82114c4c1591298dc0d4b1c8b1a4edf4aed46511c245ad3f97e30c5449` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85e46cd43727db8cc88fd4cd97e7fa6183aa617e481077b94ff310c23bf3d1eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
