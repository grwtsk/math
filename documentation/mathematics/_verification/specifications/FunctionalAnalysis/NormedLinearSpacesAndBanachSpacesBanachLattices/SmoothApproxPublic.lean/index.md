# Verification target: Smooth Approx Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20848e62bcf7f06b80ee78461af3d1b7366ba77d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SmoothApproxPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SmoothApproxPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20848e62bcf7f06b80ee78461af3d1b7366ba77d`.

Source path: `GRWTSK/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.SmoothApprox` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exist_eLpNorm_sub_le_of_continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SmoothApproxPublic.lean/declarations/exist-elpnorm-sub-le-of-continuous.md) | 39 | `result-track:387085ec8a5b3596367d415f7ff22dd8de55b1c14ccbd400a8d437c8f8d5fd10` |
| 2 | `theorem` | [exist_eLpNorm_sub_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SmoothApproxPublic.lean/declarations/exist-elpnorm-sub-le.md) | 87 | `result-track:54bc03576235eed796e288d3e534e38d611539e2448c591e37c8c2e3e864a1c5` |
| 3 | `theorem` | [_root_.MeasureTheory.Lp.dense_hasCompactSupport_contDiff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SmoothApproxPublic.lean/declarations/root-measuretheory-lp-dense-hascompactsupport-contdiff.md) | 102 | `result-track:5aa5b9173c4448e71a9e9126ed6745795705fc2027ac951e955550ff54b7ca3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e61a2ded8cc84997e896e1b786e18c555cc83609cdcab67df5d0137cafcd67c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
