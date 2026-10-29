# Verification target: Abelian Right Derived Injective Resolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79cbdbc4ad83387c5b055df1aa6e603be0c1303d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant246c95640d106b8cae45404f59cdf9ec7cf57e620c0d775054832998b1fa367c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79cbdbc4ad83387c5b055df1aa6e603be0c1303d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant246c95640d106b8cae45404f59cdf9ec7cf57e620c0d775054832998b1fa367c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant246c95640d106b8cae45404f59cdf9ec7cf57e620c0d775054832998b1fa367c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Injective.Resolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.rightDerivedToHomotopyCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/functor-rightderivedtohomotopycategory.md) | 61 | `declaration-track:d544e8cef319213de07167dce7633d561c3a898e853a495fc47050a20408dc9f` |
| 2 | `def` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj.md) | 68 | `declaration-track:6e781e924479a01285eb7d9af0efaa81b3d68260b5317a0d44a356fb89921e82` |
| 3 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-hom-naturality.md) | 76 | `result-track:282425ef2e3095e0556e65ef4cfde95c2e4017b0dd27ea8d814e2ea4491542fa` |
| 4 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-inv-naturality.md) | 90 | `result-track:6c48a315a09a0bd031ee24e8c7075a3d2bfcc1692ac7fde5dbe5b09917a0fb1b` |
| 5 | `def` | [Functor.rightDerived](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/functor-rightderived.md) | 103 | `declaration-track:9b65eb607042b3e70d692756941761cbdee4e05d71c6ee6decd75ac94b5ad7e4` |
| 6 | `def` | [InjectiveResolution.isoRightDerivedObj](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-isorightderivedobj.md) | 107 | `declaration-track:5ddce71ff0f877a6d0aed70d63ed4703298b6af70ac780ec98ace156a4bc72ff` |
| 7 | `lemma` | [InjectiveResolution.isoRightDerivedObj_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-isorightderivedobj-hom-naturality.md) | 117 | `result-track:d29c09eee4bc2045242bf5736f2b86494f5737df104677eae9c8746777ad20a3` |
| 8 | `lemma` | [InjectiveResolution.isoRightDerivedObj_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-isorightderivedobj-inv-naturality.md) | 132 | `result-track:aa0b42aadbd07fb40ccadbf4e3608a6350e780c551ad82ce4751403d37791966` |
| 9 | `lemma` | [Functor.isZero_rightDerived_obj_injective_succ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/functor-iszero-rightderived-obj-injective-succ.md) | 144 | `result-track:3dd8c4e9b7472fd41dafb14ea2b605e16e198b9c7282414af2ea0956c8d42865` |
| 10 | `theorem` | [Functor.rightDerived_map_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/functor-rightderived-map-eq.md) | 154 | `result-track:05fb353aa9e6bb5cd19efa756ead9219889bba679736674e22555b53aa0c21b5` |
| 11 | `def` | [NatTrans.rightDerivedToHomotopyCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/nattrans-rightderivedtohomotopycategory.md) | 170 | `declaration-track:7bb964625d1e525935d11595eec4f1233011c83c7bbbd0379b5f8c676256f02e` |
| 12 | `lemma` | [InjectiveResolution.rightDerivedToHomotopyCategory_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-rightderivedtohomotopycategory-app-eq.md) | 175 | `result-track:5ac8e855598432a6b4a1fcdf5d34e83ebe0e5ce1dfc5b72769104da1dd64a6a8` |
| 13 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/nattrans-rightderivedtohomotopycategory-id.md) | 195 | `result-track:e1b0459d827f9e7ccf55fa938ae37e14fe8524536a2654ad930695f40907633c` |
| 14 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/nattrans-rightderivedtohomotopycategory-comp.md) | 199 | `result-track:fac78ac8a8d2bf8329c965d3bf04ce74c5f6c569f99ad4f6f23a93e54a7fe3a1` |
| 15 | `def` | [NatTrans.rightDerived](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/nattrans-rightderived.md) | 207 | `declaration-track:b8c0f4f03455be06526f0a742e11bea7da2b54b8483be346489db4fce1aeffa1` |
| 16 | `theorem` | [NatTrans.rightDerived_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/nattrans-rightderived-id.md) | 213 | `result-track:8803d1bbea6e6c4451df265f97611a774f5ec2139c0175df86addd041e653dfd` |
| 17 | `theorem` | [NatTrans.rightDerived_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/nattrans-rightderived-comp.md) | 220 | `result-track:8415bee62d1414d8e1502c03e67ba1f7d346305e86021b6e30cfa17548e4fc35` |
| 18 | `lemma` | [rightDerived_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/rightderived-app-eq.md) | 229 | `result-track:f871b94a727b434819b42ee43226c9486fbb7b2ba41161efad3d5b8a0ea33d1b` |
| 19 | `def` | [toRightDerivedZero'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/torightderivedzero.md) | 246 | `declaration-track:83bb0d451565286f289aecce531c05123876f83273401e9cd7b813a48d3d2df3` |
| 20 | `lemma` | [toRightDerivedZero'_comp_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/torightderivedzero-comp-icycles.md) | 255 | `result-track:6b248bc43344b643c227add4aa67c0b2d43ba4a5ac88e61b8b66406a6be7064e` |
| 21 | `lemma` | [toRightDerivedZero'_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/torightderivedzero-naturality.md) | 262 | `result-track:5e1fcaf0c223ed06c2ebc4f8ec0c3c98403299386debafe7cd28d11c211680a3` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/instance-source-edition-4.md) | 275 | `declaration-track:bb1baca2b8a0234a07b9fdc210e1d038d6cdb314c0ff64dfe6887c408fcc3fb0` |
| 23 | `def` | [Functor.toRightDerivedZero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/functor-torightderivedzero.md) | 288 | `declaration-track:d3315501048afdaeb1695570c1814351e8c728c3a36ccea007a63ab8691569d5` |
| 24 | `lemma` | [InjectiveResolution.toRightDerivedZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/injectiveresolution-torightderivedzero-eq.md) | 302 | `result-track:378bec72e7a53d9d09d29bedc15c95e696f225fdd1ac352505bb55788d26895f` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/instance-source-edition-5.md) | 321 | `declaration-track:da1feb59237e234ba99f31e12e2c62deb319ec18ff954f896106386063cbed57` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/instance.md) | 330 | `declaration-track:6aecfa7e4e3c33d42b750ff79e10d3bbfcc55c9755a04b9e0387fafdd55ae97f` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/instance-source-edition-3.md) | 336 | `declaration-track:ac55d05815d383848caa9238aed307ca27a5326c8e2b0c445b24394e6f935e66` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/instance-source-edition-2.md) | 340 | `declaration-track:a02b29d03caaea6a1ba212aa4af5665fa88ff52a34b817caffca0ac53ff0ad3e` |
| 29 | `def` | [rightDerivedZeroIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/rightderivedzeroisoself.md) | 348 | `declaration-track:ffecc6424d28873c36a8fd28bcbe39492d5a266dffebd307674e4af46c81410f` |
| 30 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/rightderivedzeroisoself-hom-inv-id.md) | 352 | `result-track:b52bae0171c7b6030267794e7f131bb6e2d6faea419c993b81130d5cbd8ad0cd` |
| 31 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/rightderivedzeroisoself-inv-hom-id.md) | 357 | `result-track:68e88fea4f9e6ad98d772e92820940bb5bd7d0f654036588e229e2c670763543` |
| 32 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/rightderivedzeroisoself-hom-inv-id-app.md) | 362 | `result-track:3031ed4360f5828620c0bc425c728adeceb6531c4266596f660581bda645661d` |
| 33 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedInjectiveResolution.lean/declarations/rightderivedzeroisoself-inv-hom-id-app.md) | 367 | `result-track:e997b54b591aac8083f409ef6dcce2fd069719c359cd184337090a8bb2729665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=119cf7d95af87348f1246e65a1f06d3063f400d393de87b142c78e88a851234b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant246c95640d106b8cae45404f59cdf9ec7cf57e620c0d775054832998b1fa367c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant246c95640d106b8cae45404f59cdf9ec7cf57e620c0d775054832998b1fa367c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
