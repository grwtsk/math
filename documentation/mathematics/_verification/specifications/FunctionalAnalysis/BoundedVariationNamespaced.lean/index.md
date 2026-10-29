# Verification target: Bounded Variation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "989cdec8c658ebce5354f7985432246b1198827c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant65b1fadfc825238c79930f0c7c7dfd6a8bdbdabec572d56417855e9839e49dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `989cdec8c658ebce5354f7985432246b1198827c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant65b1fadfc825238c79930f0c7c7dfd6a8bdbdabec572d56417855e9839e49dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant65b1fadfc825238c79930f0c7c7dfd6a8bdbdabec572d56417855e9839e49dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Monotone` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.BoundedVariation` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_differentiableWithinAt_of_mem_real](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/ae-differentiablewithinat-of-mem-real.md) | 50 | `result-track:f48e7627406a77a47b4afa33dbcd4f4f4c41870969afefeda4a107dbc86bd2c5` |
| 2 | `theorem` | [ae_differentiableWithinAt_of_mem_pi](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/ae-differentiablewithinat-of-mem-pi.md) | 60 | `result-track:2356d0540c09a9bd6953cc30fe6e126ff45f2a6b84f4215055c88e616efc0d7b` |
| 3 | `theorem` | [ae_differentiableWithinAt_of_mem](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/ae-differentiablewithinat-of-mem.md) | 71 | `result-track:65e26c27499004c9f87eb16be28be0faefa163dcf7eaf6459861c454d9ee0b91` |
| 4 | `theorem` | [ae_differentiableWithinAt](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/ae-differentiablewithinat.md) | 85 | `result-track:d840b031c8ebb366d8e78c5386de17d1ee5da41758b9a74bd9135b37d8c6c022` |
| 5 | `theorem` | [ae_differentiableAt](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/ae-differentiableat.md) | 92 | `result-track:81fb316f7f110ec9e47e154960b398156fe2cf87f2185f7a3786ad58d41ef76d` |
| 6 | `theorem` | [LipschitzOnWith.ae_differentiableWithinAt_of_mem_real](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/lipschitzonwith-ae-differentiablewithinat-of-mem-real.md) | 104 | `result-track:cc24374fdc646ef894259da31e17c93b1b62d8f9d54862b0826b9ff3502b0143` |
| 7 | `theorem` | [LipschitzOnWith.ae_differentiableWithinAt_real](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/lipschitzonwith-ae-differentiablewithinat-real.md) | 111 | `result-track:f5e5ba1c62ee7628f8c3fcfefbd45b4bab0c06e55a4e69e567fd542ea08e05e4` |
| 8 | `theorem` | [LipschitzWith.ae_differentiableAt_real](../../../../FunctionalAnalysis/BoundedVariationNamespaced.lean/declarations/lipschitzwith-ae-differentiableat-real.md) | 119 | `result-track:4accd3cee388b9425aaa42948bb39cd4efe4957a0b17b8fa968c9b6ba6f29b99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2229885b7748da85467334f38e9ea67a2111196c7840f4c3aecd54d5831e9da1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant65b1fadfc825238c79930f0c7c7dfd6a8bdbdabec572d56417855e9839e49dba.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant65b1fadfc825238c79930f0c7c7dfd6a8bdbdabec572d56417855e9839e49dba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
