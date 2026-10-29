# Verification target: FGModule Cat Basic Module Cat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1189a26b8f813a8acbe4f1c88d680d0752caf734",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1189a26b8f813a8acbe4f1c88d680d0752caf734`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Subcategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Coevaluation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModuleCat.isFG](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/modulecat-isfg.md) | 45 | `declaration-track:39bc1c881cec751d322c864308aae15cf42d058332ecafdfe870fba03b30cec1` |
| 2 | `lemma` | [ModuleCat.isFG_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/modulecat-isfg-iff.md) | 49 | `result-track:7840c1c57471a96deda5dd34126cbd368d9c2a879c79fdabd5fd828920a2cdf7` |
| 3 | `abbrev` | [FGModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecat.md) | 53 | `declaration-track:75cf7b654250f358ab9e15cce0818e07ebd89159220acac7e0c3f94ae36ba616` |
| 4 | `def` | [FGModuleCat.carrier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecat-carrier.md) | 58 | `declaration-track:9f4e8575adf28540ab8217ff0a5b8ca2570de3485d5cce9dbf5c9cb3af3d5fc2` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-6.md) | 60 | `declaration-track:36bff79b7c8bee02178d6c11d7ebd61542462507407e000c55431a038be8a85d` |
| 6 | `lemma` | [FGModuleCat.obj_carrier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecat-obj-carrier.md) | 65 | `result-track:a056dce4f3c5464fca563cd12b35c718f9ffa5402b279dac98766e9c1e06ce1e` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:0b21caf6a9c3beb0f3871c776606289657a606355b9c103989cc87c81c6f3069` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-9.md) | 71 | `declaration-track:afdd2dd6efd2fd83ffd8c32ce1bb0e174e53bf80c556508a19b606d3abd7fcad` |
| 9 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/hom-comp.md) | 83 | `result-track:3f4b48d10ee676f336cb5167f46d19c07506a55d28f46c56ad887bba6f7f45fe` |
| 10 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/hom-id.md) | 86 | `result-track:00f7c803de509562470e5afeca59899b17f312315b31f6bca583103d61f79026` |
| 11 | `instance` | [finite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/finite.md) | 88 | `declaration-track:0741970be2b76b30e2b5c000341d414be5cb42edd5b793a4208805634d62b432` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:121a1a80b43b9fecabc921b6c84e2d94e290a0f4cf8060c386dcef9cc84f2b5f` |
| 13 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/of.md) | 95 | `declaration-track:d76f2fca17ce5ce45a4ae0df37818d0771fa48136a92f03627c70b0fd5cd87d9` |
| 14 | `lemma` | [of_carrier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/of-carrier.md) | 99 | `result-track:3abd5cb0455933201b72e071a5853f1b73d7731c88d8ac28560ecaae7a727314` |
| 15 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/ofhom.md) | 104 | `declaration-track:632b00d893cc0155baf2900cc3131f88fdc299d1debfb36c1d474e75d187147b` |
| 16 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/hom-ext.md) | 110 | `result-track:6e9d841d583419c8443b0b68ff9943d2a706da1951bc10e473293711c2ef5016` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-10.md) | 113 | `declaration-track:f3dee7e81ed7e8a0105dedca1432a9f2bb79d9460fbe85cdbed1c26724fa6c52` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance.md) | 116 | `declaration-track:03d4d40633b4f3e9cc37b5a3c9600a20053e8d674a241376a1e85ee834733b89` |
| 19 | `def` | [isoToLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/isotolinearequiv.md) | 123 | `declaration-track:bff13a525e68297778080c542644c74b5c5443aa08b8a6ac18b5a5b0851a2730` |
| 20 | `def` | [_root_.LinearEquiv.toFGModuleCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/root-linearequiv-tofgmodulecatiso.md) | 128 | `declaration-track:a09c74939060b66c95c28324ec164d44973d2e4034450ef694563bf3624a527b` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-5.md) | 143 | `declaration-track:14ff397802f0f5dbeb1b38cb8dd7ca54d0565437e85221869b33f9f665c9969e` |
| 22 | `lemma` | [tensorUnit_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/tensorunit-obj.md) | 150 | `result-track:e66794fed588ab0f942744687bda7540165534674bf20c5d4058b2af758a78b5` |
| 23 | `lemma` | [tensorObj_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/tensorobj-obj.md) | 151 | `result-track:0534393901a3db03223c30b5619b8144de46cb15eb77de57d680c05468ae2527` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-4.md) | 153 | `declaration-track:13c08b10e699e6e01b8898d86821ae904c7a6e66969cf84c493fac813fd29991` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-7.md) | 154 | `declaration-track:3b03f4df29cc4d8aa31c6584c4a0cf19d8552158f02916fce633eb651e975738` |
| 26 | `theorem` | [Iso.conj_eq_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/iso-conj-eq-conj.md) | 156 | `result-track:1fc3fcd50d402b6ea1ee3afb1c516da7ef56e41b5eef4e86702ac4edc4a9e9bb` |
| 27 | `theorem` | [Iso.conj_hom_eq_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/iso-conj-hom-eq-conj.md) | 160 | `result-track:ba5f32cf5d09ee22871ddb845663d8cab7233e32d6f80d9c6cea42b04418c58a` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-8.md) | 170 | `declaration-track:a5b87057d63b56656dd755d0ea77ed850dc501bc8b3acf2c8b159231390e3fcd` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/instance-source-edition-11.md) | 173 | `declaration-track:f531c198bb8ec554173c9560ca2d7b619befb72e670e8d5363f2c974b237d7fb` |
| 30 | `theorem` | [ihom_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/ihom-obj.md) | 180 | `result-track:dd12089a802ad97fb07fc30bd94e80c69d3c17fc057c8e186e1ae33573fee9bb` |
| 31 | `def` | [FGModuleCatDual](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatdual.md) | 184 | `declaration-track:8907978f628935497c65df6c42c85fbe0cde38ecffd93f44f4daf6a2c7009e2e` |
| 32 | `lemma` | [FGModuleCatDual_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatdual-obj.md) | 187 | `result-track:9155adad9728a686e674c160954b3c7e79727fb0f055db50087c69d7b121a940` |
| 33 | `lemma` | [FGModuleCatDual_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatdual-coe.md) | 189 | `result-track:16f57eb864b6d9e79ad712bd07d51e8244b318bc8c483e6886f2c25c8b055f58` |
| 34 | `def` | [FGModuleCatCoevaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatcoevaluation.md) | 194 | `declaration-track:ca8b1659c6862b28f454c88843bad40b3a281d92da8870443b0f6e3f609ca3f5` |
| 35 | `theorem` | [FGModuleCatCoevaluation_apply_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatcoevaluation-apply-one.md) | 197 | `result-track:4c3f2d3d4ff48974922215d4b7f82ae663111d2f2c7b592b765c54c072c95ba9` |
| 36 | `def` | [FGModuleCatEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatevaluation.md) | 204 | `declaration-track:b79bc3511551ef8c6d7177654e6ffca567bd671288656ba111688b8843dbdb74` |
| 37 | `theorem` | [FGModuleCatEvaluation_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatevaluation-apply.md) | 207 | `result-track:b245f7bd56efdd6a1726ecb4ff9cc01a132ba59c20d669ae4a482f34dcb68668` |
| 38 | `theorem` | [FGModuleCatEvaluation_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/fgmodulecatevaluation-apply-source-edition-2.md) | 214 | `result-track:da3049e43ff2f32a794d4e2e46a38cbc83862780bd363e555fe56374e49917fb` |
| 39 | `theorem` | [coevaluation_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/coevaluation-evaluation.md) | 220 | `result-track:e647ef7ef90fa2f350af688aada94edf962ae611de4ae7309c3d1c3cd1550536` |
| 40 | `theorem` | [evaluation_coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/evaluation-coevaluation.md) | 227 | `result-track:681bf96e639d99a3889dc20a9aaf046bcd9e11b72a2d96955a80ab1413c4fec6` |
| 41 | `instance` | [exactPairing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/exactpairing.md) | 234 | `declaration-track:028ba2722af1a2d47b5c40545e2b8951662bd29ac16b5498a073a6e72c49608b` |
| 42 | `instance` | [rightDual](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/rightdual.md) | 240 | `declaration-track:5628b6eea75bd3d203feff4a12b1de39da8bc89fc22966554fe1aaa58e146b0b` |
| 43 | `instance` | [rightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/rightrigidcategory.md) | 243 | `declaration-track:4b9a6673f27d7e7b5230d9fd203d1bbccd230d1c8dc2d5562319e23ee54665a6` |
| 44 | `theorem` | [LinearMap.comp_id_fgModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/linearmap-comp-id-fgmodulecat.md) | 253 | `result-track:36bbcfa1a19210589871f82b466f9893b8418574aaeaae05eb321932112bf0ac` |
| 45 | `theorem` | [LinearMap.id_fgModuleCat_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicModuleCat.lean/declarations/linearmap-id-fgmodulecat-comp.md) | 258 | `result-track:653a4fedbc632bc2c9c52cb41b8cd39d1b190cf7197c7b56e9beccd2dbf5fdbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c582edbf35e64052f91a355524fcc9c1f8dc5fefa4744bf49cc34ec3133b6f0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
