# Verification target: Affine Space Basis Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55d351642c3e9abf8f02247a0cae1fdb777ff90b",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantfbc556d461db8148f7b258dfc35dadd77d8353512f1c7cb9ea1a808797469a85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55d351642c3e9abf8f02247a0cae1fdb777ff90b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantfbc556d461db8148f7b258dfc35dadd77d8353512f1c7cb9ea1a808797469a85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantfbc556d461db8148f7b258dfc35dadd77d8353512f1c7cb9ea1a808797469a85.lean.json)

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
| 1 | `def` | [fintypeAffineCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/fintypeaffinecoords.md) | 60 | `declaration-track:af2ffa6dc3a60e5144a82cf8a71b704f725337bb8321e2c788d4dd9210dd1668` |
| 2 | `lemma` | [mem_fintypeAffineCoords_iff_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/mem-fintypeaffinecoords-iff-sum.md) | 63 | `result-track:8d1f8734ecddf712a09778b6a44e00d6af958466d7e46e0faac01b4e05209e60` |
| 3 | `lemma` | [AffineIndependent.injOn_affineCombination_fintypeAffineCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/affineindependent-injon-affinecombination-fintypeaffinecoords.md) | 67 | `result-track:ac6712995e554fab230c834b127f4447254939f20d9b647456cc38761c2e07ec` |
| 4 | `def` | [finsuppAffineCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/finsuppaffinecoords.md) | 75 | `declaration-track:da1981c5678f34bd3c3a9bcaca9c7efc498d7a5fa837729b3581c43b92ee4fba` |
| 5 | `lemma` | [mem_finsuppAffineCoords_iff_linearCombination](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/mem-finsuppaffinecoords-iff-linearcombination.md) | 78 | `result-track:ae2f3c8a121946b661684b9162411ed89f0c1749ac608433896e7510d7c51aff` |
| 6 | `structure` | [AffineBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/affinebasis.md) | 87 | `declaration-track:4f5e702d2bb0c88c699ca92f9ff0746438483824d2ec6aa9b96de1e05748d3c9` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instance-source-edition-3.md) | 105 | `declaration-track:44485d11807df2071be131be6901220caa266e33fab906ab77561185b5e1870d` |
| 8 | `instance` | [instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instfunlike.md) | 109 | `declaration-track:80f7c7e4336b26402c63e0852b0e312fe75492b9dfa6a405e25a1aa77ce3e20e` |
| 9 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/ext.md) | 114 | `result-track:e3014938314cd9a3e9e089b84eb0a31a93246a55eea619ddf8d45b2680d4e13e` |
| 10 | `theorem` | [ind](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/ind.md) | 117 | `result-track:a82808aed3ee2e28d422060eb62346690553e56f0a7775bb12ba79fd0efb0fb7` |
| 11 | `theorem` | [tot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/tot.md) | 120 | `result-track:4fcff58bdb6498815a8d413d560d504a2e523d5d4375be411179136b9c0cb62a` |
| 12 | `theorem` | [nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/nonempty.md) | 124 | `result-track:670bae296efeba6e54c1f91d25b3a63d07405e8193094384e22449b7ce3288e4` |
| 13 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/reindex.md) | 129 | `declaration-track:b729d70a3c36d0fc5416156030c158d6cf9604196ef426604708d1202d3db48e` |
| 14 | `theorem` | [coe_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coe-reindex.md) | 135 | `result-track:18304e50be0ce01758b0d05b0f20bcbaafeed429d328565f7be3f91324cb14e1` |
| 15 | `theorem` | [reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/reindex-apply.md) | 139 | `result-track:2aaa0410d2412fbd5d83d7932032d042efbd1530cbb79f23b3486938469f8011` |
| 16 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/reindex-refl.md) | 143 | `result-track:fb4c4eaaea1c47bdbc7d545fa4285de6a10e16f652f603898bba088fe5d01620` |
| 17 | `def` | [basisOf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/basisof.md) | 151 | `declaration-track:ccbe142d299aa8cc51995627c64863e42ce63a0a14efcf14a719c93876f934d6` |
| 18 | `theorem` | [basisOf_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/basisof-apply.md) | 164 | `result-track:56218907c2c0112dc1bea5847a283c4687ca01b8bde94e1008c1019f52322167` |
| 19 | `theorem` | [basisOf_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/basisof-reindex.md) | 168 | `result-track:5cfa092a388a18e137cad385a098fa4680440ce4aa8f7da9ff9ce481e04e3c4e` |
| 20 | `def` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord.md) | 175 | `declaration-track:8d6290f660a9e9e8842ef94d72bab3e77a1a08416634e4396f5cac30caac7146` |
| 21 | `theorem` | [linear_eq_sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/linear-eq-sumcoords.md) | 183 | `result-track:b8e47d17da1dc6df78995823f2ae156a55061589dd9fba50fc695def0f2537e3` |
| 22 | `theorem` | [coord_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-reindex.md) | 187 | `result-track:d6908972f9e328571a56fdb0f5b2cd58fb8873ccc187696246440cf70f3984c3` |
| 23 | `theorem` | [coord_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-apply-eq.md) | 192 | `result-track:3cc32974cbb32710361f84c757d864f9a0d47adfb9faa13c3f434c713b14c083` |
| 24 | `theorem` | [coord_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-apply-ne.md) | 197 | `result-track:291b7d0e8d8dff34e3daeabce4ffe54ebe9d8c5ce989d694fdb98a0d094b32a2` |
| 25 | `theorem` | [coord_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-apply.md) | 201 | `result-track:e8446394f6ba167b6a377374c5eb5d22924febcc564fee17d81e55a78570331c` |
| 26 | `theorem` | [coord_apply_combination_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-apply-combination-of-mem.md) | 205 | `result-track:1ab10f4987473ba1a7d207540c6f6a860fcc6360cf9349bf564ffad024c7ee3b` |
| 27 | `theorem` | [coord_apply_combination_of_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-apply-combination-of-notmem.md) | 212 | `result-track:17e2bf09b9c30c0c7068fd3686918d561a0998a83db9beeca509cb755f8e824c` |
| 28 | `theorem` | [sum_coord_apply_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/sum-coord-apply-eq-one.md) | 219 | `result-track:cde8896efde6bf09ee50d9299f867c01ffb208d8af072319129626c695731781` |
| 29 | `theorem` | [affineCombination_coord_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/affinecombination-coord-eq-self.md) | 228 | `result-track:3a5d97c98db41d63c3608e109c3603e365728525578a5747bc9e7ef755629ab3` |
| 30 | `theorem` | [linear_combination_coord_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/linear-combination-coord-eq-self.md) | 241 | `result-track:797c86363d2ca5ce395e729ecf2b299abb092668ba0adfd322d765a9964e1632` |
| 31 | `theorem` | [ext_elem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/ext-elem.md) | 246 | `result-track:8e17b95ce0fbe060f4c26a2cf66b2b789586b80d169420c41cff5df0485f0f30` |
| 32 | `theorem` | [coe_coord_of_subsingleton_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coe-coord-of-subsingleton-eq-one.md) | 252 | `result-track:be791529261a681525b437943418b66b6e55a39c2c52b006722db02aea4cd2ee` |
| 33 | `theorem` | [surjective_coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/surjective-coord.md) | 266 | `result-track:a05fd6a3cb1dc0db9a15388c4aadc021e7f0f9dad13cd6f98df14edef37ff703` |
| 34 | `def` | [coords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coords.md) | 279 | `declaration-track:b0e6152644cb0148911223b397e9c213951423addb794af166ad366e667c3546` |
| 35 | `theorem` | [coords_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coords-apply.md) | 288 | `result-track:8406f956248663c4adfe93c82d9c34d98749283ae56ec170d5ede47b6b93c71e` |
| 36 | `instance` | [instVAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instvadd.md) | 291 | `declaration-track:80ac531ba9d636ec022f5314ced68d181a44287c91377175903d9911fe459715` |
| 37 | `lemma` | [coe_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coe-vadd.md) | 298 | `result-track:78c6fe1d24bf755ee200a0732b437649c9a2b0e241434eda22fcae9bc6ea7c2e` |
| 38 | `lemma` | [basisOf_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/basisof-vadd.md) | 300 | `result-track:1b58aa72ef806b44243053900bb57f43ec117c4ff0731eccb306482e67370e53` |
| 39 | `instance` | [instAddAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instaddaction.md) | 304 | `declaration-track:c8ad78ea820a93eb5481585e3fd2565e8a8dfff00ab57a8c196ba8c577721ef2` |
| 40 | `lemma` | [coord_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-vadd.md) | 307 | `result-track:1a7d7f833dd7dd715b89b59b3f07e1d619e81ca3eda548be311bb7e726cb99e9` |
| 41 | `instance` | [instSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instsmul.md) | 325 | `declaration-track:54cc333948f8580cf98d7a2287eeb9c5ce27f0747d9b836f5062a5c469fafffb` |
| 42 | `lemma` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coe-smul.md) | 333 | `result-track:aeb26600d0ce80b8227278ae378a624d94854d1160b46aabb2203ed62864ab34` |
| 43 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instance.md) | 337 | `declaration-track:37e0dfc3ab33b56de1980942f99358b8c008aae851074a7460b8038cc2542379` |
| 44 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instance-source-edition-2.md) | 342 | `declaration-track:3fac452f2123f1755774bc988cce18ef14da1f00731297e78dc325052eec0f3f` |
| 45 | `lemma` | [basisOf_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/basisof-smul.md) | 345 | `result-track:62119df5031319a213212546bcc9c4d47332fc562e126707c4e78e1c6584bd12` |
| 46 | `lemma` | [reindex_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/reindex-smul.md) | 348 | `result-track:d0b188051d7f7a98c78d2d87f3de32895eb13daeeff193f9106ae29ff7d31eb8` |
| 47 | `lemma` | [coord_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-smul.md) | 352 | `result-track:b6c2a6adb3a013df157849b40319e176c2324ae41d584de4ab22c3ddaccd4264` |
| 48 | `instance` | [instMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/instmulaction.md) | 358 | `declaration-track:e8fac06d24b661abf0096dfc7348b094a86445ee3268ee7571147e42d5769991` |
| 49 | `theorem` | [coord_apply_centroid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/coord-apply-centroid.md) | 369 | `result-track:1908eee2b392dc42f723918ec7f02b20f3962152b237b3bf5a4430eea2043242` |
| 50 | `theorem` | [exists_affine_subbasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/exists-affine-subbasis.md) | 375 | `result-track:2c318d37fac707076e45892572e72bc6e53bcf45488d5da59fb7d1d05d54ab9c` |
| 51 | `theorem` | [exists_affineBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/declarations/exists-affinebasis.md) | 383 | `result-track:991fd0dbdc4269238be55345f4cc9f8539c52a5ff14f74a5d46986ab67ba9ecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9c23e0f0e7b3e08302802262a1791f6ae92a22f21488b58aa63f909bc640aaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantfbc556d461db8148f7b258dfc35dadd77d8353512f1c7cb9ea1a808797469a85.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variantfbc556d461db8148f7b258dfc35dadd77d8353512f1c7cb9ea1a808797469a85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
