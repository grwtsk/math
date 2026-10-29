# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositivitySelfAdjointness.Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b4b232b441904adf0de5726b6606d6637dcc47f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean/index.md) · [Full source](../../../../../../Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b4b232b441904adf0de5726b6606d6637dcc47f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.IndexSpectralTraceIdentity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositivitySelfAdjointnessCriterion](../../../../../../Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean/declarations/positivityselfadjointnesscriterion--b1b28e2ce4efa684b469df41.md) | 30 | `declaration-track:b1b28e2ce4efa684b469df41f010ca13d8b5c5a86ae7738135a492e78ca5fdd6` |
| 2 | `theorem` | [positivity_selfadjoint_rules_out_offline](../../../../../../Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean/declarations/positivity-selfadjoint-rules-out-offline--50311be821324c7d6f7a8843.md) | 39 | `result-track:50311be821324c7d6f7a884380c74f3f22bc7efda1863c75177e41b4a34bf864` |
| 3 | `structure` | [TraceIdentityToBoundaryAlignment](../../../../../../Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean/declarations/traceidentitytoboundaryalignment--21e09236c6b19ad9532d57b2.md) | 48 | `declaration-track:21e09236c6b19ad9532d57b22bce041c1399475ce2cfc6b8de47e5abf4ee20a5` |
| 4 | `theorem` | [trace_identity_plus_positivity_forces_alignment](../../../../../../Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean/declarations/trace-identity-plus-positivity-forces-alignment--8bdaa617335892089735eb64.md) | 55 | `result-track:8bdaa617335892089735eb646b7ff6de03f266fc32e512bfbb86e62f8b5d56cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23820488adda7ff23bd2f55aac845df11390103e7d5a5a63c35eeb42dca1f2e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PositivitySelfAdjointness/Variant72dd3afb85131548a672563ba47afd85fca0011900b3b839252b1921dec554a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
