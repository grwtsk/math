# Verification target: Lp Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c65799a12093a2d44c8da87ab14ab21637776290",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LpSpace/Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LpSpace.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LpSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c65799a12093a2d44c8da87ab14ab21637776290`.

Source path: `GRWTSK/Analysis/LpSpace/Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LpSpace/Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpace.lean/declarations/instance-source-edition-2.md) | 21 | `declaration-track:80b99dfc5dc7e109a766dd2838961b44abec62fb4b142de3c8a7135c6b5e131c` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpace.lean/declarations/instance-source-edition-3.md) | 24 | `declaration-track:88ec77fcfc52f864cdcf6eae16b3666dcf30d2b7e53ad54b1be0d5abb840ce5a` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpace.lean/declarations/instance-source-edition-4.md) | 30 | `declaration-track:bce9c1f110a1409d778570e07bc770b30583d1a4c96165c32f29dfa2e43a2130` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpace.lean/declarations/instance.md) | 35 | `declaration-track:68a261648399fc599413623a266f12f3e6f4320eb74e1a28113def682bfd06a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=993c0d03e230ac1fa62765530f5475c660e0a86d4028268d4250864d1bdea2ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LpSpace/Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070.lean","GRWTSK/_verification/specifications/Analysis/FunctionSpaces/LebesgueSpaces/LpSpaces/Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
