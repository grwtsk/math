# Verification target: Ring Hom Properties Is Stable Under Base Change

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0585bd799331b3ff8dd4654fd068c8780ac86bc`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Constructors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Locally` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsStableUnderBaseChange.pullback_fst_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/isstableunderbasechange-pullback-fst-apptop.md) | 69 | `result-track:3fd91ad4a490f3398f167613eb78a4fb171de0bad714a58540859c57b67d4e54` |
| 2 | `def` | [sourceAffineLocally](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/sourceaffinelocally.md) | 102 | `declaration-track:6002c0d08dbc391b17c71fb6859e47a86ce1b0d7f0f34ff00a4554e29c800864` |
| 3 | `abbrev` | [affineLocally](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/affinelocally.md) | 108 | `declaration-track:e17f1e689aefe18a086ecd8d8c519c47cd191fc8a67d80d1c2d12c9d82a5eb1e` |
| 4 | `theorem` | [sourceAffineLocally_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/sourceaffinelocally-respectsiso.md) | 111 | `result-track:d37ef5d29da865440293c57fb783cf1fa2631873f1feaa93dda39d2c7b196f36` |
| 5 | `theorem` | [affineLocally_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/affinelocally-respectsiso.md) | 125 | `result-track:efd371d52d4aa98f76f3be7dfb7f3881362712c9e95b2ea44e22432cbf165192` |
| 6 | `theorem` | [sourceAffineLocally_morphismRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/sourceaffinelocally-morphismrestrict.md) | 130 | `result-track:1a1de3df1541122dd420432d46df41334f7291268f45dbefbcc0b417b28c58b5` |
| 7 | `theorem` | [affineLocally_iff_affineOpens_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/affinelocally-iff-affineopens-le.md) | 141 | `result-track:950a5df4388f5b2c1963bc7ef6e81ef36eae4ab507da86118ab70b6887551ff8` |
| 8 | `theorem` | [sourceAffineLocally_isLocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/sourceaffinelocally-islocal.md) | 146 | `result-track:16a6adfc41d7e91375c20e995410cd014eaea276ff47c4227c787dc41a5b8d0c` |
| 9 | `lemma` | [affineLocally_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/affinelocally-le.md) | 175 | `result-track:3633788a6c2b918e92d52cf575667a9647d053343a4c2288e560d327ee8c0429` |
| 10 | `lemma` | [exists_basicOpen_le_appLE_of_appLE_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/exists-basicopen-le-apple-of-apple-of-isaffine.md) | 187 | `result-track:cd72eac392692227dea4c9dfede699cbeb13188c69b8bca4fac6397c23f63e1a` |
| 11 | `lemma` | [exists_affineOpens_le_appLE_of_appLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/exists-affineopens-le-apple-of-apple.md) | 223 | `result-track:933a678c315b2cfaa63d277f70f6ce4b886e3588b26821233f7e83abb9019f28` |
| 12 | `class` | [HasRingHomProperty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/hasringhomproperty.md) | 248 | `declaration-track:c468bf98d2a7206346956ba7cfe7e7fba5cab52dd8ecbd3b9636da4f9317b2be` |
| 13 | `lemma` | [copy](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/copy.md) | 258 | `result-track:ed21261b7ac3c6039995e7df5cb59724349938bd087c3180c4a4e604d86e8625` |
| 14 | `lemma` | [eq_affineLocally](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/eq-affinelocally.md) | 269 | `result-track:901e56eeffb0e679690ba373886132fecd58bd3fa139a846d88a768fac813939` |
| 15 | `lemma` | [HasAffineProperty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/hasaffineproperty.md) | 272 | `result-track:8f21790e5d58dfb1e8b40504d311d375065b614c09a2691a0e6b4fd9f277bbca` |
| 16 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/instance-source-edition-2.md) | 280 | `declaration-track:a4a58f06bcb205d8c299bd48f3e05a74c29c22eaa18c911b01a3cb37c74a7580` |
| 17 | `theorem` | [appLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/apple.md) | 282 | `result-track:8d377f53d4400fb5cadc511247aafbd335388d5d2cca18739a8aa94501196053` |
| 18 | `theorem` | [appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/apptop.md) | 286 | `result-track:7b61edec7d6a7255a6b85595584c121408122155bdbda4a06a9d1dbd2696d1d3` |
| 19 | `theorem` | [comp_of_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/comp-of-isopenimmersion.md) | 293 | `result-track:f4da3e19da673b52e5f917d2805be3bb2ee07aa2db9fe593869169fa86b39350` |
| 20 | `lemma` | [iff_appLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/iff-apple.md) | 308 | `result-track:22202aaa92eba5960e3b49a7734247d83391d4e4e8be68cd067e75ec472dbf72` |
| 21 | `theorem` | [of_source_openCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/of-source-opencover.md) | 311 | `result-track:76fa19629bc5e96b7d176b11e380a999705009d454689d1fabfb749e24f37215` |
| 22 | `theorem` | [iff_of_source_openCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/iff-of-source-opencover.md) | 339 | `result-track:f2c42d63f8b187973e5c7d8e986623c378fe3b7d8a1b000a7fbf08e40c008eec` |
| 23 | `theorem` | [iff_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/iff-of-isaffine.md) | 343 | `result-track:64f9bbddd34fd5388b207a5ad45a20dbba3c10f15a7c7d993df82695519f025d` |
| 24 | `theorem` | [Spec_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/spec-iff.md) | 348 | `result-track:f369eef857b3a505a9aeb43e08a6e56b6917963f2330d465dad18403edd30480` |
| 25 | `theorem` | [of_iSup_eq_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/of-isup-eq-top.md) | 354 | `result-track:0aeb9ab6c268f7876e504391adf6f1d5720a9f02fb4dc08e35e2c8b8a511e7e0` |
| 26 | `theorem` | [iff_of_iSup_eq_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/iff-of-isup-eq-top.md) | 362 | `result-track:2ee6172cae4c7cda3ca77327a54a6389735cf9a2a8f6d5c4f7217bc291c975d5` |
| 27 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/instance.md) | 367 | `declaration-track:657bf09dd7c99a56290a59680a43e7dea56705782919bb66868f13f6cd6f4f08` |
| 28 | `lemma` | [containsIdentities](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/containsidentities.md) | 375 | `result-track:cf452e7a029fd69fcff826b8a02293bbe29d1e8ce3a430f1d51f854afffad57a` |
| 29 | `lemma` | [isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/islocal-ringhomproperty-of-islocalatsource-of-islocalattarget.md) | 385 | `result-track:6b81d90494e96ab9fea23e235ee5a8c28d2b8f7e70a60dc10307d14844ec1e0e` |
| 30 | `lemma` | [of_isLocalAtSource_of_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/of-islocalatsource-of-islocalattarget.md) | 419 | `result-track:94b1ed956cfac824fb347d1dbab0bdff3f68a27ffc0bfdd3bc8dd5e49c69194d` |
| 31 | `lemma` | [stalkwise](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/stalkwise.md) | 443 | `result-track:5e1e2f5f5c18b41d3380294d59806f4ce3db3ce7e32a260a1d01cac8716cc85b` |
| 32 | `lemma` | [stableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/stableundercomposition.md) | 451 | `result-track:5317fb7cab89de9ff6e986836d5aaf81d9e32516770656c972969b3f6c159f96` |
| 33 | `theorem` | [of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/of-comp.md) | 473 | `result-track:2b2f02fb0510fd5675a07a23af97ede873013dfe82b086ce48cd2d0eef3e7097` |
| 34 | `lemma` | [isMultiplicative](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/ismultiplicative.md) | 499 | `result-track:a9115a60d997533481924c00b9cacf0330b0489dd05985676ba7a746205e34d2` |
| 35 | `lemma` | [of_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/of-isopenimmersion.md) | 506 | `result-track:fc787a96d684ecf8a5f63e290690456df13cac202f4816e4c6f635ecf5930714` |
| 36 | `lemma` | [isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/isstableunderbasechange.md) | 510 | `result-track:a454c379af126728fe4d97340cf7dab4a493ccf24db612d7b73136b5babde259` |
| 37 | `lemma` | [respects_isOpenImmersion_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/respects-isopenimmersion-aux.md) | 528 | `result-track:a7332b3c0ccfd15d2a0ec146d732f59455ffd8b9db98a3afb5756bb1e6068c46` |
| 38 | `lemma` | [respects_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/respects-isopenimmersion.md) | 567 | `result-track:5f4f3129891c10a176fffa61c8fb567620e1c83315ca1cff28b7ab9210587bd7` |
| 39 | `lemma` | [iff_exists_appLE_locally](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/iff-exists-apple-locally.md) | 584 | `result-track:930744e47ab8bab238e6111d8e878b4798d9aa51eeecf1ce74e1fedff7b9d70d` |
| 40 | `lemma` | [iff_exists_appLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/iff-exists-apple.md) | 615 | `result-track:37fc74dbcc612c0e0a8c6b2eb8aa16fb267aa0f10882773fff12fde39eec2e91` |
| 41 | `lemma` | [locally_of_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/locally-of-iff.md) | 632 | `result-track:6a02926c0ed9dcc65c511f1b0a3fcbc326fe27e0b4a88be03d5e79dbd1da2beb` |
| 42 | `lemma` | [of_stalkMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/of-stalkmap.md) | 646 | `result-track:2e57b243581cc44e7ce525b71f2ac2be45f09b945a55ff20ef4ddbd88abacea4` |
| 43 | `lemma` | [stalkMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/declarations/stalkmap.md) | 678 | `result-track:de6be4fa578f9e31d73c99adda2d520d45232a23307b0eb73559ad8e3aad3f21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d531f1a8205f5a0d6217a60a778e71ed6051d0edc9923c61d273f5029c752e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
