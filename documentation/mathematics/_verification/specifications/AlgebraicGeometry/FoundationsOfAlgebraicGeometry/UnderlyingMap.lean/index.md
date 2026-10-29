# Verification target: Underlying Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb886eac347fe9dead8310466655bd99c9814988",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb886eac347fe9dead8310466655bd99c9814988`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocalAtTarget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Constructors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-3.md) | 38 | `declaration-track:2edcbac0d0767f93f08ffe9706e93c6482366b0c94b03366d870e81b07ca93ed` |
| 2 | `instance` | [injective_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/injective-islocalattarget.md) | 41 | `declaration-track:ee084e42bbe4b95b6e4847f45919d2730f5c6d62996980ad7ce776837b160919` |
| 3 | `class` | [Surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/surjective.md) | 55 | `declaration-track:05d1be7b9d8e61d7cb803d9a5ab7d72db48d8591f0efd7957cf3dc75386aaf58` |
| 4 | `lemma` | [surjective_eq_topologically](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/surjective-eq-topologically.md) | 58 | `result-track:e0267c19fafca77c25de9c4e54979f39c2e0704e590c02c266679c23ea857a62` |
| 5 | `lemma` | [Scheme.Hom.surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/scheme-hom-surjective.md) | 61 | `result-track:934df443f78bf026c882fdd94edc44b5d23534ba2fdd63e12f42818ef62bd3d3` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-4.md) | 64 | `declaration-track:40ede29f5180244b6ddab73fb66aafcb80df31a927dc82e173233d1895b9362f` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-15.md) | 66 | `declaration-track:d376b1e18391a24d77449e8e12901436707b1fdf7b7e14361ab4c8f492390086` |
| 8 | `lemma` | [Surjective.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/surjective-of-comp.md) | 68 | `result-track:a2816fac37fbdde8dd92873df43f1942593e93cf15d8a3c82901ec4673d0638c` |
| 9 | `lemma` | [Surjective.comp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/surjective-comp-iff.md) | 71 | `result-track:5eb8f67bc4692cc847cf02f228d857a2fa92284a4a9c6ecc82137837f7fd32dd` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-13.md) | 74 | `declaration-track:b083d63675eccd217e7370b09a1ccfecca2e311393192afa1b7d5f9b90e1d158` |
| 11 | `instance` | [surjective_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/surjective-islocalattarget.md) | 78 | `declaration-track:d5cf0f12b64e2cfcd1e57e0286b1cf2f6c217be340d7c1d4a09ae23a6629c299` |
| 12 | `lemma` | [range_eq_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/range-eq-univ.md) | 88 | `result-track:7280f09cad78f9de648562b29be54db652ade37c5b3bab47d64f94dbfb7c469b` |
| 13 | `lemma` | [range_eq_range_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/range-eq-range-of-surjective.md) | 91 | `result-track:271555ece08b7f8597c57643c368dc579d2a2a2843ed29887ec4320d74b8ba08` |
| 14 | `lemma` | [mem_range_iff_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/mem-range-iff-of-surjective.md) | 96 | `result-track:7df5d1612e95b3d26027d22f82a31791f6a0461df1f01575414341fd1720b1dc` |
| 15 | `lemma` | [Surjective.sigmaDesc_of_union_range_eq_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/surjective-sigmadesc-of-union-range-eq-univ.md) | 100 | `result-track:f593006bc5953cfcbfbd551fc3bb82d72511c72a1856a7a8eac20d41374f6871` |
| 16 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-17.md) | 109 | `declaration-track:ff6c8a8bf80e9ed01eacdca980f6b8c9552df7680e69b14f521bc791c1e76df2` |
| 17 | `instance` | [injective_isStableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/injective-isstableundercomposition.md) | 117 | `declaration-track:35541c45d7fe750d8055d1bed6ef5789adb44bbe05230f40acfc86d8d9f23235` |
| 18 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-10.md) | 125 | `declaration-track:9b3a1d1ebdb56ed9160ff28a75dce827ba2bc741a33d2189171d05ef530bd72b` |
| 19 | `instance` | [isOpenMap_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isopenmap-islocalattarget.md) | 128 | `declaration-track:2baa8a182f6f0b800a1aebb5060362a49e082e76a1216d136f9d3ee6282485a0` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-7.md) | 131 | `declaration-track:5ce4c5ea0ae658c672140a6b53275472eba4f39e9af063e9fb349880cd52b782` |
| 21 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-6.md) | 138 | `declaration-track:51139396fd12cbe29c4739fc20f7b0b61aa79c653648f21c7ea34d7c6ea2cc38` |
| 22 | `instance` | [isClosedMap_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isclosedmap-islocalattarget.md) | 141 | `declaration-track:fdf8a3b636faa2a95dc7eea780d5be90e1b3ea0e100ff8bf6a493d78e3103791` |
| 23 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-12.md) | 148 | `declaration-track:af1dd3ff08b5eb2cb2df4c6033b82d3da274ce7e4e1f88c5d0ad63c87970dd13` |
| 24 | `instance` | [isEmbedding_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isembedding-islocalattarget.md) | 151 | `declaration-track:dd9487569b9251a2caae46d1407d492727edd77ffc18cc33ecd27d24aaa41994` |
| 25 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-2.md) | 158 | `declaration-track:07fb229a68047ab75314165a2de225b74633f8f974220024ccefa03c7bb82a00` |
| 26 | `instance` | [isOpenEmbedding_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isopenembedding-islocalattarget.md) | 161 | `declaration-track:02a9334b4ac0837a257f419ca4567b92a0cb5d5d6c9b81dda5715503fd4c5f10` |
| 27 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-8.md) | 168 | `declaration-track:5dfe94958d3accf00ede5974e7d57ee5c6523c405a019942760ba787960af00d` |
| 28 | `instance` | [isClosedEmbedding_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isclosedembedding-islocalattarget.md) | 171 | `declaration-track:51c382fb6bb276b77f039958a3072fa7bdf37e0b679994d4a50f1e71f2c680b4` |
| 29 | `class` | [IsDominant](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isdominant.md) | 182 | `declaration-track:e20b154dd6b2f65beea0d8c1e72424ca2ecabd5eae6623164732fc175bf9bcfb` |
| 30 | `lemma` | [dominant_eq_topologically](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/dominant-eq-topologically.md) | 185 | `result-track:ff5e1bd17e7de33701c968caa4173ae89dba18fc391de35e905eebb337a354d4` |
| 31 | `lemma` | [Scheme.Hom.denseRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/scheme-hom-denserange.md) | 188 | `result-track:52245ba4297d6e11219bd66e51243a82335a770355d706bf10be9ca26bbc6b57` |
| 32 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-11.md) | 191 | `declaration-track:aca45baeb3e7fea535990d0949d6adb1549d6e0a05ee5669da85701bd195b63f` |
| 33 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-9.md) | 193 | `declaration-track:88fe8a5aa71e97f6caf109a9ff886eb99251924656ac0903dfff9134d4861036` |
| 34 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-5.md) | 196 | `declaration-track:47ef64f5f20d18845f7e21dee5d940fb26723baa3e55cdf39b1775ca2e4ee7cd` |
| 35 | `lemma` | [IsDominant.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isdominant-of-comp.md) | 200 | `result-track:ad80a1bd0e57862f02f7f26707a61885542e4b17785e5306c0224209c61441e3` |
| 36 | `lemma` | [IsDominant.comp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isdominant-comp-iff.md) | 204 | `result-track:eb4f84926582f1f13bd2100a7fe3f19959dffd46f994e3dc1fbee6e633ee2967` |
| 37 | `instance` | [IsDominant.respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isdominant-respectsiso.md) | 207 | `declaration-track:104b39d008c4c5ed42a20efd9a51f3e3d78ae8f729146653c904d2b013b693c0` |
| 38 | `instance` | [IsDominant.isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isdominant-islocalattarget.md) | 210 | `declaration-track:6e2b3e78f3f9b2b69c7e85ba0497dab9ce55fa1e013af568fbe92494518594b0` |
| 39 | `lemma` | [surjective_of_isDominant_of_isClosed_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/surjective-of-isdominant-of-isclosed-range.md) | 216 | `result-track:6d6b63904ef4d28f45c2fab0c81f98a8a79a877477947caeb9b003f7e9fc5838` |
| 40 | `lemma` | [IsDominant.of_comp_of_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/isdominant-of-comp-of-isopenimmersion.md) | 221 | `result-track:49e2ea5fcdadf0c16a41cd054ac0679d472f9c3f677400ceeeddf80201f0ca78` |
| 41 | `instance` | [specializingMap_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/specializingmap-respectsiso.md) | 235 | `declaration-track:b9a0390980721f13501f41587a4644518bcfbc8fc4395076d6363b954e6a792c` |
| 42 | `instance` | [specializingMap_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/specializingmap-islocalattarget.md) | 242 | `declaration-track:0e8c487598705aa1a866ecd339002a145e79047575448c437218dbb32b08e710` |
| 43 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance.md) | 272 | `declaration-track:05dbb2ea3f2b6f4a200e016e91e7f8c9b2ef76ad12825b7d53cfd8380f1e011b` |
| 44 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-14.md) | 276 | `declaration-track:d0528eea78c4583aeb16979947a0f6457b1a36cc3f7cf599a944d2cc6805b149` |
| 45 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UnderlyingMap.lean/declarations/instance-source-edition-16.md) | 279 | `declaration-track:fcbd076c3157ecc02f504baa477a3147e96e739f0d371630615f02e6e0a5b418` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=360a7a433fd8def4b6d6aab3159a3331c50d968054560e2e98f2a4c936e8501b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
