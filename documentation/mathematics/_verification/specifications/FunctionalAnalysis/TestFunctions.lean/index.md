# Verification target: Test Functions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1944378fe59741f7b0cb34becbc8fcbf0d602f96",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TestFunctions/Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TestFunctions.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TestFunctions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1944378fe59741f7b0cb34becbc8fcbf0d602f96`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TestFunctions/Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TestFunctions/Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHTestFunction](../../../../FunctionalAnalysis/TestFunctions.lean/declarations/rhtestfunction.md) | 26 | `declaration-track:5e965b8d0ca399db148da34b521cb601b6f541cb2a8768b3473719cb05e9945f` |
| 2 | `theorem` | [rh_test_function_has_schwartz_map](../../../../FunctionalAnalysis/TestFunctions.lean/declarations/rh-test-function-has-schwartz-map.md) | 30 | `result-track:7db4eda18dbabf1f5fd606ef7aec43f333480b78a92ac281a96edc9a97e75540` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af00d64c01db9d8fb34e90466d089085fc29ff234722f2cf445d54701e24993c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TestFunctions/Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/TestFunctions/Variant4e1278f399df0391811d79ddf6ea7a6870f622c228b55c04e8d21b4c3fd4c8ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
