# Verification target: Finite Presentation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae31d2f88080cb67c0b331e2525441c1752172b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae31d2f88080cb67c0b331e2525441c1752172b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean.json)

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
| 1 | `class` | [Module.FinitePresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation.md) | 67 | `declaration-track:e9e4ec80c4460049baaa79d69a269d497472f0acedc3e62f2cb74304c9d26e92` |
| 2 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance-source-edition-8.md) | 71 | `declaration-track:e4b2fc7b82063ad996c0bad6409bdf42d5a134b61fcbf1ad5f3b5ca26b69641e` |
| 3 | `theorem` | [Module.FinitePresentation.exists_fin](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-exists-fin-source-edition-2.md) | 84 | `result-track:cf5259cc8ac01c9c26040f2dd269bab5cf2b386751e29dda04c1c8ff52277fa9` |
| 4 | `theorem` | [Module.FinitePresentation.exists_fin'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-exists-fin.md) | 95 | `result-track:5e1093932f86c57a4bf6b72e7a31668f8f27715329a3f7c362c49e50f5989545` |
| 5 | `theorem` | [Module.FinitePresentation.equiv_quotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-equiv-quotient.md) | 105 | `result-track:9d14d2f6b136d4b01b3725924cb32f231a0ea0d56a8d5280f280eed8d8abc5f2` |
| 6 | `lemma` | [Module.finitePresentation_of_finite](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-finite.md) | 118 | `result-track:7f4504146add117516e317b783c7dfd22ca3d61a258aec8e6e645d582cdfd0a7` |
| 7 | `lemma` | [Module.finitePresentation_iff_finite](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-iff-finite.md) | 123 | `result-track:734bd2d8d13f3eecdc5c3e6105c4e1192bf375e20589fb39af34f61fd6c817f5` |
| 8 | `lemma` | [Module.finitePresentation_of_free_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-free-of-surjective.md) | 129 | `result-track:ef4dccf138b1e594f74f146ca3e7a4fc06e01e41684a2a8ea1ef98059cb2732f` |
| 9 | `lemma` | [Module.finitePresentation_of_projective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-projective.md) | 161 | `result-track:77faa4e96cc2bdf60504a6abc977e537973fd77a9f6fda3182470b3486694844` |
| 10 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance.md) | 169 | `declaration-track:1d5de118484b699002a2e4f39c36f8f273dc788faf44c609a6e41051cd828b6d` |
| 11 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance-source-edition-6.md) | 170 | `declaration-track:94d60a03678f4d1b8796c0330203bb57a05263c4b0f2803c7debbcb9a17b162a` |
| 12 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance-source-edition-7.md) | 171 | `declaration-track:d44595f0b9b1a443466f91315dbac15a414d070f71f33550ddaa8a9ab6b6ed55` |
| 13 | `lemma` | [Module.finitePresentation_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-surjective.md) | 173 | `result-track:3239274983ba293fa96762d05dc1be9d254499c3beca5b58a747cc04ee4dbf8d` |
| 14 | `lemma` | [Module.FinitePresentation.fg_ker](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-fg-ker.md) | 191 | `result-track:2ce3d65ae1db7615ffec61e575c4d6e8235e4e25dce41dacb51a69a0b4e3c705` |
| 15 | `lemma` | [Module.FinitePresentation.fg_ker_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-fg-ker-iff.md) | 214 | `result-track:ae1ce991eb573ed3edb958580bf0c6ac52c78ced453e2cce20bd38586168b3ea` |
| 16 | `lemma` | [Module.finitePresentation_of_ker](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-ker.md) | 219 | `result-track:8175b3ee5a27ca0a1c6c2ff3c8c2d2ec55722734b4c5b440595b2f38cb479503` |
| 17 | `lemma` | [Module.finitePresentation_of_split_exact](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-split-exact.md) | 251 | `result-track:de59b7a33b3f8654f9b201fbfe5d173506eb8496f3113f473d0b04287fd49dd7` |
| 18 | `lemma` | [Module.finitePresentation_of_projective_of_exact](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-projective-of-exact.md) | 269 | `result-track:e3f72d36b51f4d158a699c10b199dc3b763f4c5310dfa5f0b412468f4e74c819` |
| 19 | `lemma` | [Module.FinitePresentation.of_equiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-of-equiv.md) | 278 | `result-track:9c1a58a62f589dcf6cdbb2c3c99283e72e4fc4abebbba8bfdbc0cb65ae5e33d1` |
| 20 | `lemma` | [LinearEquiv.finitePresentation_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/linearequiv-finitepresentation-iff.md) | 282 | `result-track:3203c56444941f675bdc0ba2343d7f35050ee8871c8193836dcb63293d4887c8` |
| 21 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance-source-edition-2.md) | 289 | `declaration-track:344be6011ee49a0d62eeaeecf3f4f658de76648ab4ce69b63300c0e90f0e4ce7` |
| 22 | `instance` | [prod](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/prod.md) | 294 | `declaration-track:208c5e303525a6744826d1fc35ffe7cfe4c884b2e3a27392b8b0deb42ab54853` |
| 23 | `instance` | [pi](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/pi.md) | 302 | `declaration-track:269d89f29e19ad3c144b440318cd050044d338108cf2cb1a51a79b1d99c61db5` |
| 24 | `lemma` | [Module.FinitePresentation.trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-trans.md) | 323 | `result-track:49c18aeb403268f3c90df6b38a0f5c1dee3ae2a07ac79b2ed22e39e70a7b810d` |
| 25 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance-source-edition-3.md) | 338 | `declaration-track:622597547fae14db1f1d8466e1404c3c9988a4071dc3f32e1122dc5a62d18801` |
| 26 | `lemma` | [FinitePresentation.of_isBaseChange](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/finitepresentation-of-isbasechange.md) | 353 | `result-track:a72055235e7ab3894d4fa45181ffbd0b1132b5f93239897852f126ef478427fe` |
| 27 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance-source-edition-4.md) | 361 | `declaration-track:6920d1f51a57d3c4b6df15a32ffd36fc508953b4bab16e01c8775818234a19d2` |
| 28 | `lemma` | [Module.FinitePresentation.exists_lift_of_isLocalizedModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-exists-lift-of-islocalizedmodule.md) | 366 | `result-track:e83137ab23392fda7e8e20eea2e382b1c684f26cfc0a3756922bbcb7a9b5b473` |
| 29 | `lemma` | [Module.exists_localizedMap_surjective_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-exists-localizedmap-surjective-of-surjective.md) | 417 | `result-track:291a9c22a2ab2e9a2d83bb4b0ddd8439b5f0ea3e8958a650f2445d9b8d993c78` |
| 30 | `lemma` | [Module.Finite.exists_smul_of_comp_eq_of_isLocalizedModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finite-exists-smul-of-comp-eq-of-islocalizedmodule.md) | 430 | `result-track:f26e48c7b80ad8b13fb13178e0076948c9427fb1245172f71b2069e8bcefad5c` |
| 31 | `lemma` | [exists_bijective_map_powers](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/exists-bijective-map-powers.md) | 452 | `result-track:53998f40129a7af5d8694526520ec75eb972ed93c0e59b956414ac08ef21f821` |
| 32 | `lemma` | [Module.FinitePresentation.exists_notMem_bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-exists-notmem-bijective.md) | 510 | `result-track:f054749efb2153cbf7940afc25c51f87afa6788ffea5740d1cff882b8ee86e15` |
| 33 | `lemma` | [Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-exists-lift-equiv-of-islocalizedmodule.md) | 526 | `result-track:03abbc309a2103968e9c980ce1b5b726d2b4fdccba584474b993df80ba69ca2e` |
| 34 | `instance` | [Module.FinitePresentation.isLocalizedModule_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-islocalizedmodule-map.md) | 568 | `declaration-track:4814f2441498a7976fc4256e0df62c32d9f101f098c9d9235b5cf195dc107efc` |
| 35 | `instance` | [Module.FinitePresentation.isLocalizedModule_mapExtendScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-islocalizedmodule-mapextendscalars.md) | 591 | `declaration-track:fecd7c5d5514afe3a7742f75c2f9af6310204cb2fad42c3ed76d9943914b60d5` |
| 36 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/instance-source-edition-5.md) | 598 | `declaration-track:8320cf99bee801d254dacafeb585de705195da9cf254c5e12810b17155a7f317` |
| 37 | `lemma` | [IsLocalizedModule.exists_isLocalizedModule_powers_of_finitePresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/islocalizedmodule-exists-islocalizedmodule-powers-of-finitepresentation.md) | 604 | `result-track:ca989db7ceabff10b236a1d12b110c486b366512f85ba6f8a90c931f9d119374` |
| 38 | `def` | [Module.FinitePresentation.linearEquivMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-linearequivmap.md) | 634 | `declaration-track:db5fdaecadb19465582e6a8c9fa548cc49e45280629b55acc5c7a5959a102b15` |
| 39 | `lemma` | [Module.FinitePresentation.linearEquivMap_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-linearequivmap-apply.md) | 638 | `result-track:65cee531100cef1f0b2b7afc87f424d01426d203c34e7e502c3b537d0add1d24` |
| 40 | `lemma` | [Module.FinitePresentation.linearEquivMap_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-linearequivmap-symm-apply.md) | 645 | `result-track:b02edc4f26f95fb125f43d684184fbc1cd12db2ba8bbe59e77a72124b1b50ea1` |
| 41 | `def` | [Module.FinitePresentation.linearEquivMapExtendScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-linearequivmapextendscalars.md) | 656 | `declaration-track:493c7b92bf624061da44fb2f42311b73d7d7281eb37301a213d17eb45589c5c0` |
| 42 | `lemma` | [Module.FinitePresentation.linearEquivMapExtendScalars_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-linearequivmapextendscalars-apply.md) | 662 | `result-track:328eb9afceff41c2c351275ace57dacd9546c8ba929962355bab8a136e5e92bf` |
| 43 | `lemma` | [Module.FinitePresentation.linearEquivMapExtendScalars_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-linearequivmapextendscalars-symm-apply.md) | 669 | `result-track:2e747ef643551ff8e12fdb0be2e42c023b5a356816386a6943afaf2167ff15ac` |
| 44 | `lemma` | [Module.isBaseChange_map_of_finite_free](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-isbasechange-map-of-finite-free.md) | 680 | `result-track:7a75ba5085276d6e089517d0ff24dd0a099209bab94e3081f3fd436f9505de26` |
| 45 | `theorem` | [Module.FinitePresentation.isBaseChange_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentationPublic.lean/declarations/module-finitepresentation-isbasechange-map.md) | 696 | `result-track:38ccfeebe81450c64ad29d441dea4f987cb815bcc0ec8e497bf88ead9ca565e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19120a71d5ae0d5b830fbda3a4a7097d4ef91726138e46b9e88c61f6c206c2b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
