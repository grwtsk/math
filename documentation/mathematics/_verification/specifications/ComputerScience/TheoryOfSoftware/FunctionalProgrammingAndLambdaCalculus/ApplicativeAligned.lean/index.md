# Verification target: Applicative Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b819189acfdb9561a3a186000d22de2c36d8b0a2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant290d385595491563384af4de282370c9619abe4811fee616012c58a38212cbeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b819189acfdb9561a3a186000d22de2c36d8b0a2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant290d385595491563384af4de282370c9619abe4811fee616012c58a38212cbeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant290d385595491563384af4de282370c9619abe4811fee616012c58a38212cbeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Applicative.map_seq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/applicative-map-seq-map.md) | 33 | `result-track:bbcbff50a1291125cadbded1345c1af8ece5a3247628e523f46da594804513a9` |
| 2 | `theorem` | [Applicative.pure_seq_eq_map'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/applicative-pure-seq-eq-map.md) | 37 | `result-track:a91c480cbfa9268c8018da1fd54f06d91087e86a88f1ae8391c2c96d01c89dab` |
| 3 | `theorem` | [Applicative.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/applicative-ext.md) | 41 | `result-track:e1ae8c8e5020dd171ab3cb70f4fb8e7a341fc188c4a0f5e3202af4cff8af8b02` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/instance-source-edition-2.md) | 75 | `declaration-track:3cd8e813dfda49aa3566c87da57fedf5832e327cef40de420899b9790ea3150a` |
| 5 | `theorem` | [map_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/map-pure.md) | 93 | `result-track:0f4b6838c901006f7f14e1adc034678a82f5f4e3cfc6eac47d95c316c095d66c` |
| 6 | `theorem` | [seq_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/seq-pure.md) | 97 | `result-track:19e4563909f49bf730230b941c0282aa37ac92743ee8c170a415cf330978a16c` |
| 7 | `theorem` | [seq_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/seq-assoc.md) | 101 | `result-track:9c234e52cfd7aee0133d3ebe9f98829fa759f60123f61c30a5de915f766b3fce` |
| 8 | `theorem` | [pure_seq_eq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/pure-seq-eq-map.md) | 106 | `result-track:a9c66a24899e2928aad15c20e038c259438a57a57fcbacef1a03d154fc0fe90b` |
| 9 | `instance` | [instLawfulApplicativeComp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/instlawfulapplicativecomp.md) | 111 | `declaration-track:753ed8b05e9ac3f7b4ae52c6b4af2a8916ae18e77ebacf22d99b2373c84f8edc` |
| 10 | `theorem` | [applicative_id_comp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/applicative-id-comp.md) | 121 | `result-track:f0dcf9a29aa616067f871036a15951b5251893a0437270686bfef69e275ce6ee` |
| 11 | `theorem` | [applicative_comp_id](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/applicative-comp-id.md) | 127 | `result-track:45d3ddc09993a672d31a740bcfc778bd44115dcb7d1b6849014cdf00102f904b` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/instance-source-edition-6.md) | 135 | `declaration-track:d609dc32ed3d1ad1d3a4796ac1c9ccdc026d6cd63e60d9bff66e7a94b5e99c53` |
| 13 | `theorem` | [Comp.seq_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/comp-seq-mk.md) | 154 | `result-track:559d1b124f5adf24e6ccdd249404ec603e906b417aed0901d639c39023631667` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/instance-source-edition-5.md) | 162 | `declaration-track:b6cfcba267014c584f8d3dbbd9354c4f1242067f9625b3f309f18d870b04311a` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/instance.md) | 169 | `declaration-track:32fcd8938df15638b1a2f1be9d30c72967f530b755a410ecbef17b3a392ac9e5` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/instance-source-edition-3.md) | 172 | `declaration-track:9320cab4df90dc937d7beb3ab5795d90a8079801251544beca1f0d50c5ab89ba` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeAligned.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:9a3651fbb8a8ff3cd93fb23c4eb6d6975cbc35d645b2ea41c6524d80981fe477` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3253cdab7aa50fa60af18c982972cd5c55af74709f575ddcad1bde750a15b4bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant290d385595491563384af4de282370c9619abe4811fee616012c58a38212cbeb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant290d385595491563384af4de282370c9619abe4811fee616012c58a38212cbeb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
