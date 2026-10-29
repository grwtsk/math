# Verification target: Continuous Of Bounded Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "377fe073dcea8cd1aad988e3dac24aaff163e53e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant09f371cfbac64316da989e1c1a9508efced524e96c3b53f0ad991ce3208eef6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ContinuousOfBoundedNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ContinuousOfBoundedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `377fe073dcea8cd1aad988e3dac24aaff163e53e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant09f371cfbac64316da989e1c1a9508efced524e96c3b53f0ad991ce3208eef6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousOfBounded/Variant09f371cfbac64316da989e1c1a9508efced524e96c3b53f0ad991ce3208eef6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.clmOfExistsBoundedImage](../../../../FunctionalAnalysis/ContinuousOfBoundedNamespaced.lean/declarations/linearmap-clmofexistsboundedimage.md) | 49 | `declaration-track:a7e7f36912af46ea669c0d1d1bc83e7f14978e73162f3b5d0b42debe47c83650` |
| 2 | `theorem` | [LinearMap.clmOfExistsBoundedImage_coe](../../../../FunctionalAnalysis/ContinuousOfBoundedNamespaced.lean/declarations/linearmap-clmofexistsboundedimage-coe.md) | 76 | `result-track:0556cb235a207bf335e4b0bec15f71e124634720ab4154c797e4197219628ee1` |
| 3 | `theorem` | [LinearMap.clmOfExistsBoundedImage_apply](../../../../FunctionalAnalysis/ContinuousOfBoundedNamespaced.lean/declarations/linearmap-clmofexistsboundedimage-apply.md) | 82 | `result-track:94972216950d8c8986b5e11ddd22f112cb0ea98c59eae365b09b7f421ba6449f` |
| 4 | `theorem` | [LinearMap.continuousAt_zero_of_locally_bounded](../../../../FunctionalAnalysis/ContinuousOfBoundedNamespaced.lean/declarations/linearmap-continuousat-zero-of-locally-bounded.md) | 98 | `result-track:37edc6214b8f7cb7a034adea4757472443afe1369e50d6d94ba2275641f123e4` |
| 5 | `theorem` | [LinearMap.continuous_of_locally_bounded](../../../../FunctionalAnalysis/ContinuousOfBoundedNamespaced.lean/declarations/linearmap-continuous-of-locally-bounded.md) | 171 | `result-track:840d1a6d4cc384b27a90e7adc2ffe49453c80d38c18a613761b1b81e8231efb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7aa22de0c687ad1a2db60bb2d7d9374a219405b9a0c088c9114b49ae5900e6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant09f371cfbac64316da989e1c1a9508efced524e96c3b53f0ad991ce3208eef6b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ContinuousOfBounded/Variant09f371cfbac64316da989e1c1a9508efced524e96c3b53f0ad991ce3208eef6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
