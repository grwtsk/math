# Verification target: QPFUnivariate Basic QPF

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb7bf23aa1f65d9fdece5a2d4285cd98da0f7208",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee844440e692f2859c6022d226b08e214250dfc60cff88275a18fc351221ac5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb7bf23aa1f65d9fdece5a2d4285cd98da0f7208`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee844440e692f2859c6022d226b08e214250dfc60cff88275a18fc351221ac5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee844440e692f2859c6022d226b08e214250dfc60cff88275a18fc351221ac5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Univariate.M` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QPF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/qpf.md) | 49 | `declaration-track:5bcb5b720facf042ff0ae7fe71fa5d4855f6c531af6a559f5f512d66a5b17cfe` |
| 2 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/id-map.md) | 68 | `result-track:0f7bc4175d04720443a0f6503f93439ea98dca65734056c8555bdf778ee31357` |
| 3 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/comp-map.md) | 74 | `result-track:a2d78a7754a17d09d3dfa9dd49cc85031c086878326755a13fd4a8fb0fb2b638` |
| 4 | `theorem` | [lawfulFunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/lawfulfunctor.md) | 81 | `result-track:898d58db4a58c30e56582204328a2c956a49b957387a68ddcdf513713d116f4a` |
| 5 | `theorem` | [liftp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/liftp-iff.md) | 95 | `result-track:0bf6b1e6654ba8bc2f82c2210f16ffe18a3b1c328efb5a02c997a4f470203322` |
| 6 | `theorem` | [liftp_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/liftp-iff-source-edition-2.md) | 110 | `result-track:f345ac13aed99b07b61715e0e36aff69128bdf36f8ba2da33a6beb4b4925ffb3` |
| 7 | `theorem` | [liftr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/liftr-iff.md) | 126 | `result-track:38a9a3d45898a4a278fbb35bbe0d838e12f0d9cd9458bedd589986d7441a8a52` |
| 8 | `def` | [recF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/recf.md) | 155 | `declaration-track:149d6569cd11bb178179f268e1f4fd50dfe57a9d8e06abb76f134d7279469a16` |
| 9 | `theorem` | [recF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/recf-eq-source-edition-2.md) | 158 | `result-track:eb87176d0c28bb950de4decd8b3ad2f9bfb60be1e23a7222654dcee8339b4824` |
| 10 | `theorem` | [recF_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/recf-eq.md) | 163 | `result-track:5f5049042f8b98dac089d04104cfea06aedbc96beac2d60a4c071b9fbcc42a76` |
| 11 | `inductive` | [Wequiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/wequiv.md) | 168 | `declaration-track:48e68a1722ddae7b6c7a7111d1870557f24dfb61c4e153ed5875ef111b7f072f` |
| 12 | `theorem` | [recF_eq_of_Wequiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/recf-eq-of-wequiv.md) | 175 | `result-track:ba1bff02ce66f1ced0b91b4631300c9fd1b9a955ccfec465ecbf912bd2f5ce73` |
| 13 | `theorem` | [Wequiv.abs'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/wequiv-abs.md) | 183 | `result-track:9e9a3f12cf49e610604c2b121b453d9dd92b75d00c43935eca9f8068e8beb090` |
| 14 | `theorem` | [Wequiv.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/wequiv-refl.md) | 189 | `result-track:ebe903dae24b994544b88df3dc3599d8bed8b8392f4dada7fe41d6c80746d370` |
| 15 | `theorem` | [Wequiv.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/wequiv-symm.md) | 193 | `result-track:407b9af1ab170189984b3a8c80eba5838e9536497f0cd3818353d3edebc3863f` |
| 16 | `def` | [Wrepr](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/wrepr.md) | 201 | `declaration-track:328f23844ab0c71fc0fb8bb53c3522e3d82c04d9f2375fb86674fc979d4f4984` |
| 17 | `theorem` | [Wrepr_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/wrepr-equiv.md) | 204 | `result-track:7b2d54dafacfa309bf0d6ffab98918efa904f77dd7d1758c67a1245c1ddb2c9f` |
| 18 | `def` | [Wsetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/wsetoid.md) | 215 | `declaration-track:760140d5a1f82029f23172ffe5c7ea825c2330d17cf8cc5d4b87cfcc4447653d` |
| 19 | `def` | [Fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix.md) | 221 | `declaration-track:ad8569db0cb40fa9cf61ca0559f7e787cef3a8c88bfebf3432893e153508fb6b` |
| 20 | `def` | [Fix.rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-rec.md) | 225 | `declaration-track:f1895eaa8e3139fcf64670f2bdb39fcc78c04f912b8f5d3f7859529269949db6` |
| 21 | `def` | [fixToW](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fixtow.md) | 229 | `declaration-track:9b8673e7f0307c5e8dc1c3529345a60ff9e32bbe5ca6e93d5ce2bca69ce27165` |
| 22 | `def` | [Fix.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-mk.md) | 233 | `declaration-track:9cd133dbeb73597feba31b706f53ebfac6f619a0791f0480f8816fe69db77524` |
| 23 | `def` | [Fix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-dest.md) | 237 | `declaration-track:94f9243e9dd1eb37518f92519feda67b09cf88e89937f84658ecb1fd2225a449` |
| 24 | `theorem` | [Fix.rec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-rec-eq.md) | 240 | `result-track:1b848f888d03ae9c7b278c1b7fb646fa20b58f20459e66338f88b635a15730ec` |
| 25 | `theorem` | [Fix.ind_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-ind-aux.md) | 255 | `result-track:47642de7deca18c34b0cfe79b1b2aa93ca2c5cabf17c4a47c8e599152d41e7b7` |
| 26 | `theorem` | [Fix.ind_rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-ind-rec.md) | 266 | `result-track:435927c2be8b893e1dbd14e6386bc12fc2eaeff44ec0951c834eaa5deb7c0794` |
| 27 | `theorem` | [Fix.rec_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-rec-unique.md) | 277 | `result-track:45686a4d1cfe012e9c0afbcb31c01ef72818307e922a150d94a753fc9a78e46d` |
| 28 | `theorem` | [Fix.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-mk-dest.md) | 284 | `result-track:79b739b512122b7a9a38a2fea1de2318ea3ffcd684be7bd1156bfcf27341a18e` |
| 29 | `theorem` | [Fix.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-dest-mk.md) | 292 | `result-track:c2c3c18a955db7f4d71be2dcb005f36e6ef42d41bc34c5615224f9452dd76946` |
| 30 | `theorem` | [Fix.ind](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/fix-ind.md) | 300 | `result-track:4060b4481200c8a3ceaf314c5b4e4c5e8f038c326669c771ed7fab5068ccb289` |
| 31 | `def` | [corecF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/corecf.md) | 322 | `declaration-track:6812d8817a8e0a988e802f03e97df12cb10a1eb875474eaf8eaeb397f4b6e2eb` |
| 32 | `theorem` | [corecF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/corecf-eq.md) | 325 | `result-track:195997b1a48695056e5875f96c28e714417f35c2a674e0dc2c30337c2ca71d8c` |
| 33 | `def` | [IsPrecongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/isprecongr.md) | 331 | `declaration-track:cd23a26e96f0bfbb1469c107648b37419cd38de796f9fded945b85dc9303484d` |
| 34 | `def` | [Mcongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/mcongr.md) | 336 | `declaration-track:71007bdebc3ad9d748d9413fded79bb85a0dd9d7c3bf406ba221fa14e4d88245` |
| 35 | `def` | [Cofix](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix.md) | 339 | `declaration-track:eb747c68564f538cbbb4a712ad73f399842a2e4b99c5cabdad71738c1ee8ef2a` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/instance.md) | 342 | `declaration-track:e00cc23f5f939171d948deeacdb4260bf95fadde86b47241abd78d35b935d919` |
| 37 | `def` | [Cofix.corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix-corec.md) | 346 | `declaration-track:ea4781e67680c9382c5045cc2a70a8a5d213bb09bcef3dc0ebe377abc9f744c5` |
| 38 | `def` | [Cofix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix-dest.md) | 350 | `declaration-track:79c0835530994ed046cc5fc84d69b15603769a1b0b2ef91ff95384cbf35d4f82` |
| 39 | `theorem` | [Cofix.dest_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix-dest-corec.md) | 363 | `result-track:c16133e8367f3b2e24125684ec901cec3fa49c64502c6cc3959956dfa50ada3a` |
| 40 | `theorem` | [Cofix.bisim_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix-bisim-aux.md) | 371 | `result-track:1261582a25f953e9a13badf505d140a5a5e3732ed960b749ea8bd221c0d5cacf` |
| 41 | `theorem` | [Cofix.bisim_rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix-bisim-rel.md) | 399 | `result-track:5ca5a2caf0074a8cca60632a6b846b406ced5ba13d788cb4440767396eb90ed2` |
| 42 | `theorem` | [Cofix.bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix-bisim.md) | 418 | `result-track:7334a965591cd8dae8ec7944d60cbc948a9b814c1a47012e46d6c04d2eba8e25` |
| 43 | `theorem` | [Cofix.bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/cofix-bisim-source-edition-2.md) | 428 | `result-track:7eacf23814d2b75bb528f0a812a242b6214b011b2e18e5d8761a7951d977bb5f` |
| 44 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/comp.md) | 451 | `declaration-track:f3a98c0f23612ecd79788b58addb1cf959862122b3b82cb8f3e59f53a1c7a50e` |
| 45 | `def` | [quotientQPF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/quotientqpf.md) | 510 | `declaration-track:6935275e1bb9ee77a2144757c69143b822af54a871c7bef56dbbf6841d436648` |
| 46 | `theorem` | [mem_supp](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/mem-supp.md) | 531 | `result-track:7dd18abf4c05f4a6b443ba5b5601af8b294e4e68f91c6be1a3c39a45d5049f1b` |
| 47 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/supp-eq.md) | 544 | `result-track:8b0621bd475214a69e87035759a8349e57f1132a0cb611381fb0045d87d203cb` |
| 48 | `theorem` | [has_good_supp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/has-good-supp-iff.md) | 549 | `result-track:95adacabbccf5e10bec190634c7068e4a87a3eaedc98215ccb7d2fb4ad0d91de` |
| 49 | `def` | [IsUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/isuniform.md) | 576 | `declaration-track:b89eaa7262cb273bbfec0c5db360d2fc7aef646eedfd6ed39337bdfecfacf959` |
| 50 | `def` | [LiftpPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/liftppreservation.md) | 581 | `declaration-track:b87dc0c99df82d38b8c33580e09eecb1917576e44dea2116d26b4472e34f17c2` |
| 51 | `def` | [SuppPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/supppreservation.md) | 585 | `declaration-track:45e21caff1c35e6f3dd75758e32b6a19a75b38b6bd0bc53ef8b53e84c6bc9d08` |
| 52 | `theorem` | [supp_eq_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/supp-eq-of-isuniform.md) | 588 | `result-track:d99f738ca6aacfd26dd2d081a7b496062dea74f6750614d38fe1cbb6623957ad` |
| 53 | `theorem` | [liftp_iff_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/liftp-iff-of-isuniform.md) | 596 | `result-track:4b1a472b7b7686676ff7cf8be6d694420dde4afd0464357778787d91fa0ed2d1` |
| 54 | `theorem` | [supp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/supp-map.md) | 610 | `result-track:380a9b9e53f0f09c08a6e769ad27d64269869d633968b053b6da3533d246502d` |
| 55 | `theorem` | [suppPreservation_iff_uniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/supppreservation-iff-uniform.md) | 615 | `result-track:351a016099d277d81b051f88fcf176d5fdb27a73c7595ac67a207551e1f471aa` |
| 56 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/supppreservation-iff-liftppreservation.md) | 622 | `result-track:39aecdb12b95a06b398a9ad083f5b5cb5e7bdc9909524feba9a3459e820e5ee3` |
| 57 | `theorem` | [liftpPreservation_iff_uniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQPF.lean/declarations/liftppreservation-iff-uniform.md) | 635 | `result-track:d6bcf5c8383632e3fcbe479c3d5a436a79843f33892a730e6ceb11f3ae2bca44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b74ae0d7c5230e5c73d391cee4c06f890c647518c982be876ac712225125ce9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee844440e692f2859c6022d226b08e214250dfc60cff88275a18fc351221ac5b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee844440e692f2859c6022d226b08e214250dfc60cff88275a18fc351221ac5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
