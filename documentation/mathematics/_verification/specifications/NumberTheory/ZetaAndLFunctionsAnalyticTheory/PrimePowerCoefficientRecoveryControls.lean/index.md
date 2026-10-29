# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimePowerCoefficientRecoveryControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f4027b067c14c6a74aa3a64be00bad7f6798bcf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerCoefficientRecoveryControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f4027b067c14c6a74aa3a64be00bad7f6798bcf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerCoefficientRecoveryControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PrimePowerCoefficientRecoveryControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCoefficientRecovery`](../../../../../GeneralTopology/PrimePowerCoefficientRecovery.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeThree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/declarations/primethree.md) | 14 | `declaration-track:8ed617c1f7fc211b116923b52a47135aa19bbb6bb6e56cb21b8266c9e87993b6` |
| 2 | `def` | [threeCubedEvent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/declarations/threecubedevent.md) | 16 | `declaration-track:070f72c83b775c7b29b7039a151b21f9632124c476a148b1b509a21c9422aaa3` |
| 3 | `theorem` | [threeCubed_mangoldt_nonzero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/declarations/threecubed-mangoldt-nonzero.md) | 23 | `result-track:e62b1d6917b1604674a23371bf0aa7e6b7b3162ca0b12f680543dc32a4c6d8e2` |
| 4 | `def` | [toyCoefficientSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/declarations/toycoefficientsource.md) | 29 | `declaration-track:f8981ce1f8d942eadb4238c0b162ea71830e7ca9c0b27c780a4268e1daa9c017` |
| 5 | `theorem` | [toy_vertical_coordinate_is_five](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/declarations/toy-vertical-coordinate-is-five.md) | 35 | `result-track:64f595708616336b395dc4ae039ff172602cbbfc963d531558f047bbc77e411e` |
| 6 | `theorem` | [toy_weight_is_unique](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerCoefficientRecoveryControls.lean/declarations/toy-weight-is-unique.md) | 41 | `result-track:bddfb822f1b19cf1b36aa9bfc1e3ea7b57873c48c26bdb83653a19ec4d649205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fdd989ae7678fbc66f19841deb7581af2643ee6d55ca45f0ef6647869e018fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerCoefficientRecoveryControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PrimePowerCoefficientRecoveryControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
