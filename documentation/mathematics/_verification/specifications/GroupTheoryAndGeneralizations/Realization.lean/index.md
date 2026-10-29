# Verification target: Realization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b82fa3f7cc892b738f950694da2473eea7b3190e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Realization/Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Realization.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Realization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b82fa3f7cc892b738f950694da2473eea7b3190e`.

Source path: `GRWTSK/Algebra/GroupTheory/Realization/Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Realization/Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Tally` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modularRealization](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/modularrealization.md) | 15 | `declaration-track:0e909c22f497401fe8878732773c532c0f74ff72b514febbeeb7573a544ff6e0` |
| 2 | `def` | [realRealization](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/realrealization.md) | 18 | `declaration-track:b37fc3f6e1cb04f530f10024998a9a443d9bf01cbd626c0a35922905e19e2413` |
| 3 | `def` | [groupRealization](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/grouprealization.md) | 21 | `declaration-track:31e2484964c5f2240cb8f4da32ab59c464237e944e00c700d308c0ce2842c223` |
| 4 | `structure` | [FrontierCoordinate](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/frontiercoordinate.md) | 28 | `declaration-track:e61b446937f511e9c559c08532b9d8d1d91c419f0485f3c39f2672ac96d44e0c` |
| 5 | `theorem` | [modularRealization_ofNat](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/modularrealization-ofnat.md) | 31 | `result-track:b3292d2fd86ccd99ba1ff9c0f9a0f17a3b60ad26a86001f8475a4b12f897a2f5` |
| 6 | `theorem` | [realRealization_ofNat](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/realrealization-ofnat.md) | 37 | `result-track:359b087d51cb0bc7bb2a69bcf6013fcffd019be78db305562ac1dcc3d71cfaf8` |
| 7 | `theorem` | [groupRealization_ofNat](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/grouprealization-ofnat.md) | 41 | `result-track:5c455e5848efa4fa99eb681ac57af707c078acd1c025f089b498ee34242e9bd3` |
| 8 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/example-source-edition-2.md) | 50 | `declaration-track:3c925ad29618fd5fe5e5fc11b83a6af2f1a1e9879dcefc70a6c598f0595ffb5f` |
| 9 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/example-source-edition-6.md) | 51 | `declaration-track:eb97bcb6bcf9acd44bf337b8ab1f3e4e275a47b3e632626594ca0b6d7e68c218` |
| 10 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/example-source-edition-4.md) | 52 | `declaration-track:706c0a61c5228e9eeee2f0c7c8d51cce1d6b57b041273e5ed2b54ac3eadbc712` |
| 11 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/example.md) | 53 | `declaration-track:15c9a8a9e4716d2d603da3ffb64349a5a0ab3e5bad6f40c54fe0f3c55a9ba716` |
| 12 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/example-source-edition-3.md) | 54 | `declaration-track:4d8fae270f90d260ed3e472b9351bf650449d24539e36b3b4e311012dadfd2e9` |
| 13 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Realization.lean/declarations/example-source-edition-5.md) | 55 | `declaration-track:aae9a3c759121c55785c80ea667931eeb75fb55a713ff68f203e7c4ebad2a8d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbbbfd2c25fc69879ffa2dd43ccb843bf522e949c0a81c2da02ad55066b985c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Realization/Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Realization/Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
