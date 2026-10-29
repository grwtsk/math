# Verification target: Affinity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fb1fe55317684f886a4821c6d51502df35fdf8a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Affinity/Variantf0ac770a98acdb62a5cc0625b794287b6ed148ba69bd38fc99ef84e4013cb74a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Affinity.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Affinity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fb1fe55317684f886a4821c6d51502df35fdf8a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Affinity/Variantf0ac770a98acdb62a5cc0625b794287b6ed148ba69bd38fc99ef84e4013cb74a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Affinity/Variantf0ac770a98acdb62a5cc0625b794287b6ed148ba69bd38fc99ef84e4013cb74a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.FeatureMap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedRealAffinityValue](../../../../FunctionalAnalysis/Affinity.lean/declarations/normalizedrealaffinityvalue.md) | 24 | `declaration-track:19a968a6fe695abebfc47665de8f1987b888a42fb206fd7c1d90857b418cad39` |
| 2 | `def` | [normalizedRealAffinity](../../../../FunctionalAnalysis/Affinity.lean/declarations/normalizedrealaffinity.md) | 29 | `declaration-track:5ecf5bf6c32f59156a2bc0d1d2bfbd237832392313db77ffa307af531a3340c7` |
| 3 | `theorem` | [normalizedRealAffinityValue_comm](../../../../FunctionalAnalysis/Affinity.lean/declarations/normalizedrealaffinityvalue-comm.md) | 35 | `result-track:24d0b88449dd475d82d40754dd3a0637ef0d8c910bc0886444885167db8def3a` |
| 4 | `theorem` | [normalizedRealAffinity_comm](../../../../FunctionalAnalysis/Affinity.lean/declarations/normalizedrealaffinity-comm.md) | 50 | `result-track:c0c4eb77fb0cf0973e093ffb6f7c4609eda4a78ef6bfaf6f519c998b32df82eb` |
| 5 | `theorem` | [abs_normalizedRealAffinityValue_le_one](../../../../FunctionalAnalysis/Affinity.lean/declarations/abs-normalizedrealaffinityvalue-le-one.md) | 64 | `result-track:76f538296f00fc627a2c245b07b442f147d61cc63cf03861188ee8d3f074df0e` |
| 6 | `theorem` | [normalizedRealAffinity_mem_Icc](../../../../FunctionalAnalysis/Affinity.lean/declarations/normalizedrealaffinity-mem-icc.md) | 73 | `result-track:ca8de3afd3fefedd0bcd2865e329fd336a01b4112da2cbc9bb3eaeaaa6c0b717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a22f96a12222f4340045813b4c2ad58ee6893d244ed39c36820b5f8b60a5307d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Affinity/Variantf0ac770a98acdb62a5cc0625b794287b6ed148ba69bd38fc99ef84e4013cb74a.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Affinity/Variantf0ac770a98acdb62a5cc0625b794287b6ed148ba69bd38fc99ef84e4013cb74a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
