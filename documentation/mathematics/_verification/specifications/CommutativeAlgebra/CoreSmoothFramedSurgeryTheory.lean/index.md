# Verification target: Core Smooth Framed Surgery Theory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c0cf203b0b4e4681fac58b362ce8628421da4de",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c0cf203b0b4e4681fac58b362ce8628421da4de`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothFramedSurgeryTheory](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/smoothframedsurgerytheory.md) | 51 | `declaration-track:c8103a968c84f6e9404ca90aa7cc492a333cfbdd338bd45c5c93a69518fe0961` |
| 2 | `theorem` | [surgery_invariant_of_framedIsotopic](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/surgery-invariant-of-framedisotopic.md) | 81 | `result-track:b59a06e5a9804a217c9c0e032605f21f569d51297f65a89cb189393c1f35f370` |
| 3 | `theorem` | [ambient_and_trace_not_both_even](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/ambient-and-trace-not-both-even.md) | 97 | `result-track:908f483a32bd97c467e359d74dd2fb505b6084809adc3ca62dc9a2ff75310b2b` |
| 4 | `structure` | [SingleHandleRelativeInvariant](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/singlehandlerelativeinvariant.md) | 110 | `declaration-track:0c245c01640d243e221581c2533a693f989b7d92fb0c11582f0aa1f8176fae26` |
| 5 | `def` | [degreeEquiv](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/degreeequiv.md) | 138 | `declaration-track:91f9238f3401be71d566574d19916d9fd2e5fadedcf6f44b74d4de383264d5fb` |
| 6 | `def` | [generator](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/generator.md) | 145 | `declaration-track:6e308eced946e1a89a5fb03ef210d6e18676ebf7de81b0580bb4199b435352f2` |
| 7 | `theorem` | [eq_zero_of_degree_ne](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/eq-zero-of-degree-ne.md) | 151 | `result-track:002deb70f24185d01995781deab1432d71b3d1e45c61a489e4b11e4150bc71ce` |
| 8 | `theorem` | [boundary_generator_eq_attachingClass](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/boundary-generator-eq-attachingclass.md) | 159 | `result-track:4f93c269b7ac55d8f325d39ab66e133aedefcad630938be74492650ee79e86c0` |
| 9 | `structure` | [FramedSurgeryCertificate](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/framedsurgerycertificate.md) | 175 | `declaration-track:3ed028ba0684d8d85e683157e1f68d186cfa2db37de0b7d577a9503c5613aa28` |
| 10 | `theorem` | [complementary_handle_index](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/complementary-handle-index.md) | 200 | `result-track:580041469bb97ff9a3ad29caeb38c7ec2148124c16a0faef20f076f60a12c625` |
| 11 | `def` | [incoming_degree_equiv](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/incoming-degree-equiv.md) | 208 | `declaration-track:93a6fe301c467c2d075b50fb1f25ed22c2753b0ae57739dc0d1baeaa5f27b2ab` |
| 12 | `def` | [dual_degree_equiv](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/dual-degree-equiv.md) | 215 | `declaration-track:e0487f74e454d7a50fe91223cc85832e16e70a1d9ca35475fa73e40f9da6e398` |
| 13 | `theorem` | [incoming_eq_zero_of_degree_ne](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/incoming-eq-zero-of-degree-ne.md) | 222 | `result-track:19344c008f6a4eef1466f19081eee9260d9ff185301d7d3389e44b194ce6a9c7` |
| 14 | `theorem` | [dual_eq_zero_of_degree_ne](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/dual-eq-zero-of-degree-ne.md) | 231 | `result-track:aae99ce6482943192c728973940e857132db1a257a1d484c20e9778d5b6c7822` |
| 15 | `theorem` | [incoming_boundary_generator](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/incoming-boundary-generator.md) | 240 | `result-track:02a996da0bd05cd0e28b908dbbf7c0a14a9f1af746a31cbcd65331d29bf64604` |
| 16 | `theorem` | [dual_boundary_generator](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/dual-boundary-generator.md) | 249 | `result-track:4c6d92b9a5e3ffb0c80e3491b7cecc6edd2f1bbc26549b501ced64f0ada6e60e` |
| 17 | `theorem` | [boundary_is_relative](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/boundary-is-relative.md) | 258 | `result-track:d9d3ac99624e2a19abfad18ecefecdaa79fee9010be247203d640cec02b69938` |
| 18 | `structure` | [TangentialExtensionBoundary](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/tangentialextensionboundary.md) | 273 | `declaration-track:207b7ea229780d7f104a6dc48c9d78ad81265b491ed8d3a1c33269f23799795d` |
| 19 | `theorem` | [extends_iff_boundaryClass_eq_zero](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/extends-iff-boundaryclass-eq-zero.md) | 295 | `result-track:9adf75d4f556b4e1ca837eadbced0e1e194569dcc22e5ea6d1057018c8b9fb6d` |
| 20 | `theorem` | [extends_of_boundaryClass_eq_zero](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/extends-of-boundaryclass-eq-zero.md) | 301 | `result-track:3b0c27403eab185ebc095172c551b9d23ea771e98750dcb6fcdd6d80f4f71d3b` |
| 21 | `theorem` | [boundaryClass_eq_zero_of_extends](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/boundaryclass-eq-zero-of-extends.md) | 307 | `result-track:78c7b621064022ae5788848e6f4161a04404474c7b58a5567c461bcdf5cedc4a` |
| 22 | `structure` | [DualSurgeryCertificate](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/dualsurgerycertificate.md) | 322 | `declaration-track:960300872a65535d57601987746e98a025a5d4e1b0dd143363f015a2ff4a6c93` |
| 23 | `theorem` | [surgery_on_belt_restores](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/surgery-on-belt-restores.md) | 335 | `result-track:55c59baff125acf14b1e3bb6473288aaa84b5087e2e369cdb08113baeef24ed4` |
| 24 | `structure` | [FiniteDisjointFramedFamily](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/finitedisjointframedfamily.md) | 346 | `declaration-track:8b55e406fda83961ee27f2725217d4797f73fb5de9a88e897fb6554119951c85` |
| 25 | `theorem` | [disjoint](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/disjoint.md) | 360 | `result-track:57e578764c736fa0fccfb6956f05d5edcce19589567698ba056e5bca049371d2` |
| 26 | `structure` | [DisjointFamilyCommutationCertificate](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/disjointfamilycommutationcertificate.md) | 383 | `declaration-track:2768f735f8447973d6d5f79ae42ede1935dc2ee15dabeb53ff16716614d07828` |
| 27 | `theorem` | [ordered_rel_simultaneous](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/ordered-rel-simultaneous.md) | 401 | `result-track:445577ba08f932a8e43beb891457c69ad0cb193dec6f95e2b03ca719a436ca7d` |
| 28 | `theorem` | [ordered_results_commute](../../../../CommutativeAlgebra/CoreSmoothFramedSurgeryTheory.lean/declarations/ordered-results-commute.md) | 415 | `result-track:82df328091a9dc82240c63dc806d9e3c5671fe8eb4b7e9b4a09dde8ee829e7ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79f7a9172fbfbceff473dad9a7fae48cff125c5fa85652ce38f06fdf0d3a38a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
