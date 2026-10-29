# Verification target: Blaschke Floor Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eef196d23600ce6072bd372f40dc353ad872400",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eef196d23600ce6072bd372f40dc353ad872400`.

Source path: `GRWTSK/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blaschkeAtOne](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/declarations/blaschkeatone.md) | 17 | `declaration-track:f6570c7efe9a170f4630720b8ae82b1d5461f429a058fdc26358998b0700b9ad` |
| 2 | `theorem` | [reference_denominator_ne_zero](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/declarations/reference-denominator-ne-zero.md) | 20 | `result-track:54b9ae7523605a0f905476aede7d45ae9bc937bbc51fb7f3f9e3892584cfe8cd` |
| 3 | `theorem` | [reference_denominator_normSq](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/declarations/reference-denominator-normsq.md) | 28 | `result-track:b6c0abe284792ac4bfb367685fe8c1c132cf84963e25fc55b512903f8505d549` |
| 4 | `theorem` | [blaschke_deficit](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/declarations/blaschke-deficit.md) | 35 | `result-track:101f8b6e1fcef8ca224269db78c5c069735f276f2fa87ce3e17ccb523bfab62d` |
| 5 | `theorem` | [factor_deficit_lower](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/declarations/factor-deficit-lower.md) | 47 | `result-track:733ad06d7f13415fa30189c91d3dc90f94907cd1631916733e563396b2706b9f` |
| 6 | `theorem` | [blaschke_floor_pos](../../../../RealFunctions/BlaschkeFloorAuditNamespaced.lean/declarations/blaschke-floor-pos.md) | 55 | `result-track:016d18f31d5e12a881b0474e9911c601666f2dd3b8ea7ae1ae859de9165380b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6534580b348dfe8609c7275d21a23840a2f4f6af107fd6f09e3ab29946f7646 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean","GRWTSK/_verification/specifications/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
