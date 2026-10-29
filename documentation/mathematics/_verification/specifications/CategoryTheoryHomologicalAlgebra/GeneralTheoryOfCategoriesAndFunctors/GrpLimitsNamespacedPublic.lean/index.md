# Verification target: Grp Limits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8ab78ec5ad6b274ddead82a48b76f6a93cdc62b",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8ab78ec5ad6b274ddead82a48b76f6a93cdc62b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean.json)

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
| 1 | `instance` | [groupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/groupobj.md) | 47 | `declaration-track:e94948cd684b836eadf7e8d318d035d7cd75dc55fe93d871702cebadeb240964` |
| 2 | `def` | [sectionsSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/sectionssubgroup.md) | 53 | `declaration-track:e023fda8b5a0bce94c6237e224468b60be2cfc41461e4f5ca73499cf5e75e9a2` |
| 3 | `instance` | [sectionsGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/sectionsgroup.md) | 62 | `declaration-track:d52547ab3e5b7df164cd7d2413060ed6f0d6f511a85e08b7cdd05dc6ebab3b95` |
| 4 | `def` | [sectionsπMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/sections-monoidhom.md) | 67 | `declaration-track:c47175c075b80e21e880509f50f225b658463660a9250d9ca85ac6c9ad22aeab` |
| 5 | `instance` | [limitGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/limitgroup.md) | 77 | `declaration-track:78c4900fdec98aad359ee7d5c433436c6876e2d0d3dee1ab3e884b28c2d5de7c` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:e6efbffc31a2e9ba1346f094810272172c7b883a64455f2a3f3cf47a57e06b0e` |
| 7 | `instance` | [Forget₂.createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimit-source-edition-2.md) | 93 | `declaration-track:606f0bae982dda8fcf2f650308951682827471e732d61ba25fbeec2b8d4140c1` |
| 8 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/limitcone.md) | 121 | `declaration-track:172ac2a38dbd8befa657fc8f0c0382c8c2685c33f766b7ae2407932e27ec3552` |
| 9 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/limitconeislimit.md) | 128 | `declaration-track:7b803a9d1d5e8f7f7b8b58131510ccd24b7403360170e4c092fc7eaed61fa211` |
| 10 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimit-source-edition-2.md) | 133 | `declaration-track:f4f110cee7ff853c13a8e43bfa16379415411a63fdc21fb94c146813afcac84b` |
| 11 | `lemma` | [hasLimit_iff_small_sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimit-iff-small-sections-source-edition-2.md) | 145 | `result-track:d8ff3554d9ea1734f0e653697b2701a0962d47aba26a24aa0f1f637eb9111887` |
| 12 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimitsofshape.md) | 154 | `declaration-track:7681221fbc0f9b4d6f83ab07da7f753b455ba761d9083b35087c46e0f8b80ab8` |
| 13 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimitsofsize.md) | 159 | `declaration-track:525388cec1bb5a77b783f67762375d9b486d434f83eac09ad700cc73b518af30` |
| 14 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimits.md) | 163 | `declaration-track:a9628001fadfc15415ec7e255b940bb229e4c4821d25fd327ed8e99c8bb89cbc` |
| 15 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-mon-preserveslimitsofsize.md) | 175 | `declaration-track:98ed70aff346a4042df198d9196f952bc86c0b548f0e069d6c621bfa0c6fd12a` |
| 16 | `instance` | [forget₂Mon_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-mon-preserveslimits.md) | 180 | `declaration-track:810ef2f48620da31ea8c4fdcbaf760f722d9641958382e811c142baa7def512f` |
| 17 | `instance` | [forget_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofshape-source-edition-2.md) | 186 | `declaration-track:f8344555439a8dbe255d8471d06561f16c981043b649d8fa8cb2fdf950191505` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofsize-source-edition-2.md) | 198 | `declaration-track:cdd8ccd13c52ecc8739cad3bc5e0ee708d94d73f948f050e2c601b4beba53cdd` |
| 19 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-preserveslimits.md) | 202 | `declaration-track:b048c1314701aca989f25c857eee405aecb6f6b8a5dc96a580ff34d745de683d` |
| 20 | `instance` | [forget_createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimit-source-edition-4.md) | 206 | `declaration-track:ccaf57e1b961db9fffb4c510ee83c49be14902b2b1e628b991b85e47b5c8e6d9` |
| 21 | `instance` | [forget_createsLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimitsofshape-source-edition-2.md) | 212 | `declaration-track:c269ade098ceeaa9ddd9f9fdce5737832b15ee57e4d5aca69f5578ffba10df43` |
| 22 | `instance` | [forget_createsLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimitsofsize.md) | 220 | `declaration-track:1782022d0dd129276a0bcd39f9fa6ac41bfe0948803ca1d824ae4ef87f80d70f` |
| 23 | `instance` | [commGroupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/commgroupobj.md) | 230 | `declaration-track:90d80ee681dddd825ee56f04e5b48395fb27c2ffec1299491709c1f8c6778f33` |
| 24 | `instance` | [limitCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/limitcommgroup.md) | 234 | `declaration-track:471253adc245cefab75418a5d1dca0d672df218cf1eccacbf669af95ab1367ac` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/instance.md) | 243 | `declaration-track:b5cc8cc78390adc4cf413a52c8a2e841fec75b5557896971644a6c720e6dc470` |
| 26 | `instance` | [Forget₂.createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimit.md) | 255 | `declaration-track:338740898c4f5c85b6f0c2dc478596b206519a9ae28af1453a97bc0690517de5` |
| 27 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/limitcone-source-edition-2.md) | 286 | `declaration-track:7667f23dbbf139affe277f77de3743fb7092538cb4093f6784fec401a71d3348` |
| 28 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/limitconeislimit-source-edition-2.md) | 296 | `declaration-track:e48d32fc67efafb572a0598054656aa9d7abcde3713cbf234a2709ff8c0ed59b` |
| 29 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimit.md) | 301 | `declaration-track:d41a61d1e82fac3daa1db6e8b7e987ac938c88835fc9bbdffbd7aeb38bad0ac6` |
| 30 | `lemma` | [hasLimit_iff_small_sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimit-iff-small-sections.md) | 313 | `result-track:0191ec2668869b49e896f8b0996224bba13233e59be968b1f255b116327062bb` |
| 31 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimitsofshape-source-edition-2.md) | 322 | `declaration-track:c35b0000da676815486d542eff9aa9a7733c705e37efc64614ece26142379326` |
| 32 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimitsofsize-source-edition-2.md) | 328 | `declaration-track:dc83b4b125fe57e67ba1674430093833354f34fbec40e0da384c5e4b54ae764c` |
| 33 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/haslimits-source-edition-2.md) | 332 | `declaration-track:b15de199b00b2793e0cc6d6fdb5993ee10d0320b72fe755f1635796ead630f1c` |
| 34 | `instance` | [forget₂Group_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-group-preserveslimit.md) | 336 | `declaration-track:0795bd4ab7d1edbf0d5b7076a3c33537ff5ccfe563030b5441736c447403a2f8` |
| 35 | `instance` | [forget₂Group_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-group-preserveslimitsofshape.md) | 347 | `declaration-track:df5e67ede3151ce63ba7fb29c39f18075afe2a6b9e4cc6cc84225219efadf80e` |
| 36 | `instance` | [forget₂Group_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-group-preserveslimitsofsize.md) | 358 | `declaration-track:7e2f0cb05bdc25ee6cb68529f538c2c443d43bdc2a8f90609a71dc28c271c6ff` |
| 37 | `instance` | [forget₂Group_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-group-preserveslimits.md) | 362 | `declaration-track:b26cb0bdeda9c5268648f97154c63389b8ecd48453a648e836e8074f7ff4f5d5` |
| 38 | `def` | [forget₂CommMon_preservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-commmon-preserveslimitsaux.md) | 369 | `declaration-track:376fefbecdeb4d3b53d220ed5f04627e299a5f545e3f8c641f1548d6bfe0fd20` |
| 39 | `instance` | [forget₂CommMon_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-commmon-preserveslimitsofshape.md) | 381 | `declaration-track:c15ef5b452e4f364ffe277c96519a713c7c23fec80a3aaf4e8a4848ee51b9e79` |
| 40 | `instance` | [forget₂CommMon_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-commmon-preserveslimitsofsize.md) | 394 | `declaration-track:ad565305346c0fb93eacde01398a36f96d15cc8fddb9e2cdbd922516e3a04ea1` |
| 41 | `instance` | [forget_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofshape.md) | 402 | `declaration-track:52cfe059baa84a9519b35dad445a38b9bfd1bc017ff470d05fb25ffefed6563e` |
| 42 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofsize.md) | 414 | `declaration-track:0d4b65db5d67eb1e4eed5d8c3ad156c41294ee7da2025750b6a76e4cf93c0d2f` |
| 43 | `instance` | [Grp Limits Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-sectionssubgr.md) | 417 | `declaration-track:430f0d59a64c02ebd4fc6230cfe0df9621ddb78a9eeb15a31d84cbb0cedb05a7` |
| 44 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-preserveslimits-source-edition-2.md) | 422 | `declaration-track:d7eca554a0e4d6081fafea3ea9b1292aa8188559aa9174a4ecc4c63c76f141b5` |
| 45 | `instance` | [forget_createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimit-source-edition-3.md) | 426 | `declaration-track:c03e69fa5c6f216039daab8e7298609d3b4dc7456f23441ba3a949b6dae77971` |
| 46 | `instance` | [forget_createsLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimitsofshape.md) | 432 | `declaration-track:a8fcae257aacc2121302593a6fa847e11bd31056bc7f835eb5d8aac10d998a54` |
| 47 | `instance` | [forget_createsLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/forget-createslimitsofsize-source-edition-2.md) | 440 | `declaration-track:1cfa354742f899f9cbf83bea2ca2b8e7f233a641f5eb24c9d7f2ba1daadbcc22` |
| 48 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/example.md) | 445 | `declaration-track:382abf2ecf40ab95f51f7a2da67746b514e52d6ba4361ffe8ba41e66d9faf980` |
| 49 | `def` | [kernelIsoKer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/kernelisoker.md) | 454 | `declaration-track:7ee244e9de88b76c5659df4bf4f026074dcda05181ab465c4bfec780742b70dd` |
| 50 | `theorem` | [kernelIsoKer_hom_comp_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/kernelisoker-hom-comp-subtype.md) | 478 | `result-track:05bf29e974000ea3f3caecf6840afab9cfb2518ab43b582a9ad8a8055540e434` |
| 51 | `theorem` | [kernelIsoKer_inv_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/kernelisoker-inv-comp.md) | 482 | `result-track:8340441e597e50737fd1b989a8367d5d71d4387b1bdbdc02e6eee97063f2499a` |
| 52 | `def` | [kernelIsoKerOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespacedPublic.lean/declarations/kernelisokerover.md) | 489 | `declaration-track:6dc86733545a4d6f8f145bd7d21087ec2a720b245b22498253ad5b18a7b07310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94428c3e51ebd8b471e2a1ea182407a9b5e8884b717c4fd9cd9d89e8cc3b5e3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
