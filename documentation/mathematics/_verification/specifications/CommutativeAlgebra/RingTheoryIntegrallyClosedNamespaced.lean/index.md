# Verification target: Ring Theory Integrally Closed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4d9b5989c1e550d10add75e808b606bd2a8d5e6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4d9b5989c1e550d10add75e808b606bd2a8d5e6`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsIntegrallyClosed](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed.md) | 45 | `declaration-track:16d87f02162c1bfda612f8f0bfab0f05bec0e38eec46a3c4a60d11c35c578a78` |
| 2 | `theorem` | [isIntegrallyClosed_iff](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed-iff.md) | 59 | `result-track:9e85d08f6bd420496ce0ce7162918b0cc0e7522414ef2418bc87964d9b62333d` |
| 3 | `theorem` | [isIntegrallyClosed_iff_isIntegralClosure](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed-iff-isintegralclosure.md) | 74 | `result-track:4b65013466cd817c5240c16f6c1068ecde004b3f4b12d818dbe6741ed76c0259` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/instance.md) | 94 | `declaration-track:8af1e99eb08a809db6cd061f09e9f9abaec5e8213a9ed53b9d754391389bbbda` |
| 5 | `theorem` | [isIntegral_iff](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/isintegral-iff.md) | 97 | `result-track:d60bebf391fc3050013cd965b0cb2c0086ce0282f124734d1d2b525da28b86c8` |
| 6 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/exists-algebramap-eq-of-isintegral-pow.md) | 101 | `result-track:b8f132eae7ab1e0a5082ed5cea1d5e8eb478be846f651a65b8183ca49c7e2f6e` |
| 7 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra.md) | 106 | `result-track:f29e06f031efe5a69e1f939b8485dd6cda9e8f0a409638caf626ab6ca305eb3d` |
| 8 | `theorem` | [integralClosure_eq_bot_iff](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/integralclosure-eq-bot-iff.md) | 114 | `result-track:6bd594c0e2418e0bd481fdf6f69b45d5880eed0c0847d9db49bd7f8d2a839428` |
| 9 | `theorem` | [integralClosure_eq_bot](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/integralclosure-eq-bot.md) | 128 | `result-track:f3d4d52415139ea53978a1bff886aae034547b9bf89aba4d3e4bb21f5c147fcd` |
| 10 | `theorem` | [isIntegrallyClosedOfFiniteExtension](../../../../CommutativeAlgebra/RingTheoryIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosedoffiniteextension.md) | 147 | `result-track:8fd3e23dad7d1592553efc86447a67c0fc5b648924b2d412e08dab4eca0820bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e00433e6e9957e37dcd404e416c0048e5cb2603e18578022247dea31abda1141 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean","GRWTSK/_verification/specifications/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
