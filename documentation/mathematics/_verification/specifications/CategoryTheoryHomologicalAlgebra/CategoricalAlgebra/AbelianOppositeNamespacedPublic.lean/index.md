# Verification target: Abelian Opposite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7a1184f23ec151050967cc3459efdfb5d5d2486",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7a1184f23ec151050967cc3459efdfb5d5d2486`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/instance.md) | 35 | `declaration-track:fc2f2b1ef7e3f1d94a1f70be49d4fb3ab104fd2c8ac8fbf4c50843e8f6aa787c` |
| 2 | `def` | [kernelOpUnop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/kernelopunop.md) | 48 | `declaration-track:9c16082cddbb62a7effbf7342e379218ccfef60c212fb52cacf55512d777e8ea` |
| 3 | `def` | [cokernelOpUnop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/cokernelopunop.md) | 67 | `declaration-track:43bb7d1f4527d549352fad3ca5186e2aeeb793b130599e628c5c916832e97d62` |
| 4 | `def` | [kernelUnopOp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/kernelunopop.md) | 84 | `declaration-track:c61a887d8ab663ebe5704ef14ed683efc49848355f3613c68cfe6df19ce07527` |
| 5 | `def` | [cokernelUnopOp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/cokernelunopop.md) | 89 | `declaration-track:744747dabc6e59f4914d950bf0505162167d197fbb44dd52f1328bf35def29d8` |
| 6 | `theorem` | [cokernel.π_op](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/cokernel-op.md) | 92 | `result-track:0b0c433188c09abf41f696771036cf7a10487e01d3123f84d906f3fdc797a20c` |
| 7 | `theorem` | [kernel.ι_op](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/kernel-op.md) | 97 | `result-track:9b27fd298c341e4a95f39578767d7604056caa5810c52ead43035adc8d538284` |
| 8 | `def` | [kernelOpOp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/kernelopop.md) | 103 | `declaration-track:c70b5d456b133cdee3ebe9a55287343c6df1f00b7a89880ac1714405b80ea802` |
| 9 | `def` | [cokernelOpOp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/cokernelopop.md) | 108 | `declaration-track:ab6f09cee0287fcf17dce59b3a44948bf865583a5a632e211d1a0619759d1a65` |
| 10 | `def` | [kernelUnopUnop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/kernelunopunop.md) | 113 | `declaration-track:503f93f9a78f8a2c0a70c8969a185b470bf5986d581cf59d2fc616fe433d5803` |
| 11 | `theorem` | [kernel.ι_unop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/kernel-unop.md) | 116 | `result-track:4f6847e4b779cb7864c77674ce5e8ab491f4285aeb8baf1ad4378dd0165a2a7c` |
| 12 | `theorem` | [cokernel.π_unop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/cokernel-unop.md) | 120 | `result-track:35dcc3b82eca1a34067242bbda2efe9c6a96047ebe5fe6299231a4ed97fd089d` |
| 13 | `def` | [cokernelUnopUnop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/cokernelunopunop.md) | 127 | `declaration-track:b62afd5989889d5610e625c77222e19e03f8e1fe72505e91a0f5d8e8d78417bb` |
| 14 | `def` | [imageUnopOp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/imageunopop.md) | 131 | `declaration-track:0c7f495a0026ccf35d91e5b83610b9745c413cfc96cbf343fe0f645b64bc5267` |
| 15 | `def` | [imageOpOp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/imageopop.md) | 138 | `declaration-track:43e52c918f88f6cac7b351d2d6cfc4ca0e64c58f97c8fa464fbaaac9bb32c54e` |
| 16 | `def` | [imageOpUnop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/imageopunop.md) | 142 | `declaration-track:4e9882df2206e98c2a30a5cffbef4ed4680f1a716ba1a9d9646daadc1c7d3e30` |
| 17 | `def` | [imageUnopUnop](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/imageunopunop.md) | 146 | `declaration-track:9ca9795a6b3e2ba2037499202618cc99294f736b0954621d4008c82b5042a2dd` |
| 18 | `theorem` | [image_ι_op_comp_imageUnopOp_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/image-op-comp-imageunopop-hom.md) | 149 | `result-track:4c4a76e7a32d6dcefa10d98070ab55691741469c411909a787b689d353a918ef` |
| 19 | `theorem` | [imageUnopOp_hom_comp_image_ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/imageunopop-hom-comp-image.md) | 159 | `result-track:327b60d30a8507b48989e42db64d8f70a6886d94becd68164e56b4000c00de4c` |
| 20 | `theorem` | [factorThruImage_comp_imageUnopOp_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/factorthruimage-comp-imageunopop-inv.md) | 164 | `result-track:ae70068ba1f02b1a30673b02288dfbe9ac25ea2c7d6cc049e6b45c3675d4a105` |
| 21 | `theorem` | [imageUnopOp_inv_comp_op_factorThruImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianOppositeNamespacedPublic.lean/declarations/imageunopop-inv-comp-op-factorthruimage.md) | 168 | `result-track:11afb283c0547d07dfd070652b33ebaec6002ca3408b43c694afaa57beb96b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3413e330493d685c4791ef8cec6f94ccc2351c27741af7ff591c0a3e5a2302d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
