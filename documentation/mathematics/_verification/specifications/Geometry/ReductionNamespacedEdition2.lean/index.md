# Verification target: Reduction Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6cbd340f9df797ff76c1a07356adbf10bb0c056",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ReductionNamespacedEdition2.lean/index.md) · [Full source](../../../../Geometry/ReductionNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6cbd340f9df797ff76c1a07356adbf10bb0c056`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Parallel](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/parallel-source-edition-2.md) | 30 | `declaration-track:7cd87944c5250010b96bd5555aba2ee1dc67ee69ac9dfa775eba7ba25077109d` |
| 2 | `theorem` | [refl](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/refl.md) | 46 | `result-track:8e51d788260b3f3aee7e767ec120bb976ee6df2b2d32af655e4892ac690fd58d` |
| 3 | `theorem` | [of_beta](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/of-beta.md) | 54 | `result-track:dafe2897fb75f1a398f8d13650616e484fbfb1b49b4189011ad5ec1e5a1c1979` |
| 4 | `theorem` | [rename](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/rename.md) | 64 | `result-track:0b8d6b21b3568c130d19ec18282aa50556ba90a760f6a7b7ef70924aa244f0dd` |
| 5 | `theorem` | [subst](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/subst.md) | 76 | `result-track:18891346baccc02eb15cbb42d04aecd711914ce967f6e6ef46c2499a01c725ea` |
| 6 | `theorem` | [instantiate](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/instantiate.md) | 94 | `result-track:7e1c910702a4fce2f6efbd07a7cf4e830cdd1a666578a20690a262dc40ed9096` |
| 7 | `def` | [develop](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/develop.md) | 109 | `declaration-track:d5186abf6932c5c45879f7ab5e9310cac503921c890aa278c8f9e9c995c10a46` |
| 8 | `theorem` | [triangle](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/triangle.md) | 123 | `result-track:b10012fde2b0f98771457ace79c53ca39f22ff3533c59685dfbd13de556c534f` |
| 9 | `theorem` | [diamond](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/diamond.md) | 142 | `result-track:170aad52f12834f9efb24fc85872553206569fd1384e01f9b5dae23148cfb547` |
| 10 | `abbrev` | [Reduces](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/reduces.md) | 148 | `declaration-track:18fcffe436c59c40929b92919f91487028ccdad81b108ea19c9db779682a9495` |
| 11 | `theorem` | [app](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/app.md) | 154 | `result-track:a6e7793fb1d3af3f65f2fcc98718958fa5bbf0218c65f1c9c83b99ff6b2c3608` |
| 12 | `theorem` | [lam](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/lam-source-edition-2.md) | 159 | `result-track:5ae6c34aa695715a0b7663932024368d9ddf0a54e93b616e5ddeee4d13b732b5` |
| 13 | `theorem` | [pi](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/pi.md) | 164 | `result-track:0f550e903128a4ba5a4038d2c628ae8dc01113f7ba1a930ac1e3f408245f262e` |
| 14 | `theorem` | [rename](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/rename-source-edition-2.md) | 169 | `result-track:8dcf51bb848caf48eda4f2ccc23b5a9493d82597ae9e2cb75542891043db240a` |
| 15 | `theorem` | [subst](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/subst-source-edition-2.md) | 172 | `result-track:e765ea0dc9f8ae75d4cba229482e99079d42787ea6a1be4ed7effb95c92d67de` |
| 16 | `theorem` | [reduces](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/reduces-source-edition-3.md) | 181 | `result-track:95d8d3dfd4611e1c873a7aa2964d22d463b635d5f483e72b753a75c8dabb1dfc` |
| 17 | `theorem` | [rtc_reduces](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/rtc-reduces.md) | 191 | `result-track:6955e22cba246fc802f81319a03289f1c0538e23ebb6e69a40b2bb6207c35d21` |
| 18 | `theorem` | [parallel](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/parallel.md) | 200 | `result-track:5d203f78010bbdd43797ead0b44e5d2ec4cfa9c1ac596fee6142ee573675e876` |
| 19 | `theorem` | [confluent](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/confluent.md) | 203 | `result-track:7cf0530b44c410c5ff8c9f747d98814a56cd1b8195f778d583d4853d75870644` |
| 20 | `theorem` | [join](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/join.md) | 219 | `result-track:9bd031dadcf407e06305bed3a9c9cfba69e0f949616909c2226990a0f03e9825` |
| 21 | `theorem` | [reduces_eq](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/reduces-eq.md) | 238 | `result-track:2ff703d5446afd949231987ab792c8dedfab36aee2ad5727e3e00819bc02e565` |
| 22 | `theorem` | [eq_of_converts](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/eq-of-converts.md) | 243 | `result-track:6af083bca4a563ca1f1c33b97ac04338311e9606d3cc30b5c9789ae310cfa4ce` |
| 23 | `theorem` | [pi_inv](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/pi-inv.md) | 253 | `result-track:a5669740a00c92d0e87973cbcfa1d937ac8996cb84c8cac8f23215a8825b7b96` |
| 24 | `theorem` | [converts](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/converts.md) | 263 | `result-track:a73465ee09735e18568863cab329274b48bad172a1dd04e8f35e341e56a62bdc` |
| 25 | `theorem` | [product_compatibility](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/product-compatibility.md) | 272 | `result-track:41f097b0f8274633a413300c11de9c489dffae68b7302dfbc2087fbe473763f6` |
| 26 | `theorem` | [var](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/var.md) | 288 | `result-track:11b63df0edb7c211ca1505862bfc5d3e0e89ebc88eef789bf62109f4325ae624` |
| 27 | `theorem` | [sort](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/sort.md) | 292 | `result-track:1044857de3955029332bb4e59a2218d05f213efe3e0264d8bb1093dca5c57f23` |
| 28 | `theorem` | [stronglyNormalizing](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/stronglynormalizing.md) | 296 | `result-track:3e4c7c7620773b440f74f2920ab3c68127b02043291c56cbc709ccf58244f905` |
| 29 | `theorem` | [step](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/step.md) | 305 | `result-track:32bfccf0faccc896f5528d2bb209e767ef89c2ac92ad80d7815ec8c39656f913` |
| 30 | `theorem` | [reduces](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/reduces-source-edition-2.md) | 308 | `result-track:3ec86410fec21a51e13dcd7f6194365b1279dd7f44708fe6b55aa1a83a656f5d` |
| 31 | `theorem` | [of_map](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/of-map.md) | 314 | `result-track:429e89b45e84fb98b74f7c8ecc6fb39fe27c12c55bd3ca3164862855c06f7428` |
| 32 | `theorem` | [app_left](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/app-left.md) | 327 | `result-track:d672587dcacb56271c28dd6e5079edaa86bbbddd613e1188a88efdeda0fb1b24` |
| 33 | `theorem` | [app_right](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/app-right.md) | 330 | `result-track:c223de1e65b1fbe2d6feaeceb92c4d8011761bf8175ad1035168cd2ac2cb65a7` |
| 34 | `theorem` | [lam_domain](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/lam-domain.md) | 333 | `result-track:38e971dc8222c0dfdff1b83751a829a4952fb9e74fcf17755c450b96e2b75ab6` |
| 35 | `theorem` | [lam_body](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/lam-body.md) | 336 | `result-track:c9e9c8f8bf59912ec76ba29cd94ecc779602fee9f3f711fa2ebd6d8129df902f` |
| 36 | `theorem` | [pi_domain](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/pi-domain.md) | 339 | `result-track:da58ab053ee3fd436c9e636491de7ef91ced0a09e9e3c41c60f9162087bcce9f` |
| 37 | `theorem` | [pi_body](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/pi-body.md) | 342 | `result-track:2dda2bea6ca7ada5e681a2c568ee0ea7bcb33785fadb66bfac62f7d94b9d30dc` |
| 38 | `theorem` | [of_subst](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/of-subst.md) | 345 | `result-track:186022925376359ec5c8a8c163e08de7315f759d6952c1d100d54b7f9a31edd6` |
| 39 | `theorem` | [of_rename](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/of-rename.md) | 348 | `result-track:b7632594b19a24a9e1188b7fcbf4b9871e64080ce3e30a810183dd12b2a4bd89` |
| 40 | `theorem` | [lam](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/lam.md) | 351 | `result-track:3f4d256b1e3c10b830175d128dab5861bb9bc7c5cb6c69886d016ac15cbce078` |
| 41 | `theorem` | [pi](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/pi-source-edition-2.md) | 363 | `result-track:e329241bdba0513ca4ceefee1371718ad390f28b4fc36b81f9803bc12dcce1c7` |
| 42 | `def` | [apps](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-source-edition-3.md) | 382 | `declaration-track:4edb60768084416742b92254ef4421d1f72732791374f8fd203e916686371e5f` |
| 43 | `theorem` | [apps_nil](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-nil.md) | 386 | `result-track:656fa68e35216eb09ff459280593ebc6620213d390c5760dece051736b58993e` |
| 44 | `theorem` | [apps_cons](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-cons.md) | 387 | `result-track:851d9e1ec593652e6b02d2ce9193d0863c0647d1e658f9874156d23a4c0c87d7` |
| 45 | `theorem` | [apps_append](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-append.md) | 390 | `result-track:36135de8297f0e2dd8f016947848bceb16d658c64d2a75006c3c9ae160844d97` |
| 46 | `inductive` | [ArgsStep](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/argsstep.md) | 399 | `declaration-track:43ec989c8adf9470f5013ab1a9e190337174b1ffbc5ecd0fa9a98227e44b9e84` |
| 47 | `def` | [StronglyNormalizingArgs](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/stronglynormalizingargs.md) | 404 | `declaration-track:e2713cf444e483bbcc124021eac4da8b5bcb52ae746a0958ceb9cd503e7f353e` |
| 48 | `theorem` | [apps](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps.md) | 411 | `result-track:2712fd3e039953745221b4149708580e0236afa25a79a9e052ba73b31cbeb4b7` |
| 49 | `theorem` | [apps_inv](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-inv.md) | 418 | `result-track:ef571ffe0d6744e157a22be2fede710d343cc174c7be043e9d3708bab3fa69a7` |
| 50 | `theorem` | [apps](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-source-edition-4.md) | 439 | `result-track:df5baa773ce2e3758a4353696700bb8be27bdeaf7500c8925299bf60187c140d` |
| 51 | `theorem` | [apps](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-source-edition-2.md) | 450 | `result-track:348b8e0c4ef88f2523a7d65ea4f88676df8a20e061ca5eba9d8413bd9298f80e` |
| 52 | `theorem` | [nil](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/nil.md) | 459 | `result-track:50979cc906179ba7f3c35d06dcd00218bd92fdf1078da2247a392b91f74f707d` |
| 53 | `theorem` | [cons](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/cons.md) | 464 | `result-track:d05a5e25cd99e3a61e2af84898cf27595da4efbdaa4b3edcf1ef83785f82fee3` |
| 54 | `theorem` | [of_forall](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/of-forall.md) | 476 | `result-track:471ede3d9d0f67549f4b7c806aec24ee5259e4b2357e3728f0c3ed6745bca371` |
| 55 | `theorem` | [head](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/head.md) | 483 | `result-track:0999b1ee10b41408c9e27e7276e387c46c7555a61af850c1fd7f5a20534be06d` |
| 56 | `theorem` | [tail](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/tail.md) | 488 | `result-track:a5578389fbfcfed47d6e7a3e94d91e34ed000c76338453f515447e4ceabcb8dc` |
| 57 | `theorem` | [of_mem](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/of-mem.md) | 493 | `result-track:1fa2cbc351bf3a210d1b797273a6f6cc0466563612c4f89aa28d6cf4811b587a` |
| 58 | `theorem` | [apps_head](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/apps-head.md) | 508 | `result-track:c0f318907d992c167917785d45aa4af9804e5337715a8cd22f36fbff14fa2b67` |
| 59 | `theorem` | [var_apps](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/var-apps.md) | 512 | `result-track:5b3221f40c6a010909d3fc423889f41c6c9fe667af4561bf7967fd19562d2b2c` |
| 60 | `theorem` | [head_expansion](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/head-expansion.md) | 526 | `result-track:5b43c33065b26078eb224220aa566b0e0fb3256b12dddf4d2069fe3f8723a85f` |
| 61 | `inductive` | [Child](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/child.md) | 564 | `declaration-track:848ccda82138ab7de90cd9813e25e0d7794ed9d0e2ba0118ad671432770d4027` |
| 62 | `inductive` | [Subterm](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/subterm.md) | 573 | `declaration-track:5277a6010e10b473fd2d585adabf1cc9bc5146e046bb1abf949db8e16c1f784e` |
| 63 | `theorem` | [beta_lift](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/beta-lift-source-edition-2.md) | 579 | `result-track:e095fa3dcd8b7775c50ef0c9adf3e04c41675b0d4d2a34e7981409f88bd3a466` |
| 64 | `theorem` | [sn](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/sn.md) | 589 | `result-track:1e36d7c75862061a7238be83b6f4ca27ae9827feee88aacc8eb49fa028e748b1` |
| 65 | `theorem` | [trans](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/trans.md) | 601 | `result-track:40de1ac881ae2ddbe2cf288ecfade7ff6d790468a1f47e219f7cc4f8e530b1e0` |
| 66 | `theorem` | [of_child](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/of-child.md) | 606 | `result-track:aff60124672aff8d704b2d6822edff4a649a0f557f698c3edc1b66039300a4af` |
| 67 | `theorem` | [beta_lift](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/beta-lift.md) | 608 | `result-track:dd1cae6387c3c1894b2695ef21935e9ece1219929ef1b87e532da90ee7454d22` |
| 68 | `theorem` | [sn](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/sn-source-edition-2.md) | 617 | `result-track:d019ad0685b4cf38ddaaf1445d4a27744ac262b6e61369f1d145e178021e43b8` |
| 69 | `theorem` | [induction_subterms](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/induction-subterms.md) | 628 | `result-track:bd72c8d9256d0f71de6340b81ea5d33c764e5891694ae596c8348c2581814ccc` |
| 70 | `theorem` | [induction_descendants](../../../../Geometry/ReductionNamespacedEdition2.lean/declarations/induction-descendants.md) | 671 | `result-track:855002c26bf28ec4b516a88ade2932ebdc55dc1767397fd88371b521731b248e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9a7e32f9f327dc7bcb9216afed9fb30f49472d807fd026dae23dd27e26c448f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
