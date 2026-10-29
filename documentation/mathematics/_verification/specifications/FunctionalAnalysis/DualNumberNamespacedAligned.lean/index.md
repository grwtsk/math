# Verification target: Dual Number Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8cbb0ddb76317821301f5297904a20d07a8a76c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DualNumber/Variant7000c260c0d3ab6d0c6a39b280ec92c1cc08622fd4ff40202a121b205f5709c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/DualNumberNamespacedAligned.lean/index.md) · [Full source](../../../../FunctionalAnalysis/DualNumberNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8cbb0ddb76317821301f5297904a20d07a8a76c`.

Source path: `GRWTSK/Analysis/DualNumber/Variant7000c260c0d3ab6d0c6a39b280ec92c1cc08622fd4ff40202a121b205f5709c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DualNumber/Variant7000c260c0d3ab6d0c6a39b280ec92c1cc08622fd4ff40202a121b205f5709c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.TrivSqZeroExt` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_eps](../../../../FunctionalAnalysis/DualNumberNamespacedAligned.lean/declarations/exp-eps.md) | 42 | `result-track:5aeeb791028cd4eae3f56f9d19730edeb2c82f2cecc4057c3eecd6a89f9069bb` |
| 2 | `theorem` | [exp_smul_eps](../../../../FunctionalAnalysis/DualNumberNamespacedAligned.lean/declarations/exp-smul-eps.md) | 47 | `result-track:300d3d3ce08ac32022c55c03a2e3a227f8d71b58ffc5c41d1deb2776801bcdc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c674780bc858363f2f0be004aef5a35e6526abc8c6af7640ba0495cf7b31563e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/DualNumber/Variant7000c260c0d3ab6d0c6a39b280ec92c1cc08622fd4ff40202a121b205f5709c0.lean","GRWTSK/_verification/specifications/Analysis/DualNumber/Variant7000c260c0d3ab6d0c6a39b280ec92c1cc08622fd4ff40202a121b205f5709c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
