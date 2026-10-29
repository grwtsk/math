# Verification target: QPFMultivariate Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8c8df6868773a8fe9e247b4c5d96a46ee477d72",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8c8df6868773a8fe9e247b4c5d96a46ee477d72`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvQPF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/mvqpf.md) | 90 | `declaration-track:07291cbc92de2ab753ce2f5b1d1f366952291acf2ee77e5ec45e25434e3bdc39` |
| 2 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/id-map.md) | 108 | `result-track:4b739ea69e23f584a0cc5bf65f0f3ce81da3c859f0583f21a3097a9d9edbd9b5` |
| 3 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/comp-map.md) | 113 | `result-track:33bf1a2a7d503ac08ea7f5030147ce67dbe1871dc1b805dc41e2743e93843a72` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/instance.md) | 118 | `declaration-track:ed6ba0e0a7605caca7e25700e0bc632b5d45a89d320cd2daf521bb9078ad9c27` |
| 5 | `theorem` | [liftP_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/liftp-iff.md) | 124 | `result-track:1d8562c7fcd26351076ff2eaefcd48bd4e606106bbcafe68bdf79bd781d068d9` |
| 6 | `theorem` | [liftR_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/liftr-iff.md) | 139 | `result-track:1fd4f06bac758ca0c821fdd689bade090a1d3a724f671b7c1dcdd51836be1403` |
| 7 | `theorem` | [mem_supp](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/mem-supp.md) | 159 | `result-track:7deb9e3451b395d8cd89d4f500ea4522f0f8d38eda1ac331d2dda15ab3fc9166` |
| 8 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/supp-eq.md) | 171 | `result-track:adc16035dc1e432ef7bc4d4ead57923fdda00c9f92d2ce2e4b3ace0ff9383261` |
| 9 | `theorem` | [has_good_supp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/has-good-supp-iff.md) | 174 | `result-track:968f3636ea44915647f70b00baac9006974c151eb82dd06bd82990d64d53cb4e` |
| 10 | `def` | [IsUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/isuniform.md) | 201 | `declaration-track:5d839af586569c926b41cc59c008be502f9370dda6d56ab9dfa449b425f11da3` |
| 11 | `def` | [LiftPPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/liftppreservation.md) | 206 | `declaration-track:7473dbebe28eed394366e72ab32a8f4f5b02ce54687866927d0513947a22608c` |
| 12 | `def` | [SuppPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/supppreservation.md) | 210 | `declaration-track:fa5299ecde8c2ec8e37fd4e4b565e8a3534ce581e680937c7b500720f1e39456` |
| 13 | `theorem` | [supp_eq_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/supp-eq-of-isuniform.md) | 213 | `result-track:42a7abaf5497a17faa324b1a926695610ddce945d8f691128e3f040d83fbb06d` |
| 14 | `theorem` | [liftP_iff_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/liftp-iff-of-isuniform.md) | 221 | `result-track:09f79910fbc3c344bb04d92eb59086178ea159b23579c193be07959782198bd4` |
| 15 | `theorem` | [supp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/supp-map.md) | 236 | `result-track:fee078ebb617fa8bc65303f8fa8b95091c7276a9e1dc72c800122ae72522edb0` |
| 16 | `theorem` | [suppPreservation_iff_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/supppreservation-iff-isuniform.md) | 243 | `result-track:a15a4088b32152df040b8f035258eaffc290947d7f26be8979626bc99a425a3a` |
| 17 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/supppreservation-iff-liftppreservation.md) | 252 | `result-track:da7eed0d78d7302815e05fc25428a03c2104d28eed3ab253ba2770d8dc77118c` |
| 18 | `theorem` | [liftpPreservation_iff_uniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/liftppreservation-iff-uniform.md) | 266 | `result-track:949f4030a6e75010f79b02222c7a990e16333a6cbca63680a71c40de2c5b2d3b` |
| 19 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/ofequiv.md) | 273 | `declaration-track:cefae92e176fb2ad4286036781d1fed3635840b99ad51cc993aa58e034dfdaef` |
| 20 | `instance` | [MvPFunctor.instMvQPFObj](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicPublic.lean/declarations/mvpfunctor-instmvqpfobj.md) | 287 | `declaration-track:de6222f477d29e18745ebbacea08797924a47a01e3e07688f7a265bace08091d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a6b359abf693b154a95f1720967e47b4d61cfb7c1e4523830ea5d2c8384eaa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
