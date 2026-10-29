# Verification target: Preserves Sheafification Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0283d1cb01872acb30d15281a2530fa893d9ed7b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0283d1cb01872acb30d15281a2530fa893d9ed7b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean.json)

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
| 1 | `class` | [PreservesSheafification](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/preservessheafification.md) | 69 | `declaration-track:0b70516ddcb0c2659f850c5b50b47a2a8ba7638ed93e9ffd6942c4a242e51cbe` |
| 2 | `lemma` | [W_of_preservesSheafification](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/w-of-preservessheafification.md) | 74 | `result-track:4562e8a9331f96df8795b78e8d43574ae5ea710f45312ae6807591c528d265e4` |
| 3 | `lemma` | [W_isInvertedBy_whiskeringRight_presheafToSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/w-isinvertedby-whiskeringright-presheaftosheaf.md) | 82 | `result-track:54add6acb4fa9e26d28d100f32183b2af2309f21d0a382205840fe4b8c958cc2` |
| 4 | `abbrev` | [Sheaf.composeAndSheafify](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheaf-composeandsheafify.md) | 97 | `declaration-track:3ca04438de74dce2f77dc85f09ecb903f5247b1fedb9814ead635eba0bea8206` |
| 5 | `def` | [toPresheafToSheafCompComposeAndSheafify](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/topresheaftosheafcompcomposeandsheafify.md) | 106 | `declaration-track:174554984aba5b1bc2688d926dbf95e0a19f037444dafa66cbff3ac2893482c9` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 115 | `declaration-track:d3a691a0821cd7061731d13698b1d6cdcc080563c3e8900b792260ebd31c959b` |
| 7 | `def` | [presheafToSheafCompComposeAndSheafifyIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/presheaftosheafcompcomposeandsheafifyiso.md) | 125 | `declaration-track:c94d59a03a98b93570d02b71a9ecc1e6964d29dc0094e35cddc401131208dcee` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 130 | `declaration-track:b6e9baad6761a52fb5b97f9a59773ef6547840a45dda10560d09d6412ca312e1` |
| 9 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions.md) | 142 | `result-track:ddf1940fc5bfd38ae9d671ab0edd8d1845a77873f9e60ca2394aa8f2cb35a63d` |
| 10 | `def` | [sheafComposeNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheafcomposenattrans.md) | 172 | `declaration-track:a12fd61722fe1eedc1f056b3849d5f150c37d489e1c2a96ab7bac12e98112479` |
| 11 | `lemma` | [sheafComposeNatTrans_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheafcomposenattrans-fac.md) | 186 | `result-track:2e118b53a46c8601c7f15f779fde4f9b94a478b80bca5cde424b644b9ed1787d` |
| 12 | `lemma` | [sheafComposeNatTrans_app_uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheafcomposenattrans-app-uniq.md) | 193 | `result-track:d556a5aebfd525788c4304ea24d1f68fe7fb3156d4043070f3ba9b7299711e18` |
| 13 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions_of_hasSheafCompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions-of-hassh.md) | 205 | `result-track:f4c594658ba416d11a85fe6b9a547594985d4fbeb6ab036ceafb41cd68330499` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/instance.md) | 217 | `declaration-track:487c8b7c05f538c27ac3fcb13da6357eb7c1317cbb4485f491022eb1f7ca7027` |
| 15 | `def` | [sheafComposeNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheafcomposenatiso.md) | 225 | `declaration-track:faa12ca48b355f60e07270bc2db4bbc363eb87820fdab28fcbef9c4dc6cb2012` |
| 16 | `def` | [sheafifyComposeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheafifycomposeiso.md) | 240 | `declaration-track:15f8de3963536dbc24064c988b217510d3b4cf8abd021846ba83f8cde09a32dd` |
| 17 | `lemma` | [sheafComposeIso_hom_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheafcomposeiso-hom-fac.md) | 246 | `result-track:946faff9c65ee20c1aa283fdc3f601a20eab87dfebb1ea02876b8d333fb9720c` |
| 18 | `lemma` | [sheafComposeIso_inv_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheafcomposeiso-inv-fac.md) | 252 | `result-track:896f84a1d4f45c10cfc78eaffe8723484451724815c5debc4bc5e64c58c5865e` |
| 19 | `lemma` | [sheafToPresheaf_map_sheafComposeNatTrans_eq_sheafifyCompIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/sheaftopresheaf-map-sheafcomposenattrans-eq-sheafifycompiso-inv.md) | 282 | `result-track:73bf67fd44619f239c0f96ecc6a615c55876f593a99878bb3803a2cc90efc607` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 296 | `declaration-track:529e5d206ee7ba083c97908618963482441082601b689fd14419e261701eec03` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 302 | `declaration-track:50d6d1442e53674964eac1ac1aab5c7f63f7912d3af04cd20f916c678ee69dfb` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 305 | `declaration-track:985909ffcbf7fdd2df47911ab724023f5b50a2f9a388bda5fb633d6cc3c6d9e2` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesSheafificationNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 312 | `declaration-track:584b4e05cd299531cda842425983d826fee7dc85f3d4ef0c68f1f18ee816f215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee373373c26c5a238ca09cc2ccb20dbe0b24d59b0c20a33c37f9ee2ea6e1fdd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
