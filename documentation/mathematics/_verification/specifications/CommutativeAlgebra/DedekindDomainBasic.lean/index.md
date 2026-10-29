# Verification target: Dedekind Domain Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bba27a4a7729ff262ce365467f697fbb4b976950",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bba27a4a7729ff262ce365467f697fbb4b976950`.

Source path: `GRWTSK/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Over` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.RationalRoot` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Ring.DimensionLEOne](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/ring-dimensionleone.md) | 48 | `declaration-track:61536722dedbf0b41ddab4e34504ec6b6ca69e49a2333150b5b06f2c9d58a900` |
| 2 | `theorem` | [Ideal.IsPrime.isMaximal](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/ideal-isprime-ismaximal.md) | 54 | `result-track:5e52b5bc9966208aeda587b73799ba85cce3fdf86401b59bf6b15b48bd08cd36` |
| 3 | `instance` | [DimensionLEOne.principal_ideal_ring](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/dimensionleone-principal-ideal-ring.md) | 60 | `declaration-track:b04f47ec8cd6f36ebc189fb08c78939297961c5db4b056e3d1427715a9637da8` |
| 4 | `theorem` | [DimensionLEOne.isIntegralClosure](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/dimensionleone-isintegralclosure.md) | 66 | `result-track:8a6d2b9b7dc08e1b23ec1dbd81e98c547982e115cce7decabcd77f8484fbc3b2` |
| 5 | `instance` | [DimensionLEOne.integralClosure](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/dimensionleone-integralclosure.md) | 74 | `declaration-track:3551ae544d14e55d5089a0b757742889fbfe9d5103878572ec3becdb7c243dfd` |
| 6 | `theorem` | [DimensionLEOne.not_lt_lt](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/dimensionleone-not-lt-lt.md) | 81 | `result-track:c210af52a3a70b9c7fbd6afbadb5a180a2b7b7035adf0aa49ba15d14b50e9589` |
| 7 | `theorem` | [DimensionLEOne.eq_bot_of_lt](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/dimensionleone-eq-bot-of-lt.md) | 86 | `result-track:ccf270ca01d962b04bb8cbc9dbd0c7f557ee0ea169fbae24fbdef502eb0e3364` |
| 8 | `class` | [IsDedekindDomain](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/isdedekinddomain.md) | 105 | `declaration-track:43929b3e7b56b567dc2515beb04d763a5971305bfdcb74f88d5c1ae3cc3f5d50` |
| 9 | `theorem` | [isDedekindDomain_iff](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/isdedekinddomain-iff.md) | 112 | `result-track:45403ab0442cf34d0d152c1e0621a85f32aaca8c82dc1f4be0eff1bb61fec141` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainBasic.lean/declarations/instance.md) | 122 | `declaration-track:712d07505f0340ad622fb57a0084923032659a540ae24fd70f851510cd3f6b81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9e4095a0050388e562a6a2a80986c1045defe4ed637bf91f3e18cebab094bea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
