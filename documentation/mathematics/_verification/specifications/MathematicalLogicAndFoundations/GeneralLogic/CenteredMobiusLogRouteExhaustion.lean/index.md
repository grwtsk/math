# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogRouteExhaustion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1761895495d059e958aed6787b791ba815b2df7c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogRouteExhaustion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CenteredMobiusLogRouteExhaustion.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CenteredMobiusLogRouteExhaustion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1761895495d059e958aed6787b791ba815b2df7c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogRouteExhaustion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogRouteExhaustion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevEquivalence`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogChebyshevEquivalence.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [allDyadicEnergyBound_of_globalChebyshev](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CenteredMobiusLogRouteExhaustion.lean/declarations/alldyadicenergybound-of-globalchebyshev.md) | 18 | `result-track:295a69f7dc4a98ce20fc70e5cd633d8603bf78a6fe0416825e3151bab201c291` |
| 2 | `theorem` | [globalChebyshev_to_energy_factorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CenteredMobiusLogRouteExhaustion.lean/declarations/globalchebyshev-to-energy-factorization.md) | 25 | `result-track:103a3d7f58c5a185a476e2ee1ee9ffde738e95d40a52f71e156e2c248aad3ee2` |
| 3 | `def` | [GreenMobiusLogRouteFinalArithmeticObligation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CenteredMobiusLogRouteExhaustion.lean/declarations/greenmobiuslogroutefinalarithmeticobligation.md) | 35 | `declaration-track:fbd2e99df38ded4f1d6d0b5b7076447ec07e2c60f594111e82a5c1253f79af8f` |
| 4 | `theorem` | [greenMobiusLogRouteFinalObligation_suffices](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CenteredMobiusLogRouteExhaustion.lean/declarations/greenmobiuslogroutefinalobligation-suffices.md) | 38 | `result-track:be04cfbc1350ce40b359beb4324af987067e3ac0084d9d87cdfec4932966a3e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e8f506cc3e2fd9dce2887cbe9721f131d5e79cc1d41b14e8151fa36ee40bc84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogRouteExhaustion.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogRouteExhaustion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
