# Verification target: Geodesic Completion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e2d8657c4e8f17ee5a294f464898bba42b670a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeodesicCompletion/Variant0058a8f561e7019c5e335ec3ba73440c2211c7aa9113f2fb74e73dbf3b4c782f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e2d8657c4e8f17ee5a294f464898bba42b670a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeodesicCompletion/Variant0058a8f561e7019c5e335ec3ba73440c2211c7aa9113f2fb74e73dbf3b4c782f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeodesicCompletion/Variant0058a8f561e7019c5e335ec3ba73440c2211c7aa9113f2fb74e73dbf3b4c782f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.ExactOverlap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.StoneClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OnBooleanGeodesic](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/declarations/onbooleangeodesic.md) | 35 | `declaration-track:c6f2ea21bde6048e497c40031828183bb0778c250d3c86e480bac732cadd5856` |
| 2 | `def` | [BalancedLegs](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/declarations/balancedlegs.md) | 42 | `declaration-track:dae5e26ab37034db98a9e455d077a30c9713a8b533bf79cafb3699af5ae89ff0` |
| 3 | `structure` | [BooleanMidpoint](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/declarations/booleanmidpoint.md) | 48 | `declaration-track:0192f1440b5925e3caab5ff33e166fccd0bb7ed770a151422df1ca33f80582ff` |
| 4 | `structure` | [RealizedFiniteIncidence](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/declarations/realizedfiniteincidence.md) | 59 | `declaration-track:68ae643a37d283c6b440e1a23561428f3904f0dfc1d1741754125b1cf78d3b9e` |
| 5 | `inductive` | [MidpointGenerated](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/declarations/midpointgenerated.md) | 70 | `declaration-track:3e7fbb2b28a0651a450f2b60467c059b3b4d033f9364bfc1d3dd06e68422f8ad` |
| 6 | `structure` | [CertifiedMidpointTower](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/declarations/certifiedmidpointtower.md) | 94 | `declaration-track:c205ef394278d924e03a52dde7d41b60cef51e2d6c4167a274740a564095d355` |
| 7 | `structure` | [CompatibleMidpointCompletion](../../../../../ComputerScience/AlgorithmsInComputerScience/GeodesicCompletionNamespaced.lean/declarations/compatiblemidpointcompletion.md) | 108 | `declaration-track:389b2cf6af745e9dc06ca646380834794a16bd03d1cdbad15bcebf345620e4ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b42a2fc210d25ddadff6b1c709334025069e14ebf6497236bddc7efafe348dba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeodesicCompletion/Variant0058a8f561e7019c5e335ec3ba73440c2211c7aa9113f2fb74e73dbf3b4c782f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeodesicCompletion/Variant0058a8f561e7019c5e335ec3ba73440c2211c7aa9113f2fb74e73dbf3b4c782f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
